class PostsController < ApplicationController
  before_action :authenticate_user!
  def new
  end

  def create
    @post = Post.create(title: params[:title], content: params[:content])
    @post.save
    
    redirect_to "/posts/show/#{@post.id}"
  end
  def show
    @post = Post.find(params[:id])
  end
  def index
    @posts = Post.all
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_back(fallback_location: root_path)
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.title = params[:title]
    @post.content = params[:content]
    @post.save
    
    redirect_to "/posts/show/#{@post.id}"
  end
end
