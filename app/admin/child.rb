ActiveAdmin.register Child do
  #permit_params :name, :gender, :description
  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end

  # Don't forget to add the image attribute (here thumbnails) to permitted_params

  permit_params :name, :age, :description, :small_image, :large_image, :med_image

  index do
    column :name
    column :description
    column "Medium Image" do |child|
      link_to(image_tag(child.med_image), admin_child_path(child))
    end    
    default_actions
  end 
end
