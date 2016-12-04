class Pedido < ActiveRecord::Base
  self.table_name = "Pedido"
  
  validates :conta, presence: true
  validates :produto, presence: true

  def get_conta
    Conta.find self.conta
  end
end
