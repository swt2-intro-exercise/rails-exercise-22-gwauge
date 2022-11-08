require 'rails_helper'

RSpec.describe Paper, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it "should test paper model behavior" do
    paper = Paper.new(title: "Data Warehouses", venue: "hpi.de", year: 2022)

    expect(paper.title).to eq("Data Warehouses")
    expect(paper.venue).to eq("hpi.de")
    expect(paper.year).to eq(2022)
  end
end
