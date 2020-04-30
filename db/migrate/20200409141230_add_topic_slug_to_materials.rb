class AddTopicSlugToMaterials < ActiveRecord::Migration[6.0]
  def change
    add_column :materials, :topic_slug, :string
    add_index :materials, :topic_slug, unique: true
  end
end
