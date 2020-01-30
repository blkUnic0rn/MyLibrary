class AddReviewToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :review, :string
  end
end
