class HelpComment < ApplicationRecord

  belongs_to :user
  belongs_to :help_post
end
