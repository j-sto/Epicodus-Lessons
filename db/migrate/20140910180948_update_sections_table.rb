class UpdateSectionsTable < ActiveRecord::Migration
  def change
    add_column :sections, :number, :int
  end
end
