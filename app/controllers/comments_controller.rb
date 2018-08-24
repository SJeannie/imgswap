class CommentsController < ApplicationController
  before_action :select_comment, only: [:show, :edit, :update, :destroy]

  def index
    @picture = Picture.find(params[:picture_id])
  end

  def show
    @picture = Picture.find(@comment.picture_id)
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = session[:user_id]
    @comment.save
    redirect_to @comment.picture
  end

  def edit

  end

  def update
    @comment.update(comment_params)
    redirect_to @comment
  end

  def destroy
    @comment.destroy
    redirect_to @comment.picture
  end

    private
    def select_comment
      @comment = Comment.find(params[:id])
    end

    def comment_params
      comment_params = params.require(:comment).permit(:content)
      if params[:picture_id]
        comment_params[:picture_id] = params[:picture_id]
      end
      comment_params
    end

end