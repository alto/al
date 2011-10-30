require 'test_helper'

class PlacesTest < ActionController::IntegrationTest
  include AssertJson
  
  test "success" do
    get "/places/Mate"
    assert_match /application\/json/, @response.content_type

    assert_json @response.body do
      has 'place' do
        has 'name', 'Mate'
        has 'city', 'Hamburg'
      end
    end
  end
end
