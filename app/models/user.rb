class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  class Roles
    MEMBER = "member"
    CLIENT = "client"
    ADMIN = "admin"

    def self.all
      [MEMBER, CLIENT, ADMIN]
    end
  end
end
