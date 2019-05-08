class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.string :date
      t.references :meetup

      t.timestamps
    end
  end
end