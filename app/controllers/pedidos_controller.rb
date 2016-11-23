class PedidosController < ApplicationController
  before_action :authenticate_user!

  def index
    @pedidos = Pedido.all
    @pedido = Pedido.new
  end

  def show
    @pedido = Pedido.find params[:id]
  end

  def new
    @pedido = Pedido.new
  end

  def update
  end

  def create
    @pedido = Pedido.new(pedido_params)

    respond_to do |format|
      if @pedido.save
        format.html { redirect_to dashboard_pedido_url(@pedido), notice: 'Pedidoo was successfully created.' }
        format.json { render :show, status: :created, location: @pedido }
      else
        format.html { render :new }
        format.json { render json: @pedido.errors, status: :unprocessable_entity }
      end
    end
  end

  def delete
  end
  
private 

def pedido_params
  params.require(:pedido).permit(:observacao, :conta, :produto)
end
end
