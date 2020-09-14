defmodule ElixirSdetExerciseTest do
  # Import helpers
  use Hound.Helpers
  use ExUnit.Case, async: true

  # Start hound session and destroy when tests are run
  hound_session()

  @baseUrl "https://www.facebook.com"

  test "click sign up with empty inputs shows validation" do
    navigate_to @baseUrl
    createNewAccountBtn = find_element(:id, "u_0_2")
    click(createNewAccountBtn)
    signUpBtn = find_element(:xpath, "//*[@id='u_1_s']")
    click(signUpBtn)

    @lastNameFieldErrorIcon = find_element(:xpath, "//*[@id='u_1_c']/i[1]")
    #lastNameIconFoundBool = element_displayed?(lastNameFieldErrorIcon)
    
    assert(element_displayed?(@lastNameFieldErrorIcon))   
    
    catch kind, error ->
      take_screenshot()

    assert(element_displayed?(@lastNameFieldErrorIcon)) 

  end

  test "click sign up with empty inputs shows validation 2" do
    navigate_to @baseUrl
    createNewAccountBtn = find_element(:id, "u_0_2")
    click(createNewAccountBtn)
    signUpBtn = find_element(:xpath, "//*[@id='u_1_s']")
    click(signUpBtn)

    @lastNameFieldErrorIcon = find_element(:xpath, "//*[@id='u_1_c']/i[1]")
    #lastNameIconFoundBool = element_displayed?(lastNameFieldErrorIcon)
    
    assert(element_displayed?(@lastNameFieldErrorIcon))   
    
    catch kind, error ->
      take_screenshot()

    assert(element_displayed?(@lastNameFieldErrorIcon)) 

  end


end
