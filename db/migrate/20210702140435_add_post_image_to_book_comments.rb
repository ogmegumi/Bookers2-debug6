class AddPostImageToBookComments < ActiveRecord::Migration[5.2]
  def change
    add_column :book_comments, :post_image, :integer
  end
end
