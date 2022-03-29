class User < ApplicationRecord
  has_many :requests
  validates :name, presence: true
  validates :email,
            :format => { with: URI::MailTo::EMAIL_REGEXP },
            presence: true,
            uniqueness: true
  validates :phone, presence: true
  validates :bio, presence: true
  validates :location, presence: true
  attribute :donor_status
  enum active_status: {active: 0, inactive: 1}
  enum donor_status: {donor: 0, recipient: 1}
  before_save :normalize_phone


 def formatted_phone
   parsed_phone = Phonelib.parse(phone)
   return phone if parsed_phone.invalid?

   formatted =
     if parsed_phone.country_code == "1"
       parsed_phone.full_national
     else
       parsed_phone.full_international
     end
   formatted.gsub!(";", " x")
   formatted
 end

 private

 def normalize_phone
   self.phone = Phonelib.parse(phone).full_e164.presence
 end
end
