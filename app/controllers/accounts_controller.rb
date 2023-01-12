class AccountsController < ApplicationController
  def index
    @account = Account.new
    @accounts = Account.all
  end
  
  def new
    @account = Account.new
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
    params.require(:account).permit(:title, :content, :start_time)
  end
end
