class RenameColumnDatesInEventsTable < ActiveRecord::Migration
 def change
  rename_column :events, :date, :eventdate
 end
end
