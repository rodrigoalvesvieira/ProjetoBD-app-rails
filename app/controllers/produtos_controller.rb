class ProdutosController < ApplicationController
  def index
    @produtos = Produto.all
  end

  def show
    @produto = Produto.find params[:id]
  end

  def create
    @produto = Produto.new(produto_params)

    respond_to do |format|
      if @produto.save
        format.html { redirect_to dashboard_produto_url(@produto), notice: 'Produto was successfully created.' }
        format.json { render :show, status: :created, location: @produto }
      else
        format.html { render :new }
        format.json { render json: @produto.errors, status: :unprocessable_entity }
      end
    end
  end

  def new
    @produto = Produto.new
  end

  def update
  end

  def delete
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_produto
      @produto = Produto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def produto_params
      params.require(:produto).permit(:nome, :descricao, :preco)
    end
end
