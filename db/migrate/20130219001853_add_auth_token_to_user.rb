class AddAuthTokenToUser < ActiveRecord::Migration
  #Up and down can occur too
  def change
    #add_column :table_name, :colun)name, :type, options
    add_column :users, :auth_token, :string
  end
end
