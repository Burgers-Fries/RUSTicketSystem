class RusMailer < ApplicationMailer
    default from: "rus.examplemailer@gmail.com"
    
    def sample_email(user)
        @user = user
        mail(to: @user, subject: 'Sample Email')
    end
    
    def ticket_email(user, ticket)
        @user = user
        @ticket = ticket
        mail(to: @user, subject: @ticket.title)
    end
end
