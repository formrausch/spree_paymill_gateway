class AddPaymentMethodIdAndUserIdToSpreePaymillTransactions < ActiveRecord::Migration
  def change
    add_reference :spree_paymill_transactions, :payment_method, index: true
    add_reference :spree_paymill_transactions, :user, index: true
  end
end
