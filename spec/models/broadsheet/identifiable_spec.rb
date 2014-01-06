require "spec_helper"

describe Broadsheet::Identifiable do

  subject { FactoryGirl.create(:asset) }

  describe "uuid" do

    it "is generated on initialize" do
      expect(subject.uuid).to be_present
    end

    it "does not change if already set" do
      fetched = Broadsheet::Asset.find(subject.id)
      expect(fetched.uuid).to eq subject.uuid
    end

  end

  describe "#with_uuid" do

    it "returns the expected object" do
      fetched = Broadsheet::Asset.with_uuid(subject.uuid)
      expect(subject).to eq fetched
    end

  end

end
