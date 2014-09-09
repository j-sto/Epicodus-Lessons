class Lesson < ActiveRecord::Base
  validates :name, :presence => true
  validates :content, :presence => true

  def next
    next_lesson = Lesson.where("lesson_num > ?", self.lesson_num).first
  end

  def prev
    prev_lesson = Lesson.where("lesson_num < ?", self.lesson_num).last
  end

end
