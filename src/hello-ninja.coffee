# Description:
#   the most useless hubut script. just say hello to ninja
#
# Commands:
#   hubot hello - say hello to you.
#   hubot hello name - say hello to name from you.
#
# Author:
#   mattak


hello = (msg, user_from, user_to) ->
  msg.send "ドーモ、#{ user_to }=サン。#{ user_from }です。"

module.exports = (robot) ->
  robot.respond /hello$/i, (msg) ->
    hello msg, robot.name, msg.message.user.name
  robot.respond /hello (\S+)$/i, (msg) ->
    user_to = msg.match[1].toLowerCase()
    hello msg, msg.message.user.name, user_to
