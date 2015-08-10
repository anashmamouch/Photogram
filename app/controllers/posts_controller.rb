class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    #creating the post and saving it into the database
    @post = Post.create(post_params)
    #redirect back to the index page
    redirect_to posts_path
  end

  private
    def post_params
      params.require(:post).permit(:image, :caption)
    end
end
