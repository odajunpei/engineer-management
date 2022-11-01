class HelpPost < ApplicationRecord

  belongs_to :user
  attachment :image
end
