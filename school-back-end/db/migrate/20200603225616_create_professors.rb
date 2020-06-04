class CreateProfessors < ActiveRecord::Migration[6.0]
  def change
    create_table :professors do |t|
      t.string :username
      t.string :password_digest
      t.string :speciality
      t.string :email
      t.bigint :phone

      t.timestamps
    end
  end
end
