class ChangeEventTable < ActiveRecord::Migration
  def change
    change_column :events, :date, :string
  end
end
