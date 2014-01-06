require "spec_helper"
require File.expand_path("../../../../lib/broadsheet/resolver", __FILE__)

describe "Broadsheet::Resolver" do

  subject { Broadsheet::Resolver.new }
  let(:details) { { formats: [:html], locale: [:en], handlers: [:haml] } }

  context "when finding a view" do

    let(:view) { FactoryGirl.create(:view) }

    it "returns the expected ActionView::Template" do
      templates = subject.find_all(view.url, "", false, details)
      expect(templates.first.source).to eq view.markup
    end

  end

  context "when finding a partial" do

    let(:partial) { FactoryGirl.create(:partial) }

    it "returns the expected ActionView::Template" do
      templates = subject.find_all(partial.slug, "", true, details)
      expect(templates.first.source).to eq partial.markup
    end

  end

end
