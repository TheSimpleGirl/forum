class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :monk_id
      t.string :authentication_token
      t.boolean :admin, default: false

      t.timestamps
    end
  end
end
