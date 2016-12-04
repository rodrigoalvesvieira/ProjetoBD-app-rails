class ProdutosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_produto, only: [:show, :edit, :update, :destroy]

  def index
    @produtos = Produto.all
    @produto = Produto.new
  end

  def show
    @produto = Produto.find params[:id]
  end

  def create
    @produto = Produto.new(produto_params)
    
    p "inspecionar"
    p produto_params

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

  def destroy
    @produto.destroy
    
    
    respond_to do |format|
      format.html { redirect_to produtos_url, notice: 'Produto was successfully destroyed.' }
      format.json { head :no_content }
    end
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
