require 'httparty'
require 'json'
require 'nokogiri'

 HTTParty.class
#
 JSON.class
#
 Nokogiri.class
#
# line = '=' * 79
#
 github_profile_url = 'https://api.github.com/users/dm-wyncode'
 p github_profile_url
#
p response = HTTParty.get(github_profile_url)

#
 HTTParty::Response.class
#
 response.class
#
# HTTParty::Response.instance_methods(false).map do |method|  # gets all the instance methods
#   begin
#     returned_result = response.send(method)  # call the method
#     "method: '#{method}' result class: '#{returned_result.class} result: #{returned_result}"  # information needed
#   rescue StandardError  # some throw an error without a block, rescue those
#     "Unable to call #{method}."
#   end
# end.each do |message|
#   puts message
#   puts line
# end
#
# {
#   body: response.body,
#   code: response.code,
#   message: response.message,
#   headers: response.headers,
# }.each do |key, value|
#   puts "#{value.class}"
#   puts "#{key}: #{value.inspect}"
#   puts line
# end
#
# def paths_in_data(data, parent)
#     unless [Hash, Array].map{|class_| data.class == class_ }.any?
#         return [parent]
#     else
#         items = []
#         data.map do |k, v|
#             k = data.class == Array ? data.index(k) : k
#             items.push(paths_in_data(v, parent + [k, ]))
#         end
#         return items.reduce(:+)
#     end
# end
#
# def get(path, data)
#   path.reduce(data) { |obj, key| (data && data[key]) ? data[key] : nil }
# end
#
# body = JSON.parse(response.body)
#
# paths_in_data(body, [])
#
# paths_in_data(body, []).map do |path|
#   [path, get(path, body)]
# end.each do |path, value|
#   puts "path: #{path} gets value: '#{value}'"
# end
#
# `git add -A && git commit -am 'saved'`
