class Conta < ActiveRecord::Base
  self.table_name = "Conta"
  
  def to_s
    return "Mesa: #{self.numeroMesa}"
  end
end
