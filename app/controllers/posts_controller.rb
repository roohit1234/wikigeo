class PostsController < ApplicationController
	before_action :authenticate_user!, only: [:create, :new]

	def index
		
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		if @post.save
			redirect_to @post
		else 
			flash[:danger] = @post.errors.full_messages.to_sentence
			render 'new'
		end	
	end

	def show
		@post = Post.find(params[:id])
	end


	private 
		def post_params
			params.require(:post).permit(:title, :description)
		end

end