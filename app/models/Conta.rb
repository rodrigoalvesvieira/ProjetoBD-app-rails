class Conta < ActiveRecord::Base
  self.table_name = "Conta"
  
  validates :duracao, presence: true
  validates :numeroMesa, presence: true
  validates :qtdClientes, presence: true
  
  def to_s
    return "Mesa: #{self.numeroMesa}"
  end
end
