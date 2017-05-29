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
		@user = current_user.users.create(user_params)
		redirect_to_user_if_valid(:new, 'You have Successfully Registered!')
	end

	def update
		if current_user
			@user.update(user_params)
			redirect_to_user_if_valid(:edit, 'Your Account Information was Updated Successfully!')
		else
			redirect_to(@tweet, notice: 'You are not authorized to do that!')
		end
	end

	def destroy
		@user.destroy
		redirect_to(root_path, notice: 'Your User Account was Successfully Deleted!')
	end

	private

	def get_user
		@user = User.find(params[:id])
	end

	def user_params
		params.require[:user].permit(:email, :fname, :lname, :address1, :address2, :city, :state, :zip_code, :phone_number)
		# params[:user].permit(:email, :fname, :lname, :address1, :address2, :city, :state, :zip_code, :phone_number, :photo)
	end

	def redirect_to_user_if_valid(action, message)
		if @user.valid?
			redirect_to(@user, notice: message)
		else
			render(action)
		end
	end
end
