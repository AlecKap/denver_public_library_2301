require 'spec_helper'

RSpec.describe Book do
  before(:each) do
    @book = Book.new({author_first_name: "Harper", 
                    author_last_name: "Lee", 
                    title: "To Kill a Mockingbird", 
                    publication_date: "July 11, 1960"})
  end

  it 'exists' do 
    expect(@book).to be_a(Book)
  end

  describe 'has attributes' do
    it '#title' do
       book_title  = @book.title

      expect(book_title).to eq("To Kill a Mockingbird")
    end

    it "#author" do 
      book_author = @book.author

      expect(book_author).to eq("Harper Lee")
    end

    it "#publication_year" do 
      book_publication_year = @book.publication_year

      expect(book_publication_year).to eq("1960")
    end
  end
end