### GOAL:
# Find the first and last integers of each line of a provided text file
# Combine these integers to form a two-digit number for each line
# Add all of the two-digit numbers together

### STEP 1: Read the provided text

# Attempt 1: tried using net/http library built into Ruby to analyse the data in the provided url
# Found that this won't work as the string provided is unique for each user and we aren't able to log in using this method

# - we'll use the 'net/http' library that's built into Ruby to to analyse the data in the provided url
# require 'net/http'

# - create the object where we'll store the data from the url
# url = URI("https://adventofcode.com/2023/day/1/input")

# - send a GET request to the URL for the response. This method returns the body of the response as a string.
# response = Net::HTTP.get(url)

# - print the response string
# puts response

# ----------------------

# Attempt 2: Download the data as a text file and analyse that instead

# file = File.open("day-1-input.txt")
# data = file.read
# puts data
# file.close

# This works, we now have the input store in a variable called 'file'
# The above method shows me how I can open a file and read it


### Step 2: Find the first and last integers on each line of the text

# Now I need to do this in a loop so that we can analyse the file line by line
# for loops apparently aren't idiomatic in Ruby so we're using "each/do"
# - Open the file in read mode, pass that file to the block below in the 'file' variable
# - Call the each_line method (built into Ruby) on the file, pass each line to the block below in the 'line' variable
# - read the line

# File.open("day-1-input.txt", "r") do |file|
#   file.each_line do |line|
#     puts line
#   end
# end



# Building on the above, now we need to find the first and last integers on each line
# Combine them to create a new integer
# Add all the integers together

total = 0

File.open("day-1-input.txt", "r") do |file|
  file.each_line do |line|
    first_digit = line[/\d/] # use the 'element reference [] to act on a string. When used with a regular expression, it returns the first instance of the regular expression. /\d/ denotes an integer'
    last_digit = line[line.rindex(/\d/)] # the .rindex method finds the last occurence of a substring or pattern. Here's it's finding the last integer and giving us its index
    combined_number = "#{first_digit}#{last_digit}".to_i # create a variable of the combined string and turn it into an integer
    total += combined_number
  end
end

puts total

# Add the integers together
