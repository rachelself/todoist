class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to lists_path, notice: "The #{@list.title} List has been created."
    else
      flash.alert = "List could not be created."
      render :new
    end
  end

  protected

  def list_params
    params.require(:list).permit(:title)
  end
end
