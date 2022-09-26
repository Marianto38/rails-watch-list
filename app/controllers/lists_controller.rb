class ListsController < ApplicationController

  def index
    @q = params[:q]
    if @q
      @lists = List.where("#{:name} LIKE ?", "%#{@q.upcase}%")
    else
      @lists = List.all

     end
  end

  def new
    @list = List.new
  end

  def show
    @list = List.find(params[:id])
    @bookmark = Bookmark.new
  end

  def create
    @list = List.create(list_params)
    @list.save
      if @list.save
        redirect_to root_path
      else
        render :new, status: :unprocessable_entity
      end
  end

  private

  def list_params
    params.require(:list).permit(:name, :photo)
  end
end
