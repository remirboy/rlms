class AddPdfDataToMaterials < ActiveRecord::Migration[6.0]
  def change
    add_column :materials, :pdf_data, :text
  end
end
