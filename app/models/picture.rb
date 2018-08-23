class Picture < ApplicationRecord
    belongs_to :user, optional: true
    has_many :comments 
    has_many :picture_tags
    has_many :tags, through: :picture_tags

    has_one_attached :image
    accepts_nested_attributes_for :tags

    # # name: 'My Picture', tags: [ {name:'TGIM'} ]
    # def initialize(attributes)
    #     attributes.each do | method, value | 
    #         self.name = value
    #     end
    # end

    # def tags_attributes=(tags) 
    #     tags.each do |tag_params|
    #         tag_params[:picture] = self
    #         Tag.create(tag_params)
    #     end
    # end

    def tag_names=( tag_names )
        tag_names.split(/,|, /).each do | tag_name |
            if tag_name.length
                self.tags << Tag.create(name: tag_name)
            end
        end
    end

    def image=( uploaded_image )
        file_path = Rails.root.join('app', 'assets', 'images',uploaded_image.original_filename )

        File.open(file_path, 'wb') do |file|
            file.write(uploaded_image.read)
        end

        self.image_url = "http://localhost:3000/assets/#{uploaded_image.original_filename}"
    end
end