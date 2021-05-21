class AddNotesToLessons < ActiveRecord::Migration[6.1]
  def change
    add_column :lessons, :notes, :text
  end
end
