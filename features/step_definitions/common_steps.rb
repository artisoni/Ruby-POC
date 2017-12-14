require 'selenium/webdriver'
require 'selenium/webdriver/chrome'
require 'cucumber'

class CommonSteps
  Selenium::WebDriver::Element $Webelement

  Given(/^The name of the Browser as "([^"]*)", "https:\/\/www\.exercise1\.com\/values"$/) do |arg1, arg2|
    driver = Selenium::WebDriver.for :"#{arg1}"
    driver.navigate.to "#{arg2}"
  end


   When(/^Currency Value for V1 is "([^"]*)"$/) do |arg1|
    $Webelement = driver.find_element(:id, 'txt_val_1').send_keys("#{arg1}")
   end

   def getCurrentTextValue
    lenght = driver.text $Webelement
    return lenght
   end

   Then(/^Verify this Value is Greather Than Zero$/) do
    lenght = getCurrentTextValue
      if lenght>0? true:false
      end
   end


 Then(/^Verify this Value is Formatted as Currency$/) do
   true
 end


 When(/^Currency Value for V2 is "([^"]*)"$/) do |arg1|
  $Webelement = driver.find_element(:id, 'txt_val_2').send_keys("#{arg1}")
 end

 When(/^Currency Value for V3 is "([^"]*)"$/) do |arg1|
  $Webelement = driver.find_element(:id, 'txt_val_3').send_keys("#{arg1}")
 end

 When(/^Currency Value for V4 is "([^"]*)"$/) do |arg1|
  $Webelement = driver.find_element(:id, 'txt_val_4').send_keys("#{arg1}")
 end

 When(/^Currency Value for V5 is "([^"]*)"$/) do |arg1|
  $Webelement = driver.find_element(:id, 'txt_val_5').send_keys("#{arg1}")
 end

 When(/^Currency Value for V6 is "([^"]*)"$/) do |arg1|
  $Webelement = driver.find_element(:id, 'txt_val_6').send_keys("#{arg1}")
 end

 Then(/^Verify the Sum is "([^"]*)"$/) do |arg|
  $Webelement = driver.find_element(:id, 'txt_ttl_val').send_keys("#{arg1}")
 end
end