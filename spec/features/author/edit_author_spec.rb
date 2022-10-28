require 'rails_helper'

describe "Edit author page", type: :feature do
	it "should exist at 'edit_author_path' and render withour error" do
		@author = Author.create(first_name: "Alan", last_name: "Turing", homepage: "https://en.wikipedia.org/wiki/Alan_Turing")
		visit edit_author_path(@author)
	end

	it "should have text inputs for an author's first name, last name, and homepage" do
		@author = Author.create(first_name: "Alan", last_name: "Turing", homepage: "https://en.wikipedia.org/wiki/Alan_Turing")
		visit edit_author_path(@author)

		# these are the standard names given to inputs by the Rails form builder
		expect(page).to have_field('author[first_name]', :with => "Alan")
		expect(page).to have_field('author[last_name]', :with => "Turing")
		expect(page).to have_field('author[homepage]', :with => "https://en.wikipedia.org/wiki/Alan_Turing")
	end

	it "should reflect changes made after editing" do
		@author = Author.create(first_name: "Alan", last_name: "Turing", homepage: "https://en.wikipedia.org/wiki/Alan_Turing")
		visit edit_author_path(@author)
		
		page.fill_in 'author[last_name]', with: 'Turingo'
		page.find('input[type="submit"]').click
		
		@author.reload
		
		visit edit_author_path(@author)
		expect(page).to have_field("author[last_name]", :with => "Turingo")
	end

#   it "should have a link to create a new author" do
# 	visit authors_path
# 	# these are the standard names given to inputs by the Rails form builder
# 	expect(page).to have_link 'New author', href: new_author_path
#   end
end
