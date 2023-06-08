class AddUserRefToCars < ActiveRecord::Migration[7.0]
  def change
    add_reference :cars, :owner, references: :users, index: true
    add_foreign_key :cars, :users, column: :owner_id
  end
end
