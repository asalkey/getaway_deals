require 'spec_helper'

feature 'Searching deals' do
  before do
    visit '/'
  end

  scenario "can search for deals" do
    fill_in 'city', :with => 'San Francisco'
    fill_in 'checkin', :with => '2013-12-31'
    fill_in 'checkout', :with => '2014-01-10'
    click_button 'Search'
  end
end
