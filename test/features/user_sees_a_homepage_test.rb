require './test/test_helper'

class HomepageTest < CapybaraTestCase

  def test_user_can_see_the_homepage
    visit '/'

    # require 'pry'; binding.pry
    assert page.has_content?("Welcome!")
    assert_equal 200, page.status_code
  end

  def test_user_sees_404_page_not_found_error_for_page_that_dne
    visit '/other'

    assert page.has_content?("Page not found.")
    assert_equal 404, page.status_code
  end

  def test_user_sees_about_page
    visit '/about'

    # save_and_open_page
    assert page.has_content?("Here's some stuff to know.")
    assert_equal 200, page.status_code
  end

end
