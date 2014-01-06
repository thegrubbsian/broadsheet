require "spec_helper"

describe Broadsheet::Asset do

  it "includes the Identifiable module" do
    expect(Broadsheet::Asset.ancestors).to include Broadsheet::Identifiable
  end

end
