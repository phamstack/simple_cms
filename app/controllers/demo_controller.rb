class DemoController < ApplicationController
  # index is an action
  layout false
  
  def index
    render('index')
  end

  def hello
    @array = [3,5,7,5,3]
    @id = params[:id]
    @page = params[:page]

    render('hello')
  end

  def cat
    render plain: "catnip"
  end

  def subjects
    @subjects = Subject.all
  end
  
end
