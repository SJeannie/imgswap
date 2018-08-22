class User < ApplicationRecord
    has_many :pictures, dependent: :destroy
    has_many :comments, dependent: :destroy 
    has_secure_password
    #validates :name, presence: true
    #validates :email, presence: true
end
