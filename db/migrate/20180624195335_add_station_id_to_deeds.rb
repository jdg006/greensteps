class AddStationIdToDeeds < ActiveRecord::Migration[5.2]
  def change
    add_column :deeds, :station_id, :integer
  end
end
