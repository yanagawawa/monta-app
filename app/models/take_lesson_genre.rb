class TakeLessonGenre < ApplicationRecord
  
   has_many :lessons, dependent: :destroy

end
