require 'rails_helper'

describe 'Analytics', type: :model do
  long_text = Faker::Lorem.paragraph(sentence_count: 100)
  session_id = SecureRandom.urlsafe_base64(16)

  it 'is valid with valid data' do
    analytic1 = Analytic.new(query: 'test', session_id: session_id)
    expect(analytic1).to be_valid
  end

  it 'is not valid if query is less than 3' do
    analytic2 = Analytic.new(query: 'te', session_id: session_id)
    expect(analytic2).to_not be_valid
  end

  it 'is not valid if query is more than 60' do
    analytic3 = Analytic.new(query: long_text, session_id: session_id)
    expect(analytic3).to_not be_valid
  end

  it 'is not valid without session_id' do
    analytic4 = Analytic.new(query: 'test')
    expect(analytic4).to_not be_valid
  end

  it 'is not valid without query' do
    analytic5 = Analytic.new(session_id: session_id)
    expect(analytic5).to_not be_valid
  end
end
