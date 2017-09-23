class Temperature

  def initialize(temp = {})
    @temp = temp
  end

  def to_fahrenheit
    temp = @temp.values.first
    temp_unit = @temp.keys.first
    if temp_unit != :f
      new_temp = (temp * 9.0 / 5.0) + 32.0
    else
      temp
    end
  end

  def to_celsius
    temp = @temp.values.first
    temp_unit = @temp.keys.first
    if temp_unit != :c
      new_temp = (temp - 32.0) * (5/9.0)
    else
      temp
    end
  end

end
