class ViewController < ApplicationController

  def form_tag
    @book=Book.new
  end

  def form_for
    @book=Book.new
  end

  def field
    @book=Book.new
  end
end
