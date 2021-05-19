class User < ApplicationRecord
  has_many :tweets

  def tweets_text
    text = []
    tweets.each do |tweet|
      text << tweet.text
    end
    text
  end
end
