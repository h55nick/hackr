class AddColumnEventdateToVenues < ActiveRecord::Migration
  def change
    add_column :venues, :eventdate, :string
  end
end
