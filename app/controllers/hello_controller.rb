class HelloController < ApplicationController

  def index
    render plain: 'Hello,World!'
  end

  def view
    @msg='Hello,Slim!'
  end

  def list
    @books=Book.all
  end

  def app_var
    render plain: MY_APP['logo']['source']
  end
end
