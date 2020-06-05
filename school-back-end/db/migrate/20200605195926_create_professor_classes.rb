class CreateProfessorClasses < ActiveRecord::Migration[6.0]
  def change
    create_table :professor_classes do |t|
      t.belongs_to :professor, null: false, foreign_key: true
      t.references :classe, null: false, foreign_key: true
      t.string :professor_name
      t.string :class_name

      t.timestamps
    end
  end
end
