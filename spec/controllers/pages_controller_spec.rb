# encoding: UTF-8
require 'spec_helper'

describe PagesController do
  render_views

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end

    it 'should have right title' do
        get 'index'

        response.should have_selector("title",
                  :content => "Штурм Кенигсберга 9 апреля 1945 года")
    end

    it 'should have right h1 tag' do
        get 'index'
        response.should have_selector("h1",:content=>"Штурм Кенигсберга 9 апреля 1945 года")
    end

    it 'should not find photos' do
      get 'index'
      response.should_not have_selector("#top_photos_title",:content=>"Фотохроника штурма")
    end
  end

  describe "GET 'photos'" do
    it "returns http success" do
      get 'photos'
      response.should be_success
    end
  end

  describe "GET 'veterans'" do
    it "returns http success" do
      get 'veterans'
      response.should be_success
    end
  end

end
