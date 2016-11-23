class AddEmailToUsuarios < ActiveRecord::Migration[5.0]
  def change
    add_column :usuarios, :email, :string
  end
end
