Stripe.api_key = ENV["STRIPE_SECRET_KEY"]
Stripe.api_version = "2018-05-21"
STRIPE_PUBLIC_KEY = ENV["STRIPE_PUBLIC_KEY"]

# usage
# stripe_charge = Stripe::Charge.create(
#   :amount => 1000,
#   :currency => "usd",
#   :customer => "cus_E1vpHZahxM1Vfi",
#   :statement_descriptor => 'test description yo',
#   :description => 'more description yo'
# )


# stripe_refund = ::Stripe::Refund.create(
#   :amount => 500,
#   :charge => "ch_1DZs3JHh98dN3QhWp46FoHvY"
# )

# response = Stripe::Customer.create :description => "Customer for #{@organization.users.creator&.email}",
# :source      => @stripe_token,
# :email       => @organization.users.creator&.email,
# :metadata    => {
#     :organization_id                 => @organization.id,
#     :organization_email              => @organization.users.creator&.email,
#     :organization_name       => @organization.name
# }