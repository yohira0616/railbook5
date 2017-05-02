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

  def select
    @books=Book.where('price >=2000').select(:title, :price)
    render 'hello/list'
  end

  def select2
    @pubs=Book.select(:publish).distinct.order(:publish)
  end

  def last
    @book=Book.order(published: :desc).last
    render 'books/show'
  end

  def groupby
    @books=Book.select('publish,AVG(price) AS avg_price').group(:publish)
  end

  def havingby
    @books=Book.select('publish,AVG(price) AS avg_price').group(:publish).having('AVG(price) >=?', 2500)
    render 'record/groupby'
  end

  def where2
    @books=Book.all
    @book=where!(publish: '技術評論社')
    @books.order!(:published)
    render 'books/index'
  end

  def unscope
    @books=Book.where(publish: '技術評論社').order(:price)
               .select(:isbn, :title).unscope(:where, :select)
    render 'books/index'
  end

  def unscope2
    @books=Book.where(publish: '技術評論社', dl: true).order(:price)
               .unscope(:where, :dl)
    render 'books/index'
  end

  def none
    case params[:id]
      when 'all'
        @books= Book.all
      when 'new'
        @books= Book.order('published DESC').limit(5)
      when 'cheap'
        @books= Book.order(:price).limit(5)
      else
        @books= Book.none

    end
    render 'books/index'
  end

  def pluck
    render plain: Book.where(publish: '技術評論社').pluck(:title, :price)
  end

  def exists
    flag=Book.where(publish: '新評論社').exists?
    render plain: "存在するか？: #{flag}"
  end

end
