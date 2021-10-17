class Job < ApplicationRecord
    belongs_to :client
    has_many :contracts
    has_many :workers, through: :contracts
end
