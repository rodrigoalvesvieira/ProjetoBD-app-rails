class Estoque < ActiveRecord::Base
  self.table_name = "Estoque"
  
  validates :qtdItem, presence: true
  validates :produto_id, presence: true
  
  def get_produto
    Produto.find self.produto_id
  end
  
  def to_s
    self.try(:get_produto).try(:nome)
  end
end
