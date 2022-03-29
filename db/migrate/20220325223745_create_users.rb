class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.text :bio
      t.text :location
      t.integer :active_status
      t.integer :donor_status, :default => 0
      t.timestamps
    end
  end
end
