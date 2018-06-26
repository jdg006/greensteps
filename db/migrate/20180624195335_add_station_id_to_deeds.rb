class AddStationIdToDeeds < ActiveRecord::Migration[5.2]
  def change
    add_reference :deeds, :station, index: true
  end
end
