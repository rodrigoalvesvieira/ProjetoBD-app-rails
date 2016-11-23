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
    @item = item.new(item_params)

    respond_to do |format|
      if @item.save
        format.html { redirect_to dashboard_item_url(@item), notice: 'item was successfully created.' }
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
    params.require(:item).permit(:nome, :limiar, :prazo_validade, :criado_em, :atualizado_em)
  end
end
