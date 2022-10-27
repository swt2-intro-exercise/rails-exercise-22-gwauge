require 'rails_helper'

RSpec.describe Author, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it "should test author model behavior" do
    author = Author.new(first_name: "Alan", last_name: "Turing", homepage: "https://en.wikipedia.org/wiki/Alan_Turing")

    expect(author.first_name).to eq("Alan")
    expect(author.last_name).to eq("Turing")
    expect(author.name).to eq("Alan Turing")
    expect(author.homepage).to eq("https://en.wikipedia.org/wiki/Alan_Turing")
  end
end
