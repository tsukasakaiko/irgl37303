class CommentsController < ApplicationController
  def create
    comment = Comment.create(comment_params)
    redirect_to "/irgls/#{comment.irgl.id}"
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, irgl_id: params[:irgl_id])
  end
end
