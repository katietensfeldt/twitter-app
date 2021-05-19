class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :tweets, :tweets_text
end
