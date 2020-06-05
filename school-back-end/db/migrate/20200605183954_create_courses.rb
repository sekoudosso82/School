class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.belongs_to :professor, null: false, foreign_key: true
      t.string :title
      t.string :level

      t.timestamps
    end
  end
end
