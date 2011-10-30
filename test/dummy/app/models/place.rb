class Place
  attr_accessor :name, :city
  
  def initialize(params)
    @name = params[:name]
    @city = 'Hamburg'
  end
  
end
