positiveWords = require './positiveWords'
negativeWords = require './negativeWords'


getOpinion = (word) ->
  word = word.toLowerCase()
  
  if positiveWords.indexOf(word) >= 0
    return 'positive'
  else if negativeWords.indexOf(word) >= 0
    return 'negative'
  else
    return 'neutral'


isPositive = (word) ->
  getOpinion(word) is 'positive'

isNegative = (word) ->
  getOpinion(word) is 'negative'

isNeutral = (word) ->
  getOpinion(word) is 'neutral'



module.exports =
  positiveWords: positiveWords
  negativeWords: negativeWords
  getOpinion: getOpinion
  isPositive: isPositive
  isNegative: isNegative
  isNeutral: isNeutral
