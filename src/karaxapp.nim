import sugar

include karax/prelude

import components/tweetbox


type
  State = object
    tweetBox: TweetBox
    anotherTweetBox: TweetBox

func initState(): State =
  result.tweetBox = initTweetBox()
  result.anotherTweetBox = initTweetBox()

proc main() =
  var state = initState()

  proc render(): VNode =
    buildHtml(tdiv):
      h1(text "Hello Karax")

      render state.tweetBox
      render state.anotherTweetBox

  setRenderer render


when isMainModule:
  main()
