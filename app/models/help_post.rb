class HelpPost < ApplicationRecord

  belongs_to :user
  attachment :image
  has_many :help_comments, dependent: :destroy
  has_many :help_favorites, dependent: :destroy

  validates :shop_name, presence: true
  validates :image, presence: true

  def favorited_by?(user)
    help_favorites.where(user_id: user.id).exists?
  end
end
