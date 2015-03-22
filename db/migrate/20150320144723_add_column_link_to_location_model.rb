class AddColumnLinkToLocationModel < ActiveRecord::Migration
  def change
    add_column :locations, :link , :string
  end
end
