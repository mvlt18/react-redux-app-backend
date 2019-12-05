class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.string :content
      t.string :due_date
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
