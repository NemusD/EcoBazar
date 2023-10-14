class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      #columnas de la tabla
      t.string :email
      t.string :password_digest
      t.timestamps
    end
  end
end
