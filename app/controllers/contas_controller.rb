class ContasController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @contas = Conta.all
    @conta = Conta.new
  end

  def show
    @conta = Conta.find params[:id]
    @pedidos = Pedido.where conta: @conta.id
  end

  def new
    @conta = Conta.new
  end

  def update
  end

  def create
    @conta = Conta.new(conta_params)

    respond_to do |format|
      if @conta.save
        format.html { redirect_to dashboard_conta_url(@conta), notice: 'conta was successfully created.' }
        format.json { render :show, status: :created, location: @conta }
      else
        format.html { render :new }
        format.json { render json: @conta.errors, status: :unprocessable_entity }
      end
    end
  end

  def delete
  end
  
private
  # Use callbacks to share common setup or constraints between actions.
  def set_conta
    @conta = Conta.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def conta_params
    params.require(:conta).permit(:duracao, :numeroMesa, :qtdClientes)
  end
end
