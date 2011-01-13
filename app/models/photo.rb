class Photo < ActiveRecord::Base
  has_attached_file :photo,
    :styles => { :thumb => "150x150>" },
    :storage => :s3, 
    :s3_credentials => "#{RAILS_ROOT}/config/s3.yml", 
    :path => "photos/:id/:style/:basename.:extension"
end
