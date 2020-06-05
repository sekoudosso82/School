class CreateProfessorStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :professor_students do |t|
      t.belongs_to :professor, null: false, foreign_key: true
      t.references :student, null: false, foreign_key: true
      t.string :professor_name
      t.string :student_name

      t.timestamps
    end
  end
end
