require 'spec_helper'

RSpec.describe Author do
  before(:each) do
     @charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
  end

  it 'exists' do 
    expect(@charlotte_bronte).to be_a(Author)

  end

  describe 'has attributes' do
    it '#name' do
      author_name = @charlotte_bronte.name 

      expect(author_name).to eq("Charlotte Bronte")
    end

    it '#books' do
      actual = @charlotte_bronte.books

      expect(actual).to eq([])
    end
  end

  describe '#write' do
    before(:each) do
      @jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
      @villette = @charlotte_bronte.write("Villette", "1853")
    end
    it 'can write a new book' do
      expect(@jane_eyre).to be_a(Book)
    end

    it 'converts book info' do
      expect(@jane_eyre.class).to be(Book)
      expect(@jane_eyre.title).to eq("Jane Eyre")
    end

    it 'can write additional books' do
      
      expect(@charlotte_bronte.books).to eq([@jane_eyre, @villette])
    end
  end
end
