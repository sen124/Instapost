class Pos < ActiveRecord::Migration
  def change
    add_column:posts, :photo, :string
    add_column:posts, :description, :text
  end
end
