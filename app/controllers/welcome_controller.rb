class WelcomeController < ApplicationController
  def index
    @greeting = "Welcome to my first Rails application"
    @name = "#{params[:name]}"
  end

  def lorem
    @type = "#{params[:type]}"
    @num = "#{params[:num].to_i}"
    @output = ""

    if @type == "standard"
      @output = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    elsif @type == "hipster"
      @output = "Intelligentsia fixie pop-up YOLO. Selfies pug tousled biodiesel chia. DIY 8-bit PBR , keytar banh mi church-key narwhal fap yr pug gluten-free drinking vinegar squid. Fap vinyl sustainable taxidermy before they sold out. Twee blog Vice Truffaut, 90s meh Thundercats swag. Beard Pitchfork stumptown leggings, occupy put a bird on it gluten-free master cleanse Carles tilde chillwave kale chips squid sriracha bitters. Letterpress squid synth Brooklyn direct trade, banjo photo booth mumblecore before they sold out normcore Intelligentsia dreamcatcher."
    elsif @type == "samuel"
      @output = "Look, just because I don't be givin' no man a foot massage don't make it right for Marsellus to throw Antwone into a glass motherfuckin' house, fuckin' up the way the nigger talks. Motherfucker do that shit to me, he better paralyze my ass, 'cause I'll kill the motherfucker, know what I'm sayin'?"
    elsif @type == "veggie"
      @output = "Turnip greens yarrow ricebean rutabaga endive cauliflower sea lettuce kohlrabi amaranth water spinach avocado daikon napa cabbage asparagus winter purslane kale. Celery potato scallion desert raisin horseradish spinach carrot soko. Lotus root water spinach fennel kombu maize bamboo shoot green bean swiss chard seakale pumpkin onion chickpea gram corn pea. Brussels sprout coriander water chestnut gourd swiss chard wakame kohlrabi beetroot carrot watercress. Corn amaranth salsify bunya nuts nori azuki bean chickweed potato bell pepper artichoke."
    else
      render plain: "Expecting 'standard', 'hipster', 'samuel', or 'veggie'."
    end
  end

end
