class Team
  @@all = []
  attr_accessor :name, :motto

  def initialize(params)
    @name = params[:team][:name]
    @motto = params[:team][:motto]
    @@all << self
  end

  def self.all
    @@all
  end
end
