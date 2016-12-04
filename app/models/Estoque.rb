class Estoque < ActiveRecord::Base
  self.table_name = "Estoque"
  
  validates :qtdItem, presence: true
  validates :produto_id, presence: true
end
