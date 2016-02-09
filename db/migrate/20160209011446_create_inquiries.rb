class CreateInquiries < ActiveRecord::Migration
  def change
    create_table :inquiries do |t|
      t.string :name
      t.text :text
      t.string :email

      t.timestamps null: false
    end
  end
end
