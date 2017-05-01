class ViewController < ApplicationController
  layout 'product'

  def form_tag
    @book=Book.new
  end

  def form_for
    @book=Book.new
  end

  def field
    @book=Book.new
  end

  def fields
    @user=User.find(1)
  end

  def html5
    @book=Book.new
  end

  def select
    @book=Book.new(publish: '翔泳社')
  end

  def col_select
    @book=Book.new(publish: '技術評論社')
    @books=Book.select(:publish).distinct
  end

  def group_select
    @review=Review.new
    @authors=Author.all
  end

  def dat_select
    @book=Book.find(1)
  end

  def col_radio
    @book=Book.new(publish: '技術評論社')
    @books=Book.select(:publish).distinct
  end

  def adopt
    render layout: 'sub'
  end


end
