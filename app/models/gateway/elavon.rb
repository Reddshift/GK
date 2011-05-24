class Gateway::Elavon < Gateway
	preference :login, :string
	preference :password, :string

  def provider_class
    ActiveMerchant::Billing::ElavonGateway
  end

end
