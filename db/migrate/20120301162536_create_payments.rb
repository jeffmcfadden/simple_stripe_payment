class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :first_name
      t.string :last_name
      t.string :invoice_number
      t.float :amount
      t.string :stripe_token
      t.string :currency
      t.string :email

      t.timestamps
    end
  end
end
