class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      
      t.integer :trainer_id
      t.integer :user_id
      t.integer :lesson_genre_id
      t.integer :take_lesson_genre_id
      t.string :title
      t.string :lesson_word 
      t.datetime :start
      t.datetime :end
      t.integer :total_time 
      t.integer :total_people
      t.string :lesson_location
      t.text :lesson_details
      t.text :belongings
      t.integer :lesson_status

      t.timestamps
    end
  end
end
