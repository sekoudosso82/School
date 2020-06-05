class CreateClasseCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :classe_courses do |t|
      t.belongs_to :classe, null: false, foreign_key: true
      t.references :course
      t.string :classe_name
      t.string :course_name

      t.timestamps
    end
  end
end
