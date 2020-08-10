require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  # [...]

  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Je suis sur google sans etre sur google hihi"
    click_on "Ask"
    take_screenshot

    assert_text "I don't care, get dressed and go to work!"

  end
end
