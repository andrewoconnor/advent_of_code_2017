
# --- Day 1: Inverse Captcha ---

class Part1
  attr_reader :digits

  def initialize(num)
    @digits = num.digits
  end

  def solution
    digits.cycle.each_cons(2).with_index.reduce(0) do |t, ((x, y), i)|
      break(t) if i == digits.size
      x == y ? t + x : t
    end
  end
end
