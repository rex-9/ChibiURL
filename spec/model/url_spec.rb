require 'rails_helper'

RSpec.describe Url, type: :model do
  before(:example) do
    @rex = User.create(username: 'rex', password: 'password')
  end

  subject { Url.new(user_id: @rex.id, original_url: 'https://www.google.com', public: true, chibi_url: 'google') }

  before { subject.save }

  it 'Original URL is required' do
    subject.original_url = nil
    expect(subject).to_not be_valid
  end

  it 'Original URL should NOT start with http or https' do
    subject.original_url = 'google'
    expect(subject).to_not be_valid
  end

  it 'Original URL should start with http or https' do
    subject.original_url = 'https://www.google.com'
    expect(subject).to be_valid
  end
end
