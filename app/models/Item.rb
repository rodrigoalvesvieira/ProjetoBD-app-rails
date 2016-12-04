class Item < ActiveRecord::Base
  self.table_name = "Item"
  
  validates :nome, uniqueness: true, presence: true
  validates :limiar, presence: true
  validates :prazo_validade, presence: true
end
