class RecordController < ApplicationController

  def find
    @books=Book.find([2,5,10])
    render 'hello/list'
  end

end
