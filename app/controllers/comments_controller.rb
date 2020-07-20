class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id if user_signed_in?

    if @comment.save
      redirect_to recipes_path, flash: { success: "コメントされました。" }
    else
      redirect_to recipes_path, flash: { danger: "コメントに失敗しました。" }
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:comment, :recipe_id)
  end
end
