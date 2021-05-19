class TweetsController < ApplicationController
  def index
    tweets = Tweet.all
    render json: tweets
  end

  def create
    tweet = Tweet.new(
      text: params[:text],
      user_id: params[:user_id]
    )
    tweet.save
    render json: tweet
  end

  def show
    tweet = Tweet.find(params[:id])
    render json: tweet
  end

  def update
    tweet = Tweet.find(params[:id])
    tweet.text = params[:text] || tweet.text
    tweet.user_id = params[:user_id] || tweet.user_id
    tweet.save
    render json: tweet
  end

  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
    render json: {message: "Tweet successfully deleted"}
  end
end
