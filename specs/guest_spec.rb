require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../guest.rb")

class GuestTest < MiniTest::Test

def setup
  @guest = Guest.new("Mac")
end


def test_guest_has_name
  assert_equal("Mac", @guest.name)
end


 end
