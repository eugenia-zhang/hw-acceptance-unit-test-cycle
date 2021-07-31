require 'rails_helper'
require 'factory_bot'

FactoryBot.define do
	factory :movie do
		title {'A Fake Title'} #default
		director {'Some Person'}
	end
end