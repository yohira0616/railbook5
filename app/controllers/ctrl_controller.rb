class CtrlController < ApplicationController

  def para
    render plain: 'idパラメータ:'+params[:id]
  end

  def para_array
    render plain: 'categoryパラメータ:' +params[:category].inspect
  end
end
