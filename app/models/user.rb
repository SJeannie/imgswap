class User < ApplicationRecord
    has_many :pictures 
    has_many :comments 
    has_secure_password
end
