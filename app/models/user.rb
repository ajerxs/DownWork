class User < ApplicationRecord
    has_many :jobs
    has_secure_password

    validates :first_name, :last_name, :bio, presence: true
    validates :email, presence: true, uniqueness: true

    def full_name
        "#{self.first_name} " + "#{self.last_name}"
    end

end
