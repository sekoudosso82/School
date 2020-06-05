class CreateStudentCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :student_courses do |t|
      t.belongs_to :student, null: false, foreign_key: true
      t.references :course
      t.string :student_name
      t.string :course_name

      t.timestamps
    end
  end
end
