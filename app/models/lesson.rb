class Lesson < ActiveRecord::Base
  validates :name, :presence => true
  validates :content, :presence => true
  validates :number, :presence => true
  belongs_to :section

  def next
    next_lesson = Lesson.where("number > ?", self.number).sort_by { |hsh| hsh[:number] }.first
  end

  def prev
    prev_lesson = Lesson.where("number < ?", self.number).sort_by { |hsh| hsh[:number] }.last
  end

end
