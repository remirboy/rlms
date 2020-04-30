class AddImageDataToMaterials < ActiveRecord::Migration[6.0]
  def change
    add_column :materials, :image_data, :text
  end
end
