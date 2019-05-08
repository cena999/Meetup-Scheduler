class CreateAvailables < ActiveRecord::Migration[5.2]
  def change
    create_table :availables do |t|
      t.references :schedule, foreign_key: true
      t.string :person_name
      t.string :person_available

      t.timestamps
    end
  end
end
