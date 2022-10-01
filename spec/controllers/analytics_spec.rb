require 'rails_helper'

describe 'Analytics', type: :feature do
  session_id = SecureRandom.urlsafe_base64(16)

  it 'should have a analytics' do
    visit '/analytics'
    expect(page).to have_content('number of searches')
  end

  it 'should list only top 10 queries' do
    10.times do |n|
      3.times do
        Analytic.create(
          query: "query#{n}",
          session_id: session_id
        )
      end
    end

    visit '/analytics'
    expect(page).to have_content('query3')
    expect(page).to have_content('query5')
  end

  it 'should not list queries not in top 10' do
    10.times do |n|
      3.times do
        Analytic.create(
          query: "query#{n}",
          session_id: session_id
        )
      end
    end

    Analytic.create(
      query: 'not_displayed',
      session_id: session_id
    )
    visit '/analytics'
    expect(page).to_not have_content('not_displayed')
  end
end
