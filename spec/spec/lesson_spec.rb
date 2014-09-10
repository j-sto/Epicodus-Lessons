require 'rails_helper'

describe Lesson do
  it { should validate_presence_of :name }
  it { should validate_presence_of :content }

  context '#next' do
    it 'returns the lesson with the next-highest number than the current lesson' do
      current_lesson = Lesson.create({:name => 'lesson1', :number => 1, :content => "kjhssh"})
      next_lesson = Lesson.create({:name => 'lesson2', :number => 2, :content => "welkfh"})
      current_lesson.next.should eq next_lesson
    end
  end

end
