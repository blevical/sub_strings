dictionary = [
    "hello",
    "program",
    "developer",
    "submarine",
    "alphabet",
    "banana",
    "wizard",
    "castle",
    "thunder",
    "sandwich",
    "butterfly",
    "universe",
    "hell",
    "gram",
    "marine",
    "cast",
    "sand",
    "fly",
    "verse",
    "ban",
    "alpha",
    "butter",
    "below",
]

def substring(string, dictionary)
    string.downcase!
    string_array = string.split
    match_array = []
    count_array = []

    dictionary.each do |i|
        if string_array.any? { |s| s.include?(i) }
            match_array.push(i)
        end
        count = string_array.count {|s| s.include?(i)}
        count_array.push(count)
        count_array.delete(0)
    end
    result = match_array.zip(count_array).to_h

    puts "these are the substrings that match from the dictionary that match string #{match_array}"
    puts "these matches occur this many times #{count_array}"
    puts "the final hash is #{result}"
end

substring("below", dictionary)
substring("Can you please create a program that shows the amount of bananas in a given universe?", dictionary)
