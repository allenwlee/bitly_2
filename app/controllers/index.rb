get '/' do
  # let user create new short URL, display a list of shortened URLs
end

post '/urls' do
  @short_url = Url.new(short_url: create_short_url, long_url: params[:long_url])
  if @long_url.valid?
    @long_url 
    erb :index
  else
    erb :invalid
  end
end

# e.g., /q6bda
get '/:short_url' do
  # redirect to appropriate "long" URL
end