class Photo < ActiveRecord::Base
  has_attached_file :photo,
    :styles => { 
      :medium => "300x300>",
      :thumb => "100x100>" 
    },
    :path => ":rails_root/public/assets/images/photos/:id/:style/:basename.:extension"
end
