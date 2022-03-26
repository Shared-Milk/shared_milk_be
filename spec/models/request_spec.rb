require 'rails_helper'

RSpec.describe Request do
  describe 'relationships' do
    it { should belong_to(:user) }
  end
end
