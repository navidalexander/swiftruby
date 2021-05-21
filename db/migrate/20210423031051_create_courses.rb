class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :course_number
      t.string :course_icon
      t.string :course_image
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
