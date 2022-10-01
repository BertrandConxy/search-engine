# frozen_string_literal: true

require 'faker'

50.times do
  Article.create(
    title: Faker::Game.title,
    body: Faker::Lorem.paragraph(sentence_count: 10)
  )
end
