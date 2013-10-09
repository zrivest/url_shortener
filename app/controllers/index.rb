get '/' do
  @all_urls = Url.all
  erb :index
end


#----POST----#

post '/urls' do
  #create a new instance of url
  p params
  @original_link = params[:original_link]
  p @shortened_link = Url.link_generator# URL method to shorten link (should return shortened bit))

  @new_url_set = Url.new
  @new_url_set.original_link = @original_link
  @new_url_set.shortened_link = @shortened_link
  @new_url_set.click_count = 0
  @new_url_set.save


  erb :urls   
end

get '/:shortened_url' do 
  @url_search = Url.find_by_shortened_link(params[:shortened_url])
  p @url_search.click_count += 1
  @url_search.save
  redirect "http://#{@url_search.original_link}"
  # find link 
  # increment click counter 
  # save to the db 
  # redirect to original link 
end
