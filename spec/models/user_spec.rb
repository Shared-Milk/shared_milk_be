require 'rails_helper'

RSpec.describe User do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email) }
    it { should validate_presence_of(:phone) }
    it { should validate_presence_of(:bio) }
    it { should validate_presence_of(:location) }
  end

  describe 'enum definitions' do
    it { should define_enum_for(:active_status).with_values([:active, :inactive]) }
    it { should define_enum_for(:donor_status).with_values([:donor, :recipient]) }
  end

  describe 'relationships' do
    it { should have_many(:requests) }
  end

  context 'instance methods' do
    describe '::only_active' do
      it 'returns only active users' do
        mom_1 = User.create!(name: "Samantha",
        email: "so@gmail.com",
        phone: "4231563232",
        bio: "abc",
        location: "Denver, CO",
        donor_status: 0)
        mom_2 = User.create!(name: "Betty",
        email: "beegee@gmail.com",
        phone: "4231563232",
        bio: "abc",
        location: "Denver, CO",
        donor_status: 0)
        mom_3 = User.create!(name: "Susana",
        email: "osusana@gmail.com",
        phone: "4231563232",
        bio: "abc",
        location: "Denver, CO",
        donor_status: 0)

        mom_1.requests.create!(requested_at: 2.week.ago)
        mom_1.requests.create!(requested_at: 2.days.ago)

        mom_2.requests.create!(requested_at: 4.week.ago)
        mom_2.requests.create!(requested_at: 3.week.ago)

        mom_3.requests.create!(requested_at: 5.week.ago)
        mom_3.requests.create!(requested_at: 4.week.ago)

        expect(User.only_active).to eq([mom_1, mom_2])
      end
    end
  end
end
