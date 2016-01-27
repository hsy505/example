class InstagramController < ApplicationController
  def index
    require 'net/http'
    res = Net::HTTP.get(URI('https://api.instagram.com/v1/users/self/media/recent?access_token=23782837.a423953.00520dd971f94949b0394a859c96fa59&count=20'))
    body = JSON.parse(res)
    @images = body['data'].map{|d| d['images']['standard_resolution']['url']}
  end
end
