class Produto < ActiveRecord::Base
  self.table_name = "Produto"
  
  validates :nome, uniqueness: true
  
  def to_s
    self.nome
  end
end
