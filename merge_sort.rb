require 'pry'

def merge_sort(list)
  if list.size < 2
    return list
  else
    left = []
    right = []

    list.each_with_index do |el, idx|
      if idx < list.size / 2
        left << el
      else
        right << el
      end
    end

    left = merge_sort(left)
    right = merge_sort(right)

    return merge(left, right)
  end
end

def merge(left, right)
  result = []
  while left.any? && right.any?
    if left.first <= right.first
      result << left.first
      left = left.reject { |el| el == left.first }
    else
      result << right.first
      right = right.reject { |el| el == right.first }
    end
  end

  while left.any?
    result << left.first
    left = left.reject { |el| el == left.first }
  end

  while right.any?
    result << right.first
    right = right.reject { |el| el == right.first }
  end

  return result
end

p merge_sort([4, 8, 6, 2, 1, 7, 5, 3])
