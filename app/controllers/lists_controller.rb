class ListsController < ApplicationController
  def index
    @list = List.where(user_id: session[:user_id])
    @users = User.where.not(id: session[:user_id])
  end

  def show
    @list = List.find(params[:id])
    @spending = Spending.where(list_id: params[:id])
  end

  def new
    @list = List.new
  end

  def edit
    @list = List.find(params[:id])
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to @list
    else
      render 'new'
    end
  end

  def update
    @list = List.find(params[:id])
    if @list.update({title: params[:list][:title], category: params[:list][:category]})
      redirect_to @list
    else
      render 'update'
    end
  end

  def destroy
    @users = User.where.not(id: session[:user_id])
    @list = List.find_by(:id => params[:format])
    if @list.destroy
      @list = List.where(user_id: session[:user_id])
      render 'index'
    else
      render 'index'
    end
  end

  def share
    @shared_to = SharedList.new(user_id: params[:to_user], list_id: params[:format])
    if @shared_to.save
      redirect_to lists_path
    end
  end

  def shared_to_me
    array = []
    @shared = SharedList.where(user_id: session[:user_id])
    @shared.each do |item|
      array << item.list_id
    end
    @shared_lists = List.where(id: [array])
  end

  def shared_values
    @spending = Spending.where(list_id: params[:id])
    @list = List.find(params[:id])
    @from_user = User.find(@list.user_id)
  end

  private

  def list_params
    defaults = { amount:0, user_id: session[:user_id] }
    params.require(:list).permit(:title, :category).merge!(defaults)
  end
end
