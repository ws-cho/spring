class CommentsController < ApplicationController
  def new
  end

  def create
     post = Post.find(params[:post_id])
     comment = post.comment.create(user_name: params[:user_name], body: params[:body], post_id: params[:post_id])
     
     redirect_back(fallback_location: root_path)
  end

  def show

  end

  def destroy
  end
end
