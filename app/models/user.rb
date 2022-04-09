class User < ActiveRecord::Base
  # include DeviseTokenAuth::Concerns::User
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # before_validation :uid_populate, on: :create


  
end

