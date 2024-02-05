class CreateSchoolClasses < ActiveRecord::Migration[6.1]
  def change
    create_table :school_classes do |t|
      t.integer :number, null: false
      t.string :letter, null: false
      t.integer :students_count, null: false

      t.timestamps
    end

    add_index :school_classes, [:number, :letter], unique: true
  end
end
