class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id if user_signed_in?

    if @comment.save
      redirect_to resipe_path(@recipe), flash: { success: "コメントされました。"}
    else
      redirect_to resipe_path(@recipe), flash: { danger: "コメントに失敗しました。"}
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:comment, :post_id)
  end
end
