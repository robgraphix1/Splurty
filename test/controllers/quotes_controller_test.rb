require 'test_helper'

class QuotesControllerTest < ActionController::TestCase
   test "quotes show page" do
     quote = Quote.create(:author => 'Rob Perez', :saying => 'Yiya boyeee.')
     get :show, :id => quote.id
     assert_response :success
   end

   test "quote show page, not found" do
   	get :show, :id => 'OMG'
   	assert_response :not_found
   end
end
