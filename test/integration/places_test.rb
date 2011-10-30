require 'test_helper'

class PlacesTest < ActiveSupport::IntegrationCase
  test "success" do
    visit place_path(:name => 'Mate', :format => 'json')
    assert_match /application\/json/, page.response_headers['Content-Type']

    puts page.body
  end
end
