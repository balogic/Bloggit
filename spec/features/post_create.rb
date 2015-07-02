require 'rails_helper'

describe 'Post creation page' do
	it 'will create a new post' do
		visit '/articles/new'
		fill_in 'article_title', with: 'Hello all'
		fill_in 'article_text', with: 'Good morning'
		click_button 'Submit'
	end
end
