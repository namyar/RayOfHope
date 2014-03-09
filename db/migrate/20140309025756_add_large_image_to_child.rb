class AddLargeImageToChild < ActiveRecord::Migration
  def change
    add_column :children, :large_image, :string
  end
end
