class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.belongs_to :classe, null: false, foreign_key: true
      t.string :username
      t.string :password_digest
      t.string :firstname
      t.string :lastname
      t.string :email
      t.bigint :phone

      t.timestamps
    end
  end
end
