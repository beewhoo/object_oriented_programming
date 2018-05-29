class PaperBoy
  def initialize
    @name = 'Bibek'
    @experience = 0
    @earnings = 0
  end

  def quota
  return @experience * 0.5 + 50
  end

    def deliver(start_address, end_address)
      totalhouses = end_address - start_address
      if totalhouses == quota
        @earnings = quota * 0.25
      elsif totalhouses > quota
        @earnings = (totalhouses - quota) * 0.50 + (quota * 0.25)
      else
        @earnings = @earnings - 2

  end
  @experience += totalhouses
end



  def report
    "I'm #{@name}, I've delievered #{@experience} papers and I've earned #{@earnings}. "
  end

  def experience
    return @experience
  end

end

bibek = PaperBoy.new
bibek.deliver(1, 51)
p bibek

p bibek.experience

p bibek.report
