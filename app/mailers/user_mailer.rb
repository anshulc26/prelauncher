class UserMailer < ActionMailer::Base
  default from: "\"My Business Garage\" <support@mybusinessgarage.com>"
  layout 'mailer'

    def sign_up_email(user)
        @user = user

        mail(:to => user.email, :subject => "Thanks for signing up!")
    end
end
