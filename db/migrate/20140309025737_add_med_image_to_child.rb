class AddMedImageToChild < ActiveRecord::Migration
  def change
    add_column :children, :med_image, :string
  end
end
