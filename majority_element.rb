def majority_element(elements)
  counts = elements.each_with_object(Hash.new(0)) do |element, collector|
    collector[element] += 1
    collector
  end

  result = counts.select do |element, count|
    count > elements.count / 2
  end.keys

  if result.count == 0
    return nil
  elsif result.count == 1
    return result.first
  end

  raise "Multiple elements found!"
end

elements = File.open(ARGV[0]).readlines.first.strip.split(",")
puts majority_element(elements)
