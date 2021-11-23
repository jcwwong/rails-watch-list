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
    @list = List.new(list_params)
    @list.save
    if @list.save
      # no need for app/views/restaurants/create.html.erb
      redirect_to @list
    else
      render :new
    end
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
