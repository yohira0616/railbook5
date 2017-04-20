class ViewController < ApplicationController

  def form_tag
    @book=Book.new
  end
end
