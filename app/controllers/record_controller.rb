class RecordController < ApplicationController

  def find
    @books=Book.find([2, 5, 10])
    render 'hello/list'
  end

  def find_by
    @book= Book.find_by(publish: '技術評論社')
    render 'books/show'
  end

end
