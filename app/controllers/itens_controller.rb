class ItensController < ApplicationController
  before_action :authenticate_user!

  def index
    @itens = Item.all
    @item = Item.new
  end

  def show
    @item = Item.find params[:id]
  end

  def new
    @item = Item.new
  end

  def update
  end

  def create
    produto = Produto.first
    
    transacao = Transacao.create(formaPagamento: "CREDITO", valor: 10, descricao: "Tralala", saque: 0, tipo: "PAGAMENTO_CONTA", conta: Conta.first.id)
    
    transacao.save
    
    ultimo = Estoque.last.id + 1

    
    estoque = Estoque.create(id: ultimo, qtdItem: item_params[:limiar], transacao: transacao.id, produto_id: produto.id)
    
    p "salvou? #{estoque.save}"
    p estoque
    p estoque.errors
      
    @item = Item.new(
    nome: item_params[:nome],
    prazo_validade: item_params[:prazo_validade],
    limiar: item_params[:limiar],
    estoque: ultimo
    )

    respond_to do |format|
      if @item.save
        format.html { redirect_to dashboard_iten_url(@item), notice: 'item was successfully created.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  def delete
  end

private
  # Use callbacks to share common setup or constraints between actions.
  def set_item
    @item = Item.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def item_params
    params.require(:item).permit(:nome, :limiar, :estoque, :prazo_validade, :criado_em, :atualizado_em)
  end
end
