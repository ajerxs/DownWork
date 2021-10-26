class Contract < ApplicationRecord
  belongs_to :job
  belongs_to :worker

  def hired_dates
    "#{self.start_date.strftime("%B %-d, %Y")} to #{self.end_date.strftime("%B %-d, %Y")}"
  end

end
