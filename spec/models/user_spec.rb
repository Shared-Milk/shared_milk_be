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
end
