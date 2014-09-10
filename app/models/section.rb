class Section < ActiveRecord::Base
  validates :name, :presence => true
  validates :number, :presence => true
  has_many :lessons

  def next
    next_section = Section.where("number > ?", self.number).sort_by { |hsh| hsh[:number] }.first
  end

  def prev
    prev_section = Section.where("number < ?", self.number).sort_by { |hsh| hsh[:number] }.last
  end

end
