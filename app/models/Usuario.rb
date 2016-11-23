class Usuario < ActiveRecord::Base
  self.table_name = "Usuarios"
  
  validates :login, uniqueness: true
  validates :email, uniqueness: true
end
