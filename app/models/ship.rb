class Ship
  attr_accessor :name, :type, :booty

  PIRATES = []

  def initialize(params)
    @name = params[:name]
    @type = params[:type]
    @booty = params[:booty]
    PIRATES << self
  end

  def self.all
    PIRATES
  end
end