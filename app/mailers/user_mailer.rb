class UserMailer < ApplicationMailer
    default from: 'jamesbarthee@gmail.com'

    def welcome_email(user)
      #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
      @user = user 
  
      #on définit une variable @url qu'on utilisera dans la view d’e-mail
      @url  = 'http://eventbriTHP.fr/login' 
  
      # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
      mail(to: @user.email, subject: 'Bienvenue chez nous !') 
    end

    
    def email_registration_confirmation(user, event)
        @user = user
        @event = event
        mail(to: @user.email, subject: "Confirmation d'inscription à l'événement #{@event.title}")
    end
end
