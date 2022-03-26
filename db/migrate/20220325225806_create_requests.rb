class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.references :user
      t.datetime :requested_at
      t.timestamps
    end
  end
end
