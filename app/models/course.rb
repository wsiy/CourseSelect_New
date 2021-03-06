class Course < ActiveRecord::Base

  has_many :grades
  has_many :users, through: :grades
  #sgg8
  has_many :evaluations
  has_many :notices, class_name: "Notice", foreign_key: :course_id

  belongs_to :teacher, class_name: "User"

  validates :name, :course_type, :course_time, :course_week,
            :class_room, :credit, :teaching_type, :exam_type, presence: true, length: {maximum: 50}



end
