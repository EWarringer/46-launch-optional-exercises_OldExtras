def average (grades)
  score = grades.inject(:+) / grades.length
  score
end
