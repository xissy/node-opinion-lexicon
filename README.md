# node-opinion-lexicon

A node.js module to judge a word whether it's positive or negative.

The positive words and negative words are from [here](http://www.cs.uic.edu/~liub/FBS/sentiment-analysis.html). Thanks to Bing Liu and his friends for sharing precious researches.


## Installation

Via [npm](https://npmjs.org):

    $ npm install opinion-lexicon


## Usage

### Load in the module
```javascript
  var opinionLexicon = require('opinion-lexicon');
```

### Get the opinion from a word
```javascript
  opinionLexicon.getOpinion('great');     // returns 'positive'
  opinionLexicon.getOpinion('rubbish');   // returns 'negative'
  opinionLexicon.getOpinion('anyway');    // returns 'neutral'
```

### Helper functions
```javascript
  opinionLexicon.isPositive('great');     // returns true
  opinionLexicon.isPositive('rubbish');   // returns false

  opinionLexicon.isNegative('rubbish');   // retturns true
  opinionLexicon.isNegative('great');     // retturns false

  opinionLexicon.isNeutral('anyway');     // returns true
  opinionLexicon.isNeutral('great');      // returns false
```


## License

Released under the MIT License

Copyright (c) 2013 Taeho Kim <xissysnd@gmail.com>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
