module DateFormat

  def date
    arr = [].push(Time.new)
    time = arr.join('').slice!(0, 10).tr!('-', '/')
    order(time)
  end

  def order(time)
    ordered = [].push(time.slice!(8, 10))
    .push(time.slice!(4, 5)).push(time.slice!(0, 4))
    ordered.join('')
  end

end
