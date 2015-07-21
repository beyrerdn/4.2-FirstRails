class WelcomeController < ApplicationController
  def index
    @greeting = "Welcome to my first Rails application"
    @name = "#{params[:name]}"
  end

  def lorem
    @type = params[:type]
    @num = params[:num]
    @klass = @type.classify.constantize

    # if %w(hipster samuel standard veggie).include?(@type) == false
    #   "Please provide 'hipster', 'samuel', 'standard', or 'veggie'."
    # end

    @output = []
    @num.to_i.times{@output << @klass.output.sample}

  end

end
