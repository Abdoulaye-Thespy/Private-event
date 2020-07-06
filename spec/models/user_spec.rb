# spec/models/user_spec.rb

require 'rails_helper'

RSpec.describe User, :type => :model do
	subject {
    described_class.new(name: "Anything",
                        email: "example@gmail.com",
                        id: 1)
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end
  it "is not valid without a name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end
   it "is not valid without an email" do
    subject.email = nil
    expect(subject).to_not be_valid
  end
end