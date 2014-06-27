request = require('request')

class Test

  calc: (first, second, mark) ->
    if mark == "+"
      return first + second
    else if mark == "-"
      return first - second
    else if mark == "*"
      return first * second
    else if mark == "/"
      return first / second


  random: () ->
    randomNumber = Math.random()
    return randomNumber

  justString: () ->
    str =  "Just a String"
    return str

  typeSwitch: (signal) ->
    number = 1
    number2 = "1"
    if signal == 1
      return number.toString()
    else if signal == 0
      return parseInt(number2, 10)

  iamempty: () ->
    num = empty
    return num

# util.inherits(Bus, events.EventEmitter)
module.exports = Test

