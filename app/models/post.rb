class Post < ActiveRecord::Base
  
  belongs_to :user
  
  mount_uploader :photo, PhotoUploader
  
  attr_accessor :photo, :description, :user_id
  
end
