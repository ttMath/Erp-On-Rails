class CustomersController < ApplicationController
  def index
    @customer = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
    
  end
  

  def new
    @customer = Customer.new
    
  end

  def create
    @customer = Customer.new(customer_params)

    if @customer.save
      redirect_to @customer, notice: 'customere cadastrado com sucesso!'
    else
      render :new
    end
    
  end
  

  def edit
  end

  def update
  end

  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy
    redirect_to customers_path, notice: 'aewww, apagou!'
  end

  private

  def customer_params
    params.require(:customer).permit(
    :name,
    :email,
    :address,
    :phone
    )
  end
    

end
