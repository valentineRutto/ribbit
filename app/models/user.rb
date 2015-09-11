class User < ActiveRecord::Base
    attr_accessible :avatar_url, :email, :name, :password, :password_confirmation, :username
has_secure_password
validates :name, presence: true
validates :username, uniqueness: true, presence: true
    validates :email, uniqueness: true, presence: true, format: { with: /^[\w.+-]+@([\w]+.)+\w+$/ }
end

