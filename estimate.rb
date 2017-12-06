class Estimate

  # Return distance from origin of point (x, y), assuming radius of 1
  def distance_origin(x, y)
    sum = x ** 2 + y ** 2
    return Math.sqrt(sum)
  end

  def estimate_pi(times)
    pi = estimate_pi_r(times, 0, 0, 0)

    puts "Estimated value of pi: #{pi}"
  end

  def estimate_pi_r(times, count, inside, total)

    if count < times
      # generate point
      x = rand()
      y = rand()
      dist = distance_origin(x,y)

      if dist <= 1
        estimate_pi_r(times, count+1, inside+1, total+1)
      else
        estimate_pi_r(times, count+1, inside, total+1)
      end
    else
      return 4*(inside.to_f/total.to_f)
    end

  end

end

myEst = Estimate.new
myEst.estimate_pi(6000)