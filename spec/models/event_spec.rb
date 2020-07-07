# spec/models/event_spec.rb

require 'rails_helper'

RSpec.describe Event, :type => :model do
	subject {
    described_class.new(date: "12/12/20",
                        loc_event: "yde",
                        description: "NEw event",
                        id: 1,
                        user_id: 5)
  }

  it "is valid with valid attributes" do
    expect(subject).to_not be_valid
  end
  it "is not valid without a date" do
    subject.date = nil
    expect(subject).to_not be_valid
  end
   it "is not valid without description" do
    subject.description = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a location" do
    subject.loc_event = nil
    expect(subject).to_not be_valid
  end

end

describe Event do
  it do
    should belong_to(:creator).
      class_name('User')
  end
end