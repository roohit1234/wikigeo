class UsersController < ApplicationController
  
  	before_action :find_post, only: [:show, :username, :name, :edit, :update, :destroy]


	def show
		 @user = User.find(params[:id])
		 @posts_post = @user.posts
	end

	def myposts
	 	@posts = Post.where(:user_id => current_user.id)
	end


	 private 

		def find_post
			@post = User.find(params[:id])
		end

		def post_params
			params.require(:post).permit(:title, :description)
		end

		def user_params
		  params.require(:user).permit(:avatar)
		end



end