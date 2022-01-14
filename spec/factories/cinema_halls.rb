# frozen_string_literal: true

FactoryBot.define do
  factory :cinema_hall do
    name { 'MyString' }
    number_of_rows { 1 }
    number_of_columns { 1 }
  end
end
