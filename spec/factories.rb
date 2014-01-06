FactoryGirl.define do

  factory :layout, class: "Broadsheet::Layout" do
    sequence(:name) { |n| "layout-#{n}" }
    format "haml"
    markup <<-EOS
!!!5
%html
  %head
    %title This is a website
  %body
    = yield
    EOS
  end

  factory :view, class: "Broadsheet::View" do
    sequence(:name) { |n| "view-#{n}" }
    sequence(:url) { |n| "path/to/#{n}/view" }
    format "haml"
    markup <<-EOS
%h1 Page Title
%section
  %p This is a view
    EOS
  end

  factory :partial, class: "Broadsheet::Partial" do
    sequence(:name) { |n| "partial-#{n}" }
    format "haml"
    markup <<-EOS
%h2 Partial Name
%article
  %p This is a partial
    EOS
  end

  factory :asset, class: "Broadsheet::Asset" do
    sequence(:name) { |n| "asset-#{n}" }
  end

end
