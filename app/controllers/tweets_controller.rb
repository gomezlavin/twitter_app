class TweetsController < ApplicationController
  def index
    
  end

  def search
    search_query = params[:search]
    query = Twitter.search("#{search_query} -rt", :count => 10, :result_type => "recent").results

    respond_to do |format|
      format.json {render :json => query}
    end
  end

end



