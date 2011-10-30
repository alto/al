class Place
  attr_accessor :name
  
  def initialize(params)
    @name = params[:name]
  end
  
end
