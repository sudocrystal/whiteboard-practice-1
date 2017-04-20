def print_array(a)
  str = ""
  # loop through all the elements and add each to a string
  a.length.times do |i|
    str += "#{a[i]}, "
  end
  # remove the last ", " and add brackets around constructed string
  return "[#{str[0..-3]}]"
end

def stretch(a)
  aa = []
  # loop through the array
  a.each do |num|
    # first value is decimal division and round up answer (handles the odd elements)
    aa << (num/2.0).ceil
    # second value is always a straight divide (integer division)
    aa << num/2
  end
  return aa
end

def numUnique(a)
  #create a hash: key=element, value=count
  count = {}
  # loop through array, if new element, adds as a count of 1, otherwise add to count
  a.each do |num|
    if count[num]
      count[num] += 1
    else
      count[num] = 1
    end
  end
  #return the number of key/value pairings (indicates unique keys)
  return count.length
end

def numUnique2(a)
  return 0 if a.length == 0
  count = 1
  # loops through all elements (except the last)
  len = a.length - 1
  (0...len).each do |i|
    # if the element doesn't match the following then count a new unique number
    if a[i] != a[i+1]
      count += 1
    end
  end
  return count
end
