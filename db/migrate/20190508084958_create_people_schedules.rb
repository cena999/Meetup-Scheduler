class CreatePeopleSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :people_schedules do |t|
      t.references :person
      t.references :schedule

      t.timestamps
    end
  end
end