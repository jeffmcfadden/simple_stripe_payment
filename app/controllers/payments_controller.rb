class PaymentsController < InheritedResources::Base
  respond_to :html, :json
  
  def create
    
    token = params[:stripeToken]

    # create the charge on Stripe's servers - this will charge the user's card
    charge = Stripe::Charge.create(
      :amount => ( params[:payment][:amount].to_f * 100.00 ).to_i, # amount in cents
      :currency => "usd",
      :card => token,
      :description => "Invoice #{params[:payment][:invoice_number]} and Email #{params[:payment][:email]}"
    )
    
    payment_hash = params[:payment]
    
    if @payment = Payment.create( { :first_name => payment_hash[:first_name], :last_name => payment_hash[:last_name],
       :email => payment_hash[:email], :invoice_number => payment_hash[:invoice_number], :amount => payment_hash[:amount],
       :currency => payment_hash[:currency], :stripe_charge_id => charge.id } )
     
       redirect_to thankyou_path
     else
       flash[:notice] = "Error creating payment."
       render :new
     end
  end
  
  def thankyou
  end
  
end
