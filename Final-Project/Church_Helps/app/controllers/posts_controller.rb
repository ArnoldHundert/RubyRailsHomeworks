class PostsController < ApplicationController
	before_action(:authenticate_user!, only: [:new, :create, :edit, :update, :destroy])
	before_action(:get_post, only: [:show, :edit, :update, :destroy])

	def index
		@posts = Post.all
	# 	@post = Post.search(params[:query])
	end
	# def show
	# 	@post = Post.find(params[:id])
	# end
	def new
		@post = Post.new
	end
	def create
		@post = current_user.posts.create(post_params)
		redirect_to_post_if_valid(:new, 'Your post was successfully created!')
	end
	def update
		if @post.user == current_user
			@post.update(post_params)
			redirect_to_post_if_valid(:edit, 'Your post was updated successfully!')
		else
			redirect_to(@post, notice: "You can not change someone else's post!")
		end
	end
	def destroy
		@post.destroy
		redirect_to(root_path, notice: 'Your post was deleted!')
	end

	private

	def get_post
		@post = Post.find(params[:id])
	end

	def post_params
		params[:post].permit(:skill_or_service, :fee_yn, :fee_amount, :fee_per, :yn_sunday, :yn_monday, :yn_tuesday, :yn_wednesday, :yn_thursday, :yn_friday, :yn_saturday, :hours)
	end

	def redirect_to_post_if_valid(action, message)
		if @post.valid?
			redirect_to(@post, notice: message)
		else
			render(action)
		end
	end
end
