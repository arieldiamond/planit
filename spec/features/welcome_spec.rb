require 'rails_helper'

describe 'welcome page' do
  it 'welcomes the user' do
    visit '/'
    page.should have_content('planit')
  end

  it 'has a sign in link' do
  	visit '/'
  	page.should have_content('Sign in')
  end
end