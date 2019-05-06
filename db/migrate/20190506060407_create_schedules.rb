class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.string :date
      t.belongs_to :meetup, foreign_key: true

      t.timestamps
    end
  end
end
