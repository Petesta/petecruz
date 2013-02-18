class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :password
      t.string :auth_token

      t.timestamps
    end
  end
end
