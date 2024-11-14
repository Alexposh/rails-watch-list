class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.save
    redirect_to list_bookmark_path
  end

  def destroy
    Bookmark.find(params[:id])
  end

  private

  def bookmark_params
    params.require(:bookmark).permits(:comment)
  end
end


bookmarks#create
bookmarks#new
bookmarks#destroy
