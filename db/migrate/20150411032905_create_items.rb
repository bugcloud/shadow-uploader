class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :video

      t.timestamps null: false
    end
  end
end
