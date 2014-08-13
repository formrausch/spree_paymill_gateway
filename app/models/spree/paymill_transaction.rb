require "paymill"

module Spree
  class PaymillTransaction < ActiveRecord::Base
    belongs_to :user
    belongs_to :payment_method

    has_many :payments, as: :source

    serialize :payment_response, Paymill::Payment
    serialize :transaction_response, Paymill::Transaction
  end
end
