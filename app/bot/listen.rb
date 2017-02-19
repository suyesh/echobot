require "facebook/messenger"
include Facebook::Messenger

Facebook::Messenger::Subscriptions.subscribe(access_token: ENV["ACCESS_TOKEN"])

Bot.on :message do |message|
  Bot.deliver({
    recipient: message.sender,
    message: {
      text: "Meow Meow Meow Bitch"
    }
  }, access_token: ENV["ACCESS_TOKEN"])
end
