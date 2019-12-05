class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :url
      t.string :start_date
      t.string :end_date
      t.string :status
      t.references :platform, foreign_key: true

      t.timestamps
    end
  end
end
