class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  after_create :create_usuario
  
private
  
  def create_usuario
    Usuario.create(login: self.login, password: SecureRandom.hex, admin: false)
  end
end
