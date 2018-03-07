class User < ApplicationRecord
   validates :session_token, presence: true
   validates :username, presence: true
   #validate presence only nec when first creating pw
   validates :password, :presence => {:on => :create},
    #ensure pw is 7 chars, and when the db pulls it, allow_nil to be true
              :length => {:minimum => 7, :allow_nil => true},
              #ensures they always match
              :confirmation => true

    def find_by_credentials(username, pw)
      user = User.find_by(:username => username)
      user.password_validation?(pw) ? user : nil
    end


    def generate_session_token

    end
# Write ::generate_session_token
# This is a helper method I like to write that uses SecureRandom::urlsafe_base64 and returns a 16-digit pseudorandom string
# Write #reset_session_token!
# This method resets the user's session_token and saves the user
# Write #ensure_session_token
# This method makes sure that the user has a session_token set, setting one if none exists
# Write #password=
# This method sets @password equal to the argument given so that the appropriate validation can happen
# This method also encrypts the argument given and saves it as this user's password_digest
# Remember: you have to add an attr_reader for password for the validation to occur!

end
