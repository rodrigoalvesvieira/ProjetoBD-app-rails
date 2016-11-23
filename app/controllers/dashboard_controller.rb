class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @utilizacoes = Utilizacoes.all
    @estoque = Estoque.all
  end
end
