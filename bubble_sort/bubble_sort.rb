def bubble_sort(array)
  array = array.dup
  sorted = []
  index = 0
  until array.empty? do
    if index == array.length - 1
      sorted.unshift(array.pop)
      index = (index + 1) % array.length if array.length > 0
      next
    end
    if array[index] > array[index + 1]
      array[index], array[index + 1] = array[index + 1], array[index]
    end
    index = (index + 1) % array.length
  end
  sorted
end