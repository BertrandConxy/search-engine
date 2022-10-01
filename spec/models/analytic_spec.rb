require 'rails_helper'

describe 'Analytics', type: :model do

  long_text = Faker::Lorem.paragraph(sentence_count: 100)
  session_id = SecureRandom.urlsafe_base64(16)
  
 it 'is valid with valid data' do
   Analytic1 = Analytic.new(query: 'test', session_id: session_id)
   expect(Analytic1).to be_valid
  
 end

 it 'is not valid if query is less than 3' do
   Analytic2 = Analytic.new(query: 'te', session_id: session_id)
   expect(Analytic2).to_not be_valid
 end

  it 'is not valid if query is more than 60' do
    Analytic3 = Analytic.new(query: long_text, session_id: session_id)
    expect(Analytic3).to_not be_valid
  end

   it 'is not valid without session_id' do
     Analytic4 = Analytic.new(query: 'test')
     expect(Analytic4).to_not be_valid
   end

   it 'is not valid without query' do
     Analytic5 = Analytic.new(session_id: session_id)
     expect(Analytic5).to_not be_valid
   end

end
