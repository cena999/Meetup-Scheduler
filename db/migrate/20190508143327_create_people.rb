class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :name
      t.references :meetup
      t.references :schedule

      t.timestamps
    end
  end
end