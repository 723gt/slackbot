#!/usr/bin/env ruby

require 'slack'
require 'json'
token = nil
File.open("token.json") do |file|
  token = JSON.load(file)
end

Slack.configure do |c|
  c.token = token["token"] 
end

Slack.chat_postMessage(channel: 'botfarm', text: 'hoge',username: 'starplatinum')

=begin
client = Slack.realtime

client.on :hello do
  client.message channel: 'botfarm', text: 'hello'
end
=end
