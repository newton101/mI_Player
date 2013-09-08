require 'spec_helper'

describe SongsController do

  it 'should get index' do
    get :index
    response.status.should eq 200
  end

  it 'should get upload' do
    get :upload
    response.status.should eq 200
  end

  it 'should get do_upload' do
    get :do_upload
    response.status.should eq 200
  end

   it 'should get downloads' do
    get :downloads
    response.status.should eq 200
  end

   it 'should get buckets' do
    get :buckets
    response.status.should eq 200
  end

   it 'should get delete' do
    get :delete
    response.status.should eq 200
  end
end
