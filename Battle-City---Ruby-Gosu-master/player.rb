require_relative 'projectile.rb'

class Player

  attr_accessor :x, :y, :phi
  def initialize
    @image = Gosu::Image.new 'resources/images/tank_player1_up_c0_t1.png'
    @x = @y = @phi = 0.0
    @vel = 2
    @score = 0
    @state = 1
  end

  def spawn(x, y, phi)
    @x, @y, @phi = x, y, phi
  end

  def left
    @phi = 270
  end

  def right
    @phi = 90
  end

  def up
    @phi = 0
  end

  def down
    @phi = 180
  end

  def move_horizontal
    if @phi == 90
      @x += @vel
    else
      @x -= @vel
    end
  end

  def move_vertical
    if @phi == 0
      @y -= @vel
    else
      @y += @vel
    end
  end

  def draw
    @image.draw_rot(@x, @y, 1, @phi)
  end
end