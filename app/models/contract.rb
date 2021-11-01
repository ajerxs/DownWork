class Contract < ApplicationRecord
  belongs_to :job
  belongs_to :worker

  validates :start_date, date: { before_or_equal_to: :end_date }
  validates :end_date, date: { after_or_equal_to: :start_date }
  validates :job_id, :worker_id, presence: true

  def hired_dates
    "#{self.start_date.strftime("%B %-d, %Y")} to #{self.end_date.strftime("%B %-d, %Y")}"
  end

end
