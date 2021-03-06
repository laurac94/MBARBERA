class PostsController < ApplicationController

  def index
    @post = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end


  def new
    @post = Post.new
  end


  def create
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save
      redirect_to post_path(@post)

    else
      render :new
    end
  end

private

  def post_params
    params.require(:post).permit( :category_id, photos: [])
  end



end

