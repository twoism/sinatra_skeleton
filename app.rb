class App < Sinatra::Base  
  set :environment, RACK_ENV.to_sym if defined?(RACK_ENV)
  set :logging, true
  set :public,  'public'
  # Requires the initializer modules which configure specific components

  Dir[File.dirname(__FILE__) + '/initializers/*.rb'].each do |file|
    require file
    file_class = File.basename(file, '.rb').camelize
    register "#{file_class}Initializer".constantize
  end

  def self.file_loading_paths
    APP_DIRS.collect { |dir| "#{dir}/*.rb" }
  end
  
  file_loading_paths.each { |load_path| Dir[load_path].each { |file| require file } }
end
