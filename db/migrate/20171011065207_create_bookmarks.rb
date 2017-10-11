class CreateBookmarks < ActiveRecord::Migration[5.0]
  def change
    create_table    :bookmarks do |t|
      t.string      :title
      t.string      :url
      t.text        :description
      t.text        :image
      t.boolean     :favorite
      t.belongs_to  :user

      t.timestamps
    end
  end
end
