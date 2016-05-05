class Projectile
  attr_accessor :tank, :x, :y
  def initialize(tank)
    @tank = tank
    @image = Gosu::Image.new "resources/images/bullet_up.png"
    @phi = tank.phi
    @x = tank.x
    @y = tank.y
    @vel = 4
  end

  def draw
    @image.draw_rot(@x, @y, 1, @phi)
  end

  def move
    if @phi == 0
      @y -= @vel
    elsif @phi == 180
      @y += @vel
    elsif @phi == 90
      @x += @vel
    else
      @x -= @vel
    end
  end

end