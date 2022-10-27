require 'rails_helper'

describe "Index author page", type: :feature do
  it "should exist at 'authors_path' and render withour error" do
	visit authors_path
  end

  it "should list all authors" do
	visit authors_path
	# these are the standard names given to inputs by the Rails form builder
	expect(page).to have_css('table')
  end

  it "should have a link to create a new author" do
	visit authors_path
	# these are the standard names given to inputs by the Rails form builder
	expect(page).to have_link 'New author', href: new_author_path
  end
end
