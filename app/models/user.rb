class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :meals


    def generate_jwt
      JWT.encode({ id: id,
      exp: 60.days.from_now.to_i },
      Rails.application.credentials.secret_key_base)
    end

    def email_required?
      false
    end

    def email_changed?
      false
    end
end
