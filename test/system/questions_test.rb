require 'application_system_test_case'

class QuestionsTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit questions_url
  #
  #   assert_selector "h1", text: "Questions"
  # end

  test 'visiting /ask renders the form' do
    visit ask_url
    assert_selector 'label', text: 'Ask your coach anything'
  end
  test 'saying Hello yields a grumpy response from the coach' do
    visit ask_url
    fill_in 'question', with: 'Hello'
    click_on 'Ask'

    assert_text "I don't care, get dressed and go to work!"
  end
  test 'saying I am going to work right now! ' do
    visit ask_url
    fill_in 'question', with: 'I am going to work right now!'
    click_on 'Ask'
    assert_text 'Great!'
  end
  test 'saying what should i do ? ' do
    visit ask_url
    fill_in 'question', with: 'what should i do ?'
    click_on 'Ask'
    assert_text 'Silly question, get dressed and go to work!'
  end
  test 'saying WHAT SHOULD I DO? all capital letters ' do
    visit ask_url
    fill_in 'question', with: 'WHAT SHOULD I DO?'
    click_on 'Ask'
    assert_text 'I can feel your motivation! Silly question, get dressed and go to work!'
    take_screenshot
  end
end
