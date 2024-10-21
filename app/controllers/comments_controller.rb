class CommentsController < ApplicationController
  before_action :set_post

  def create
    @post.comments.create! params.required(:comment).permit(:content)
    redirect_to @post
  end

  private
    def self_post
      @post = Post.find(params[:post_id])
    end
end
