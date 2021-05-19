class Tweet < ApplicationRecord
  belongs_to :user

  def username
    user.username
  end
end
