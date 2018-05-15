class CreateArranjos < ActiveRecord::Migration[5.1]
  def change
    create_table :arranjos do |t|
      t.string :name
      t.text :description
      t.string :department
      t.string :dimentions
      t.string :hastes
      t.text :composition
      t.string :available_membership
      t.string :old_url_photo
      t.string :photo

      t.timestamps
    end
  end
end
