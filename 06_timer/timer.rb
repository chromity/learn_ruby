class Timer
  attr_accessor :seconds, :hours, :minutes

  def initialize
    @seconds = 0
    @minutes = 0
    @hours = 0
  end

  def time_string
    process_time
    "#{padded(@hours)}:#{padded(@minutes)}:#{padded(@seconds)}"
  end

  def process_time
    if @seconds > 59
      @minutes = @seconds / 60
      @seconds = @seconds % 60
    end

    if @minutes > 59
      @hours = @minutes / 60
      @minutes = @minutes % 60
    end

    @seconds, @minutes, @hours = 0, 0, 0 if @hours > 23
  end

  def padded number
    if number < 10
      "0#{number}"
    else
      number
    end
  end

  private :padded, :process_time
end
