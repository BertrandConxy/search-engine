require 'rails_helper'

describe 'Articles', type: :feature do
  it 'should have a heading' do
    visit '/'
    expect(page).to have_css('.img')
  end

  it 'should have a body' do
    visit '/'
    expect(page).to have_content('Analytics')
  end
end
