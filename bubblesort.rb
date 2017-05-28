# 1. Build a method #bubble_sort that takes an array and returns a sorted array. It must use the bubble sort methodology


def bubble_sort(array)
  sorted=false
  while !sorted
    sorted=true
    for i in 0...((array.length) -1)
      if array[i]>array[i+1]
        array[i],array[i+1]=array[i+1],array[i]
        sorted=false
      end
    end
  end
  return array
end

number = [5,1,7,4,15]

bubble_sort(number)

# 2. Now create a similar method called #bubble_sort_by which sorts an array but accepts a block. The block should take two arguments which represent the two elements currently being compared. Expect that the block's return will be similar to the spaceship operator you learned about before -- if the result of the block is negative, the element on the left is "smaller" than the element on the right. 0 means they are equal. A positive result means the left element is greater. Use this to sort your array.


def bubble_sort_by(array)
  sorted=false
  while !sorted
    sorted=true
    for i in 0...((array.length) -1)
      if yield(array[i], array[i+1]) >0
        array[i],array[i+1]=array[i+1],array[i]
        sorted=false
      end
    end
  end
  return array
end

bubble_sort_by(["hi","hello","hey"]){ |left, right| left.length - right.length }