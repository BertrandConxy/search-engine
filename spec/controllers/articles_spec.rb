require 'rails_helper'

describe 'Articles', type: :feature do

  it 'should have a heading' do
    visit '/'
    expect(page).to have_content('HJ Search Engine')
  end

  it 'should have a body' do
    visit '/'
    expect(page).to have_content('body')
  end
end
