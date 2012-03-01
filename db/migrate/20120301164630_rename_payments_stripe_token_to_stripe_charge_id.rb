class RenamePaymentsStripeTokenToStripeChargeId < ActiveRecord::Migration
  def change
    rename_column :payments, :stripe_token, :stripe_charge_id
  end
end
