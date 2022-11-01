class HelpPostsController < ApplicationController

  def new
    @help_post = HelpPost.new
  end

  def create
    @help_post = HelpPost.new(help_post_params)
    @help_post.user_id = current_user.id 
    @help_post.save
    redirect_to help_posts_path
  end

  def index
    @help_posts = HelpPost.all
  end

  def show
    @help_post = HelpPost.find(params[:id])
  end

  def destroy
    @help_post = HelpPost.find(params[:id])
    @help_post.destroy
    redirect_to help_posts_path
  end

  private

  def help_post_params
    params.require(:help_post).permit(:title, :image, :description, :url)
  end
end
