class DemoController < ApplicationController

  layout false
  def index
    render ('index')
  end

  def hello
    @array = [1,2,3,4,5,6]
    @id = params['id']
    @page = params[:page]
    render ('hello')
  end
  def other_hello
    render ('otherhello')
    # redirect_to(:action => 'otherhello')
  end
  def sadek
    redirect_to('https://sadekalshaar.herokuapp.com/')
  end
end
