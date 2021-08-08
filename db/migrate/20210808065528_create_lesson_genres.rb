class CreateLessonGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :lesson_genres do |t|

      t.integer :genre

      t.timestamps
    end
  end
end
