class CommentsController < ApplicationController
  before_action :authenticate_user!
  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id if user_signed_in?

    if @content.save
      redirect_to dashboard_path, flash: { success: "コメントされました。"}
    else
      redirect_to dashboard_path, flash: { danger: "コメントに失敗しました。"}
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end
end
