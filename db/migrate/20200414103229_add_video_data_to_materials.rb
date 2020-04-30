class AddVideoDataToMaterials < ActiveRecord::Migration[6.0]
  def change
    add_column :materials, :video_data, :text
  end
end
