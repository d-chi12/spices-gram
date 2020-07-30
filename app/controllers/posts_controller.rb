# class PostsController < ApplicationController
#   before_action :authenticate_user!
  
#   def new
#     @posts = Post.all
#   end

#   def show
#     @post = Post.new(post_params)
#     @post.user_id = current_user.id if user_signed_in?
#   end
# end
