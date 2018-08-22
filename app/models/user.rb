class User < ApplicationRecord
    has_many :pictures 
    has_many :comments 
    has_secure_password
    #validates :name, presence: true
    #validates :email, presence: true
end
