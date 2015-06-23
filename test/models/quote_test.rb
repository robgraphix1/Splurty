require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
  test "unique_tag"  do
  	quote = Quote.create(:author => 'Rob Perez', :saying => 'Yiya boyeee.')	
  	expected = 'RP#' + quote.id.to_s
  	actual = quote.unique_tag
  	assert_equal expected, actual
  end
  	
end
