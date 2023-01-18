class AccountsController < ApplicationController
  before_action :authenticate_user!, only: [:create,:edit,:destroy]




  def index
    @account = Account.new
    @accounts = Account.all


  end
  

  def create
    Account.create(account_params)
    redirect_to root_path
  end

  def show
    @account = Account.find(params[:id])
    @accounts = Account.all
  end

  def destroy
    @account = Account.find(params[:id])
    @account.destroy
    redirect_to root_path
  end

  def edit
    @account = Account.find(params[:id])
    @accounts = Account.all
  end

  def update
    @account = Account.find(params[:id])
    if @account.update(account_params)
      redirect_to root_path, notice: "編集しました"
    else
      render 'edit'
    end
  end


  private

  def account_params
    params.require(:account).permit(:title_id, :content, :start_time).merge(user_id: current_user.id)
  end
end
