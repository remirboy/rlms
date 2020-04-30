class Course < ApplicationRecord
  before_create :set_slug
  belongs_to :teacher
  has_many :topics
  validates :title, presence: true, length: {minimum: 2},uniqueness: true  
  
  def to_param
    "#{course_slug}.to_s"
  end

  private
  
  def set_slug
    self.course_slug = title.parameterize
  end
end
