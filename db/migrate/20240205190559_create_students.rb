class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :surname, null: false
      t.references :school_class, foreign_key: true, null: false
      t.integer :school_id, null: false

      t.timestamps
    end
  end
end
