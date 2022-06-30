# frozen_string_literal: true

require_relative './person'
require_relative './CapitalizeDecorator'
require_relative './TrimmerDecorator'

person = Person.new(22, 'maximilianus')
person.correct_name
capitalized_person = CapitalizeDecorator.new(person)
capitalized_person.correct_name
capitalized_trimmed_person = TrimmerDecorator.new(capitalizedPerson)
capitalized_trimmed_person.correct_name

p person.correct_name
