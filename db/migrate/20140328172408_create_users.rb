class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email

      t.timestamps  #crea dos campos, uno que es cuando se creo el campo y cuando se actualizó la ultima vez para contabilizar

    end
  end
end
