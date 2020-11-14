class SpendingsController < ApplicationController

  def new
    @list = List.find(params[:list_id])
    @spending = Spending.new
  end

  def create
    @list = List.find(params[:list_id])
    @spending = Spending.new(spending_params)
    if @spending.save
      this_list_spendings = Spending.where(list_id: params[:list_id])
      @list.update({ amount:this_list_spendings.count })
      redirect_to list_path(@list)
    else
      render 'new'
    end
  end

  def edit
    @list = List.find(params[:list_id])
    @spending = Spending.find(params[:id])
  end

  def destroy
    @list = List.find(params[:list_id])
    @spending = Spending.find(params[:id])

    @spending.destroy
    this_list_spendings = Spending.where(list_id: params[:list_id])
    @list.update({ amount:this_list_spendings.count })
    redirect_to list_path(@list)
  end

  def update
    @list = List.find(params[:list_id])
    @spending = Spending.find(params[:id])
    if @spending.update({description: params[:spending][:description], money:params[:spending][:money]})
      redirect_to list_path(@list)
    else
      render 'edit'
    end
  end

  private

  def spending_params
    defaults = { list:@list}
    params.require(:spending).permit(:description, :money).merge!(defaults)
  end
end
