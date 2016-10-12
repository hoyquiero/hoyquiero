class CreateContentfulConfigs < ActiveRecord::Migration[5.0]
  def change
    create_table :contentful_configs do |t|
      t.string :name
      t.string :space_id
      t.string :access_token

      t.timestamps
    end
  end
end
