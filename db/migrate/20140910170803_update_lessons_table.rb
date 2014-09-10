class UpdateLessonsTable < ActiveRecord::Migration
  def change
    add_column :lessons, :section_id, :int
  end
end
