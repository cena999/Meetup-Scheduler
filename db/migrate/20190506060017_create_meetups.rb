class CreateMeetups < ActiveRecord::Migration[5.2]
  def change
    create_table :meetups do |t|
      t.string :name
      t.string :description
      t.string :password

      t.timestamps
    end
  end
end
