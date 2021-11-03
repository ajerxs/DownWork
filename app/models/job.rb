class Job < ApplicationRecord
    belongs_to :client
    has_many :contracts
    has_many :workers, through: :contracts

    validates :title, :description, :salary, :positions, :client_id, presence: true

    scope :high_paying, -> { where('salary >= ?', 100000) }
end
