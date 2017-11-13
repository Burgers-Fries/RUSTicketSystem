# Preview all emails at http://localhost:3000/rails/mailers/rus_mailer
class RusMailerPreview < ActionMailer::Preview
    def rus_mail_preview
        RusMailer.sample_email("lfrazi18@uncc.edu")
    end
end
