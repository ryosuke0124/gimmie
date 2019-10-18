class LikesController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    if liked?
      flash[:notice] = "すでにいいねしました。"
    else
    current_user.likes.create(post_id: params[:post_id])
    end
    redirect_to post_url(@post)
  end

  def destroy
    @post = Post.find(params[:post_id])
    current_user.likes.find_by(post_id: @post).destroy
    redirect_to post_path(@post)
  end

  private
    def liked?
      Like.where(user_id: current_user.id, post_id:params[:post_id]).exists?
    end

end
