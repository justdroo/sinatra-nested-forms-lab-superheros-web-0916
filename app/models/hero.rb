class Hero
  @@all = []
  attr_accessor :name, :power, :bio

  def initialize(params)
    @name = params[:team][:members][Hero.all.count][:name]
    @power = params[:team][:members][Hero.all.count][:power]
    @bio = params[:team][:members][Hero.all.count][:bio]
    @@all << self
  end

  def self.all
    @@all
  end
end
