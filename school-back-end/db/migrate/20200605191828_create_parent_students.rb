class CreateParentStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :parent_students do |t|
      t.belongs_to :parent, null: false, foreign_key: true
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
