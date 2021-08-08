class CreateTakeLessonGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :take_lesson_genres do |t|

      t.integer :genre

      t.timestamps
    end
  end
end
