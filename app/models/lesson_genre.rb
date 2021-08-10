class LessonGenre < ApplicationRecord

  has_many :lessons, dependent: :destroy

  enum genre: { training: 0, yoga: 1, dance: 2 }

end
