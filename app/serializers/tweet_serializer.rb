class TweetSerializer < ActiveModel::Serializer
  attributes :id, :text, :user_id, :username
end
