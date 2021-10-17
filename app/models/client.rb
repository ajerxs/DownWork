class Client < User
    has_many :jobs

    def full_name
        "#{self.first_name} " + "#{self.last_name}"
    end

end