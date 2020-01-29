class AddFieldsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :given_name, :string
    add_column :users, :surname, :string
    add_column :users, :dob, :date
    add_column :users, :book_count, :integer
    add_column :users, :reader_status, :string
  end
end
