class Change
  # Instead of defining available_coins as a class_variable, 
  # I am providing additional flexibility for user to use different currencies
  def self.change_for(amount, available_coins)
    validation_error = "#{amount} is not a valid amount, will accept only positive integers greater than 0"
    return validation_error unless validate?(amount)

    @result = {}
    @available_coins = available_coins
    @denominations = @available_coins.keys.sort_by { |amount| -amount }
    get_change(amount)
    @result.delete_if { |key, value| value.zero? }
  end

  # Recursive function
  def self.get_change(amount)
    denomination = @denominations.shift
    @result[@available_coins[denomination]] = amount / denomination
    return unless @denominations.any?

    amount %= denomination
    get_change(amount)
  end

  def self.validate?(amount)
    integer?(amount) && amount > 0
  end

  def self.integer?(amount)
    amount.to_s =~ /^[+]?\d+$/
  end
end
