# ATTEMPT 1: tried using net/http library built into Ruby to analyse the data in the provided url
# - found that this won't work as the string provided is unique for each user and we aren't able to log in using this method

# - we'll use the 'net/http' library that's built into Ruby to to analyse the data in the provided url
# require 'net/http'

# - create the object where we'll store the data from the url
# url = URI("https://adventofcode.com/2023/day/1/input")

# - send a GET request to the URL for the response. This method returns the body of the response as a string.
# response = Net::HTTP.get(url)

# - print the response string
# puts response
