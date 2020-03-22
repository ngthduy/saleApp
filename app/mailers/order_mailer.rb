class OrderMailer < ApplicationMailer
  default :from => "ngthduy <ngthduy@ngthduy.com>"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.received.subject
  #
  def received(order)
    # binding.pry
    @order = order
    mail to: order.email, subject: "ngthduy Store đã xác nhận đơn hàng"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.shipped.subject
  #
  def shipped(order)
    # binding.pry
    @order = order
    mail to: order.email, subject: "Pragmatic Store Order Shipped"
  end
end
