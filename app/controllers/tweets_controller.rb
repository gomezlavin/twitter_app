class TweetsController < ApplicationController
  def index
    
  end

  def show
    search = params[:search]
    @query = Twitter.search("#{search} -rt", :count => 1, :result_type => "recent").results
  end

  def fetch
  end
end
