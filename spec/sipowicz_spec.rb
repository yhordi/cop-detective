
describe Sipowicz do
  let(:user) { FactoryGirl.create :user }
  describe '#valid_credentials?' do
    it 'authenticates a user' do
      Sipowicz.valid_credentials?(user)
      expect(user.authenticate).to eq(true)
    end
    xit 'returns true if an a user object is authentic' do
    end
  end
  describe '#new_passwords_match?' do
    xit 'returns true if the user typed their password and confirmation correctly' do
    end
    xit 'returns false if the user types their password or confirmation incorrectly' do
    end
  end
  describe '#validate_user' do
  end
  describe '#fields_empty?' do
  end
  describe '#validation_redirect' do
  end
  describe '#validate_new_passwords' do
  end
end