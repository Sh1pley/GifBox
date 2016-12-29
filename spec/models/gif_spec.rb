require 'rails_helper'

describe "Gif" do
  before(:each) do
    @gif = Gif.create!(url: "https://giphy.com/embed/Pch8FiF08bc1G",
                        category: "nerd")
  end
  scenario "can have a URL and a category" do

    expect(@gif.url).to eq("https://giphy.com/embed/Pch8FiF08bc1G")
    expect(@gif.category).to eq("nerd")
  end

  scenario "must have url and category" do
    invalid_gif = Gif.create(url:"", category:"")

    expect(invalid_gif).to_not be_valid
  end
end
