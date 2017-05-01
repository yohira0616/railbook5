class RecordController < ApplicationController

  def find
    @books=Book.find([2, 5, 10])
    render 'hello/list'
  end

  def find_by
    @book= Book.find_by(publish: '技術評論社')
    render 'books/show'
  end

  def where
    @books=Book.where(publish: '技術評論社')
    render 'hello/list'
  end

  def ph1
    @books=Book.where('publish = :publish AND price >= :price',
        publish: params[:publish], price: params[:price])
    render 'hello/list'
  end

  def not
    @books=Book.where.not(isbn: params[:id])
    render 'books/index'
  end

  def where_or
    @books=Book.where(publish: '技術評論社').or(Book.where('price>2000'))
    render 'hello/list'
  end

  def order
    @books=Book.where(publish: '技術評論社').order(published: :desc)
    render 'hello/list'
  end

  def reorder
    @books=Book.order(:publish).reorder(:price)
    render 'books/index'
  end

end
