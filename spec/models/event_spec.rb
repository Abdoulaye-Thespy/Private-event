# spec/models/event_spec.rb

require 'rails_helper'

RSpec.describe Event, :type => :model do
	subject {
    described_class.new(date: "12/12/20",
                        location: "yde",
                        desciption: "NEw event"
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