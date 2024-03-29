require 'spec_helper'

describe "Static pages" do
  subject { page }
  describe "Home page" do
    before { visit root_path }
    it { should have_selector('h1', :text => "Home")}
    it { should have_selector('title', text: full_title(''))}
    it { should_not have_selector('title', :text => "| Home")}
  end

  describe "Help page" do
    before { visit help_path }
    it { should have_selector('h1', :text => 'Help')}
    it { should have_selector('title', text: full_title(''))}
  end
  describe "About page" do
    before { visit about_path }
    it { should have_selector('h1', :text => "About us")}
    it { should have_selector("title", text: full_title(''))}
  end
  describe "Contact page" do
    before { visit contact_path }
    it { should have_selector('title', text: full_title(''))}
  end
end
