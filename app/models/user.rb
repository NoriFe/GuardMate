class User < ApplicationRecord
    attr_accessor :password
    before_save :encrypt_password
  
    validates :password, presence: true, confirmation: true
  
    private
  
    def encrypt_password
      self.password_digest = BCrypt::Password.create(password)
    end
  end
  