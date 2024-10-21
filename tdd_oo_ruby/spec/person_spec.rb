# frozen_string_literal: true

require 'spec_helper'

require 'person'

RSpec.describe Person do
  describe '#talk' do
    it 'can talk' do
      person = Person.new
      expect(person.talk).to eq('Hello World, Ruby!')  
    end

    it 'can talk others languages' do
      person = Person.new
      expect(person.talk('Olá mundo')).to eq('Olá mundo, Ruby!')  
    end
  end  
end

