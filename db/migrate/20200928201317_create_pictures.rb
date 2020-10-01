class CreatePictures < ActiveRecord::Migration[6.0]
  def change
    create_table :pictures do |t|
      t.string :image_url
      t.string :title
      t.belongs_to :owner

      t.timestamps
    end
  end
end
