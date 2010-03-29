class MongoDBConnectionFailure < RuntimeError; end

module MongoDbInitializer
  def self.registered(app)
    app.configure :development do
      #MongoMapper.connection = Mongo::Connection.new('localhost')
      #MongoMapper.database = 'your_dev_db_here'
    end

    app.configure :production do
      #MongoMapper.connection = Mongo::Connection.new('localhost')
      #MongoMapper.database = 'your_production_db_here'
    end

    app.configure :test do
      #MongoMapper.connection = Mongo::Connection.new('localhost')
      #MongoMapper.database = 'your_test_db_here'
    end
  end
end
