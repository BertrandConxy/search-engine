require 'rails_helper'

describe 'Articles', type: :model do
  title = Faker::Game.title
  text = Faker::Lorem.paragraph(sentence_count: 8)
  short_text = 'word'
  long_text = Faker::Lorem.paragraph(sentence_count: 150)

  it 'is valid with valid data' do
    article1 = Article.new(title: title, body: text)
    expect(article1).to be_valid
  end

  it 'is not valid without title' do
    article2 = Article.new(body: text)
    expect(article2).to_not be_valid
  end

  it 'is not valid if title is less than 7' do
    article3 = Article.new(title: short_text, body: text)
    expect(article3).to_not be_valid
  end

  it 'is not valid without body' do
    article4 = Article.new(title: title)
    expect(article4).to_not be_valid
  end

  it 'is not valid if body is less than 18' do
    article5 = Article.new(title: title, body: short_text)
    expect(article5).to_not be_valid
  end

  it 'is not valid if body is more than 300' do
    article6 = Article.new(title: title, body: long_text)
    expect(article6).to_not be_valid
  end

  it 'is not valid if title is more than 60' do
    article7 = Article.new(title: long_text, body: text)
    expect(article7).to_not be_valid
  end
end
