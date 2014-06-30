require 'sinatra/base'

class FishApp < Sinatra::Base

  def initialize
    super
    @fishes = [
                {:full_name => "Mola Mola",
                   :description => "heaviest known bony fish",
                   :image => "http://www.scubadiveasia.com/blog/wp-content/uploads/2014/02/mola-mola-1.jpg",
                   :water => "salt",
                   :link => "https://en.wikipedia.org/wiki/Mola_mola"} ,
                {:full_name => "Lion Fish",
                   :description => "venomous marine fish",
                   :image => "http://cdn.thedailymeal.com/sites/default/files/imagecache/homepage_promos_image_670/lionfishpromocrop-istockphoto_thinkstock.jpg",
                   :water => "salt",
                    :link => "https://en.wikipedia.org/wiki/Lion_fish"},
                {:full_name => "Tiger Fish",
                    :description => "sharp teeth",
                    :image => "http://www.zambezifishing.com/images/rotating/home/image10.jpg",
                    :water => "salt",
                    :link => "https://en.wikipedia.org/wiki/Tiger_fish"}
    ]

  end


  get "/" do

    erb :root, :locals => {:fishes => @fishes}
  end

  get "/fish/:identifier" do
    index = params[:identifier].to_i
    erb :fish, :locals => {:fish => @fishes[index]}
  end





end



# get "/items/:identifier" do
#   item = params[:identifier]
#   erb :items, :locals => {:item => item}
# end
#
# get "/items/?" do
#   filter = params[:filter]
#   @filtered_items = @items
#
#   @filtered_items = @items.select {|x|x.include?(filter)} unless filter == nil
#
#
#   "<a href='/items/new'>New Items>"
#
#   erb :items
# end