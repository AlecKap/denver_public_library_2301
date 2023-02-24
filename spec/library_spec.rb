require 'spec_helper'

RSpec.describe Library do
  before(:each) do
    @library_1 = Library.new({name: "Colordo Public Library"})
    @charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    @alec_kapicak = Author.new({first_name: "Alec", last_name: "Kapicak"})
    @book_1 = @alec_kapicak.write("How To Be An Alec", "september 28, 1993")
    @jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    @villette = @charlotte_bronte.write("Villette", "1853")
  end

  it 'exists' do
    expect(@library_1).to be_a(Library)
  end

  describe 'has attributes' do
    it '#name' do
      expect(@library_1.name).to eq("Colordo Public Library")
    end

    it '#books' do
      expect(@library_1.books).to eq([])
      # expect(@library_1.books.first).to be_a(Book)
    end

    it '#authors' do
      expect(@library_1.authors).to eq([])
    end
  end
  
  describe 'can add authors to library' do
    it '#add_author(author)' do
      @library_1.add_author(@charlotte_bronte)
      @library_1.add_author(@alec_kapicak)
      expect(@library_1.authors.first).to be_a(Author)
      expect(@library_1.authors).to eq([@charlotte_bronte, @alec_kapicak])
      
    end
  end

  describe '#publication_time_frame_for(author)' do
    it 'tells us publication time frame for author' do
      actual = @library_1.publication_time_frame_for(@charlotte_bronte)
      expect(actual).to be_a(Hash)
      expect(actual[:start]).to eq("1847")
      expect(actual[:end]).to eq("1853")
    end
  end
end