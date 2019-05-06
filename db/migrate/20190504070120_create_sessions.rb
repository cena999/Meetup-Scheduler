class CreateSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :sessions do |t|
      t.string :session_name
      t.string :session_password
      t.string :proposed_date
      t.timestamps
    end
  end
end