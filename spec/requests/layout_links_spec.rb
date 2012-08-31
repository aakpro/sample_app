require 'spec_helper'

describe "LayoutLinks" do
  it "should have Home page at '/'" do
    get '/'
    response.should have_selector('title',:content=>"home")
  end

  it "should have Contact page at '/contact'" do
    get '/contact'
    response.should have_selector('title',:content=>"contact")
  end

  it "should have About page at '/about'" do
    get '/about'
    response.should have_selector('title',:content=>"about")
  end

  it "should have Help page at '/help'" do
    get '/help'
    response.should have_selector('title',:content=>"help")
  end

end
