class UsersController < ApplicationController

	def index
		@users = User.all
	end
	def show
		@user = User.find(params[:id])
	end
	def new
		@user = User.new
	end


	def create
		@tweet = current_user.tweets.create(tweet_params)
		redirect_to_tweet_if_valid(:new, 'Your tweet was successfully created!')
	end

	def update
		# if @tweet.user == current_user
		# 	@tweet.update(tweet_params)
		# end

		# @tweet.update(tweet_params) if @tweet.user == current_user
		# redirect_to_tweet_if_valid(:edit, 'Your tweet was just updated!')

		if @tweet.user == current_user
			@tweet.update(tweet_params)
			redirect_to_tweet_if_valid(:edit, 'Your tweet was just updated!')
		else
			redirect_to(@tweet, notice: 'You are not allowed to do that!')
		end
	end

	def destroy
		@tweet.destroy
		redirect_to(root_path, notice: 'Your tweet was deleted!')
	end

	private

	def get_tweet
		@tweet = Tweet.find(params[:id])
	end

	def tweet_params
		params[:tweet].permit(:title, :body, :photo)
	end

	def redirect_to_tweet_if_valid(action, message)
		if @tweet.valid?
			redirect_to(@tweet, notice: message)
		else
			render(action)
		end
	end


end
