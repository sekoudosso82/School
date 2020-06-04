class CreateParents < ActiveRecord::Migration[6.0]
  def change
    create_table :parents do |t|
      t.string :username
      t.string :password_digest
      t.string :address
      t.string :email
      t.bigint :phone

      t.timestamps
    end
  end
end
