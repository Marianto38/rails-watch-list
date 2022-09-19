class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def show
    @list = List.find(params[:id])
  end

  def create
    @list = List.create(list_params)
    @list.save
      if @list.save
        redirect_to lists_path
      else
        render :new, status: :unprocessable_entity
      end
  end

  private

  def list_params
    params.require(:list).permit(:name, :image)
  end
end