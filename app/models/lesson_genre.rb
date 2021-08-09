class LessonGenre < ApplicationRecord

  has_many :lessons, dependent: :destroy

end
