class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def new
  end

  def create
    list = List.create!(list_params)
    redirect_to lists_path, notice: "The #{list.title} List has been created."
  end

  protected

  def list_params
    params.require(:list).permit(:title)
  end
end
