class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  
  validates :post_id, :text, :user_id, presence: true
  
  delegate :name, to: :user, prefix: true
end
