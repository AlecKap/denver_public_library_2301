class Book
  attr_reader :title

  def initialize(book_info)
    @author_first_name = book_info[:author_first_name]
    @author_last_name = book_info[:author_last_name]
    @title = book_info[:title]
    @publication_date = book_info[:publication_date]
  end

  def author
    "#{@author_first_name} #{@author_last_name}"
  end

  def publication_year
    if @publication_date.length > 4
      date_array = @publication_date.split(" ")
      date_array[2]
    else
      @publication_date
    end
  end
end