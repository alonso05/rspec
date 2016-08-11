require 'rspec'
require 'selenium-webdriver'

describe 'My google search' do
  
  #each or all
  before(:all) do
    #driver
    @driver = Selenium::WebDriver.for :firefox
    @driver.get "http://www.google.com"
  end
  
  it 'should get print search title' do
    @driver.find_element(:name, 'q').send_keys("ruby tutorial")
    sleep(1)
    @driver.find_element(:name, 'btnG').click
    sleep(1)
    puts @driver.title
    #@driver.title.expect == "ruby tutorial - Google Search"
    expect(@driver.title).to eq("ruby tutorial - Google Search")
  end
  
  it 'should display results stats' do
    puts @driver.find_element(:id, 'resultStats').text
  end
  
  it 'should go back' do
    @driver.navigate.back
    sleep(1)
    puts @driver.title
  end
  
  after(:all) do
    @driver.quit
  end

end