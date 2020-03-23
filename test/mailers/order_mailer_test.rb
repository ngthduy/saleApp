require "test_helper"

class OrderMailerTest < ActionMailer::TestCase
  test "received" do
    mail = OrderMailer.received
    assert_equal "Pragmatic Store Order Confirmation", mail.subject
    assert_equal ["ngthduy@ngthduy.com"], mail.to
    assert_equal ["nguyenduy170898@gmail.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "shipped" do
    mail = OrderMailer.shipped
    assert_equal "Pragmatic Store Order Shipped", mail.subject
    assert_equal ["ngthduy@ngthduy.com"], mail.to
    assert_equal ["nguyenduy170898@gmail.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end
end
