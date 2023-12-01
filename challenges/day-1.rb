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

### Step 2: Find the first and last integers on each line of the text

# The above method shows me how I can open a file and read it
# Now I need to do this in a loop so that we can analyse the file line by line
# For loops apparently aren't idiomatic in Ruby so we're using "each/do"
# - Open the file in read mode, pass that file to the block below in the 'file' variable
# - Call the each_line method (built into Ruby) on the file, pass each line to the block below in the 'line' variable
# - read the line

File.open("day-1-input.txt", "r") do |file|
  file.each_line do |line|
    puts line
  end
end

#
