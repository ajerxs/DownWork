class Worker < User
    has_many :contracts
    has_many :jobs, through: :contracts
end