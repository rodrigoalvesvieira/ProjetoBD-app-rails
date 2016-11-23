class Item < ActiveRecord::Base
  self.table_name = "Item"
  
  validates :nome, uniqueness: true
end
