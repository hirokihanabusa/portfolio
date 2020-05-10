class CommentsController < ApplicationController
  def create
    @comment = Comment.create(text: comment_params[:text], post_id: comment_params[:post_id], user_id: current_user.id)
    respond_to do |format|
      format.html { redirect_to "/posts/#{comment.post.id}" }
      format.json
    end
  end

  def destroy
    comment = Comment.find(params[:id])
    if comment.user_id == current_user.id
      comment.destroy
    end
    redirect_to "/posts/#{comment.post.id}"
  end

  private
  def comment_params
    params.permit(:text, :post_id)
  end
end
