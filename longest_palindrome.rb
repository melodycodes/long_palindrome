def longest_palindrome(str)
  pal = ""
  cleanstr = str.downcase.gsub(/[^a-z]/,'') # remove non-letters and downcase
  # Outer Loop- starting substring index
  for i in 0..(cleanstr.size - 1)
    # Inner Loop- ending substring index
    for j in (cleanstr.size - 1).downto(i)
      substr = cleanstr.slice(i..j)
      break if substr.size <= pal.size # break if smaller than current longest palindrome
      pal = substr if substr == substr.reverse
    end
  end

  # return longest palindrome
  pal
end