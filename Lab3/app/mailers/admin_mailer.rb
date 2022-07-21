class AdminMailer < ApplicationMailer
    default from: "fatmaabdelhameed1999@gmail.com"
    def welcome_email
        @user = params[:user]
        p @user
        @url = 'http://localhost:3000/login'
        mail(to: @user.email, subject: "Welcome to our book store")
    end
end
