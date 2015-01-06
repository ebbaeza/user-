class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def show 
    @bio = Bio.find_by_id(params['id'])
     render 'show'   
  end
  
  def new
  end
  
  def create
    b = Bio.new
    b.biography = params['biography']
    b.name = params['name']
    b.url_image = params['url_image']
    b.save
    redirect_to "/bio/#{ g.id }"
  end

  def update
    @bio = Bio.find_by_id(params['id'])
    b.biography = params['biography']
    b.name = params['name']
    b.url_image = params['url_image']
    b.save
    redirect_to "/bio/#{ g.id }"
end
def destroy
  b = Bio.find_by_id(params['id'])
  b.destroy
end
  end
