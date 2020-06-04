class CreateClasses < ActiveRecord::Migration[6.0]
  def change
    create_table :classes do |t|
      t.string :title

      t.timestamps
    end
  end
end
