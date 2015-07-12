require 'sinatra'
require 'json'
require 'rest-client'
require 'sinatra-logentries'
require './info.rb'
require './helpers.rb'

set :environment, :production

configure do
  Sinatra::Logentries.token = '05e30afd-e674-46a8-bb28-37e0e163fe93'
end

get '/' do
	erb :index
end

get '/apollo-chrome-extension' do
	erb :apollo_chrome_extension
end

get '/api/documentation' do
	erb :api_documentation
end

get '/api/v1/all' do
	experience = get_experience
	skills = get_skills
	education = get_education
	content_type :json
		{ :experience => experience, :skills => skills, :education => education}.to_json
end

get '/api/v1/status' do
	content_type :json
		{ :status => true }.to_json
end

get '/api/v1/experience' do
	experience = get_experience
	content_type :json
		{ :experience => experience}.to_json
end

get '/api/v1/skills' do
	skills = get_skills
	content_type :json
		{ :skills => skills}.to_json
end

get '/api/v1/education' do
	education = get_education
	content_type :json
		{ :education => education}.to_json
end