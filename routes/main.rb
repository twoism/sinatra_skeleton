routes do
  get '/' do
    #"<strong>Hello World</strong> (checkout <em>app/routes/main.rb</em> to change this response)"
    haml :index
  end
end
