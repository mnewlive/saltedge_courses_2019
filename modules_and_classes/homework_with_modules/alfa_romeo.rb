require_relative "car"

class AlfaRomeo < Car
  MARK = "Alfa Romeo"

  def koeff
    divider = @engine_petrol == :diesel ? 2 : 1.5
    super / divider
  end
end
