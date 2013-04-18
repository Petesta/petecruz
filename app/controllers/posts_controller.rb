class PostsController < ApplicationController
  before_filter :must_be_signed_in, :except => [:index, :show]

  def new
    @post = Post.new
  end


  def index
    @posts = Post.all
  end


  def create
    @post = Post.new(params[:post])

    if @post.save
      flash[:success] = "Post successful!"
      redirect_to posts_path
    else
      flash.now[:error] = "Something went wrong!"
      render :new
    end

  end


  def show
    @post = Post.find(params[:id])
  end


  def edit
    @post = Post.find(params[:id])
  end


  def update
    @post = Post.find(params[:id])

    if @post.update.attributes(params[:id])
      flash[:success] = "Post successful!"
      redirect_to @post
    else
      flash[:error] = "Something went wrong!"
      render :new
    end

  end


  def destroy
    Post.find(params[:id]).destroy
    flash[:success] = "Post deleted!"
    redirect_to posts_path
  end


end
