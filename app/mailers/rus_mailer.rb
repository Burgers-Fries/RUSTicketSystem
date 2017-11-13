class RusMailer < ApplicationMailer
    default from: "rus.examplemailer@gmail.com"
    
    def sample_email(user)
        @user = user
        mail(to: @user, subject: 'Sample Email')
    end
end
