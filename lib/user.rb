# require 'password_encrypter' # example

class User

  attr_reader :username

  def initialize(username, password)
    @username = username
    @password = encrypt(password)
  end

  def authenticate(username, password)
    username == @username && encrypt(password) == @password
  end

  private

  def encrypt(password)
    password.reverse
  end



end