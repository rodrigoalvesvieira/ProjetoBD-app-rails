class Pedido < ActiveRecord::Base
  self.table_name = "Pedido"
  
  def get_conta
    Conta.find self.conta
  end
end
