class Integer
  def factorial(n)
    return 1 if self <= 1

    n.downto(1).inject(:*)
  end

end
