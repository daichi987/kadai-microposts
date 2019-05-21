class CreateFavoriteRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :favorite_relationships do |t|
      t.references :user, foreign_key: true
      t.references :micropost, foreign_key: true

      t.timestamps
    end
  end
end
