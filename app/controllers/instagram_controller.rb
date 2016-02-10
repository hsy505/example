class InstagramController < ApplicationController
  def index
    require 'net/http'
    res = Net::HTTP.get(URI('https://api.instagram.com/v1/users/self/media/recent/?access_token=23782837.a423953.244d7c44ebe245a7a794a1031a191493&count=20'))
    body = JSON.parse(res)
    @images = body['data'].map{|d| d['images']['standard_resolution']['url']}
  end
end
