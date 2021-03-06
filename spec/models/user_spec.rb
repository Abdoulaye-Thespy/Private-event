# spec/models/user_spec.rb

require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    described_class.new(name: 'Anything',
                        email: 'example@gmail.com',
                        id: 1)
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end
  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
  it 'is not valid without an email' do
    subject.email = nil
    expect(subject).to_not be_valid
  end
end

describe User do
  it do
    should have_many(:events)
      .class_name('Event')
  end
end
