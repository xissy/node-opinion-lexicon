should = require 'should'

opinionLexicon = require '../index'


describe 'OpinionLexicon', ->
  positiveWord = 'great'
  negativeWord = 'rubbish'
  neutralWord = 'anyway'

  describe '.getOpinion(...)', ->
    it 'with a positive word', ->
      opinionLexicon.getOpinion(positiveWord).should.equal 'positive'
    it 'with a negative word', ->
      opinionLexicon.getOpinion(negativeWord).should.equal 'negative'
    it 'with a neutral word', ->
      opinionLexicon.getOpinion(neutralWord).should.equal 'neutral'

  describe '.isPositive(...)', ->
    it 'with a positive word', ->
      opinionLexicon.isPositive(positiveWord).should.be.true
    it 'with a negative word', ->
      opinionLexicon.isPositive(negativeWord).should.be.false

  describe '.isNegative(...)', ->
    it 'with a negative word', ->
      opinionLexicon.isNegative(negativeWord).should.be.true
    it 'with a positive word', ->
      opinionLexicon.isNegative(positiveWord).should.be.false

  describe '.isNeutral(...)', ->
    it 'with a neutral word', ->
      opinionLexicon.isNeutral(neutralWord).should.be.true
    it 'with a positive word', ->
      opinionLexicon.isNeutral(positiveWord).should.be.false
