class OrderMailer < ActionMailer::Base
  default from: "phil@tinklabs.com"

  def order_confirmation()
    # @user = user
    # mail(to: @user.email, subject: 'Order Confirmation')
    # mail(to: 'cassie.mak@tinklabs.com' , subject: 'Order Confirmation')
    mail(to: 'cassie.mak@tinklabs.com' , subject: 'Order Confirmation')


  end

end
