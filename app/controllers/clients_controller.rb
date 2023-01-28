class ClientsController < ApplicationController
  def index
    @client = Client.all
  end

  def new
    @client = Client.new
    
  end

  def create
    @client = Client.new(client_params)

    if @client.save
      redirect_to @client, notice: 'Cliente cadastrado com sucesso!'
    else
      render :new
    end
    
  end
  

  def edit
  end

  def update
  end

  def destroy
    @client = Client.find(params[:id])
    @client.destroy
  end

  private

  def client_params
    params.require(:client).permit(
    :name,
    :email,
    :address,
    :phone
    )
  end
    

end
