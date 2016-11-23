class ReceitasController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @receitas = Receita.all
    @receita = Receita.new
  end

  def show
    @receita = Receita.find params[:id]
  end

  def new
    @receita = Receita.new
  end

  def update
  end

  def create
  end

  def delete
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_receitas
      @item = Receita.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:nome, :limiar, :prazo_validade, :criado_em, :atualizado_em)
    end
end
