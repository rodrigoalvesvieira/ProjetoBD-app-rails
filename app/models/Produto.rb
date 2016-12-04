class Produto < ActiveRecord::Base
  self.table_name = "Produto"
  
  # has_many :items, :foreign_key => "player_alias"
  
  validates :nome, uniqueness: true, presence: true
  
  def to_s
    self.nome
  end
end
