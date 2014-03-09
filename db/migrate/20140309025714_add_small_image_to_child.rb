class AddSmallImageToChild < ActiveRecord::Migration
  def change
    add_column :children, :small_image, :string
  end
end
