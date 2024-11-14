class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def create
    @list = List.create(list_params)
    @list.save
    redirect_to lists_path
  end

  def new
    @list = List.new
  end

  def show

  end

  private

  def list_params
    params.require(:list).permits(:name)
  end
end
