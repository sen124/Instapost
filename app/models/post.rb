class Post < ActiveRecord::Base
  attr_accessor:description
  mount_uploader :photo, PhotoUploader
end
