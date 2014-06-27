should = require('should')
Test = require("../index")

describe 'Init number function', () ->

  it ', get random number', (done) ->

    test = new Test()
    randomNum = test.random()
    randomNum.should.be.a.Number
    done()

  it ', get string', (done) ->

    test = new Test()
    str =  test.justString()
    str.should.be.a.String
    done()

  it ', let\'s calc ', (done) ->

    test =  new Test()
    plus =  test.calc( 2, 1, "+")
    minus =  test.calc( 2, 1, "-")
    divide = test.calc( 2, 1, "/")
    time = test.calc(2, 1, "*")

    plus.should.be.equal(3)
    minus.should.equal(1)
    divide.should.equal(2)
    time.should.equal(2)
    done()

  it ', what is type ', (done) ->

    test = new Test()
    result1 = test.typeSwitch(0)
    result2 = test.typeSwitch(1)
    result1.should.be.a.Number
    result2.should.be.a.String
    #result1.should.be.type('number')
    #result2.should.be.type('string')
    done()

  it ', it is empty ', (done) ->

    test = new Test()
    result = test.iamempty()
    result.should.be.empty
    done()