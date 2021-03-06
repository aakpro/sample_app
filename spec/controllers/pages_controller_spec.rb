require 'spec_helper'

describe PagesController do

  render_views

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
    it "should have the right title" do
      get 'home'
      response.should have_selector("title", :content => "home")
    end
     it "should not have blank bodies home" do
       get 'home'
       response.body.should_not =~ /<body>\s*<\/body>/
     end
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end
    it "should have the right title" do
      get 'contact'
      response.should have_selector("title", :content => "contact")
    end
    it "should not have blank bodies contact" do
       get 'contact'
       response.body.should_not =~ /<body>\s*<\/body>/
     end
  end

  describe "GET 'about'" do
    it "returns http success" do
      get 'about'
      response.should be_success
    end
    it "should have the right title" do
      get 'about'
      response.should have_selector("title", :content => "about")
    end
    it "should not have blank bodies about" do
       get 'about'
       response.body.should_not =~ /<body>\s*<\/body>/
    end
  end
  
  
  describe "GET 'help'" do
    it "returns http success" do
      get 'help'
      response.should be_success
    end
    it "should have the right title" do
      get 'help'
      response.should have_selector("title", :content => "help")
    end
    it "should not have blank bodies about" do
       get 'help'
       response.body.should_not =~ /<body>\s*<\/body>/
    end
  end

end
