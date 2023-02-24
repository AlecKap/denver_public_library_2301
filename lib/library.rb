class Library
  attr_reader :name, :books, :authors
  def initialize(library_info)
    @name = library_info[:name]
    @books = []
    @authors = []
  end

  def add_author(author)
    @authors << author
  end

  def publication_time_frame_for(author)
    author_details = {
      start: author.books.first.publication_year,
      end: author.books.last.publication_year
    }
    # author_details
  end
end
