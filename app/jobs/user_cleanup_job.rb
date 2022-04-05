class UserCleanupJob < ApplicationJob
  queue_as :default

  def perform
    if Request.any? == true
      User.where(active_status: 0).each do |donor|
        if donor.requests.last.requested_at < Date.current - 3.week
          donor.update(active_status: 1)
        end
      end
    end 
  end
end
