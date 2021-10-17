class Contract < ApplicationRecord
  belongs_to :job
  belongs_to :worker
end
