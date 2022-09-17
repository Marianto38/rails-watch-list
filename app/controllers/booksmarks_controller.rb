class BooksmarksController < ApplicationController

  def new
    @bookmarks = Bookmark.all
  end

  def create
    @bookmark = Bookmark.new(booksmark_params)
    @bookmark.save
    if @bookmark.save
      redirect_to lists_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment)
  end

end
