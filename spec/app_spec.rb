require File.dirname(__FILE__) + '/spec_helper'

describe "My App" do
  include Rack::Test::Methods

  def app
    @app ||= App
  end

  it "should respond to /" do
    get '/'
    last_response.should be_ok
  end
end