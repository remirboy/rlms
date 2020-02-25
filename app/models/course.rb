class Course < ApplicationRecord
    has_many :topics
    belongs_to :teacher
  end