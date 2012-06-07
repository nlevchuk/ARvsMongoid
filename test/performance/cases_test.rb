require 'test_helper'
require 'rails/performance_test_help'

class CasesTest < ActionDispatch::PerformanceTest
  # Refer to the documentation for all available options
  self.profile_options = { :runs => 1, :metrics => [:wall_time, :memory],
                           :output => 'tmp/performance', :formats => [:flat] }

  def test_homepage
    Review.first.comments
  end
end
