class User < ActiveRecord::Base
  include DeviseTokenAuth::Concerns::User
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable
  before_validation :uid_populate, on: :create

  def confirmed_at
    true
  end

  def uid_populate
    self.uid = SecureRandom.uuid
  end
end

