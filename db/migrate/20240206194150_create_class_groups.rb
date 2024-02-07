class CreateClassGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :class_groups do |t|
      t.integer :number, null: false
      t.string :letter, null: false
      t.integer :students_count, null: false
      t.references :school, null: false, foreign_key: true

      t.timestamps
    end
  end
end
