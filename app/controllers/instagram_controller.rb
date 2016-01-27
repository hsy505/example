class InstagramController < ApplicationController
  def index
    require 'net/http'
    res = Net::HTTP.get(URI('https://api.instagram.com/v1/users/self/media/recent?access_token=23782837.a423953.00520dd971f94949b0394a859c96fa59&count=20'))
    body = JSON.parse(res)
    @images = body['data'].map{|d| d['images']['standard_resolution']['url']}
    # @images = ['https://dn-geekpark-new.qbox.me/uploads/image/file/33/13/3313581055a0a755f14a13da3d3816fb.png?imageView2/2/w/302']
  end

  def data
{
    "data" => [{
        "images" => {
            "standard_resolution" => {
                "url" => "http://distillery.s3.amazonaws.com/media/2011/02/03/efc502667a554329b52d9a6bab35b24a_7.jpg"
            }
        }
    }]
}
  end
end
