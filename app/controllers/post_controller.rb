class PostController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create    
    @post = Post.new(post_params)
    if @post.save
      redirect_to post_index_path
    else
      redirect_to new_post_path
    end
  end

  private
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_post
  #     @post = Post.find(params[:id])
  #   end

  #   # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title)
    end
end



