class AddAuthTokenToStudents < ActiveRecord::Migration[6.1]
  def change
    add_column :students, :token, :string
  end
end
