class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :title
      t.string :description
      t.string :service_img_link

      t.timestamps null: false
    end
  end
end
