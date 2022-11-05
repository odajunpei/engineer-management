class HelpFavoritesController < ApplicationController

  def create
    help_post = HelpPost.find(params[:help_post_id])
    help_favorite = current_user.help_favorites.new(help_post_id: help_post.id)
    help_favorite.save
    redirect_to help_post_path(help_post)
  end

  def destroy
    help_post = HelpPost.find(params[:help_post_id])
    help_favorite = current_user.help_favorites.find_by(help_post_id: help_post.id)
    help_favorite.destroy
    redirect_to help_post_path(help_post)
  end
end
