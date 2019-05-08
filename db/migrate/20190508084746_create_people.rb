class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :person_name
      t.string :person_available

      t.timestamps
    end
  end
end
