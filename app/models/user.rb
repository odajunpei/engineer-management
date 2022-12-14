class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :help_post, dependent: :destroy
  has_many :help_comments, dependent: :destroy
  has_many :help_favorites, dependent: :destroy
  attachment :profile_image
end
