class TransacoesController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @transacoes = Transacao.all
    @transacao = Transacao.new
  end

  def show
    @transacao = Transacao.find params[:id]
  end

  def new
    @transacao = Transacao.new
  end

  def update
  end

  def create
  end

  def delete
  end
end
