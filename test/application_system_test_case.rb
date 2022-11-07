# frozen_string_literal: true

require 'test_helper'

# test helper methods
class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  # driven_by :selenium, using: :chrome, screen_size: [1400, 1400]
  driven_by :headless_chrome # Update this line
end
