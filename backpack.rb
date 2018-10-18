class Backpack
  def initialize(attributes)
    @attributes = attributes # a hash containing day_of_week and weather keys
    @items = []
    prepare
  end

  def items
    @items
  end

  def prepare
    # Ensure appropriate clothing is added to backpack
    ensure_appropriate_clothing
    # Ensure gym shoes are added to backpack if it's a gym day
    ensure_gym_shoes_added
    # Bring a packed lunch on all weekdays
    bring_packed_lunch_on_weekdays
  end

  def ensure_appropriate_clothing
    wheather = @attributes[:weather]
    day_of_week = @attributes[:day_of_week]
    if wheather == 'rainy'
      @items << 'pants'
      @items << 'shirt'
      @items << 'umbrella'
    elsif wheather == 'cold'
      @items << 'pants'
      @items << 'shirt'
      @items << 'jacket'
    else
      @items << 'pants'
      @items << 'shirt'
    end
  end

  def ensure_gym_shoes_added
    wheather = @attributes[:weather]
    day_of_week = @attributes[:day_of_week]
    if day_of_week == 'monday' || day_of_week == 'thursday'
      @items << 'gym shoes'
    end
  end

  def bring_packed_lunch_on_weekdays
    wheather = @attributes[:weather]
    day_of_week = @attributes[:day_of_week]
    if day_of_week != 'saturday' && day_of_week != 'sunday'
      @items << 'packed lunch'
    elsif false
      @items << 'snacks'
    end
  end

  # Prints a summary packing list for Melinda's backpack
  def list_of_items
    output = []
    output << "Melinda, here's your packing list!"
    output << "Day: #{@attributes[:day_of_week]}, Weather: #{@attributes[:weather]}"
    output << ""

    @items.each do |item|
      output << "- #{item}"
    end
    output.join("\n")
  end

end
