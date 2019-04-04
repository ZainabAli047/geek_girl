class CommentsController < ApplicationController
  before_action :find_comment, only: [:show, :edit, :update, :destroy]

  def index
    @comments = Comment.all
  end

   def new
    @comment = Comment.new
  end

  def show
  end

  def edit
  end

  def create    
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to comments_path
    else
      redirect_to new_comment_path
    end
  end


  def update
    if @comment.update(comment_params)
      redirect_to @comment, notice: 'Comment was successfully updated.' 
    else
      render :edit 
    end
  end

  def destroy
    @comment.destroy
    redirect_to comments_url, notice: 'Comment was successfully destroyed.' 
  end
  

  private
    def comment_params
      params.require(:comment).permit(:title)
    end

    def find_comment
      @comment = Comment.find(params[:id])
    end
end