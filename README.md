MetaGlue
========

![screenshot](https://github.com/juliend2/metaglue/blob/master/public/images/metaglue-screenshot.gif)

## Installation

1. `git clone https://github.com/juliend2/metaglue.git`
2. `cd metaglue`
3. `bundle install`
4. `rake db:migrate`
5. `rails server --port=4444`
6. `open http://localhost:4444/`

## Note regarding local files

You will need to install the [locallinks](https://chrome.google.com/webstore/detail/locallinks/jllpkdkcdjndhggodimiphkghogcpida/related) extension, if you intend to use local file nodes (starting with file:///), because you need to bypass the Google Chrome security measure that prevents you from opening file:/// URLs from an http(s):// URL.


## TODO

* modify Mermaid so that:
  * we can set the proper icon for the nodes that point to a file according to
    its extension.
* support offline mode (it should fallback to a simple youtube icon instead of
  the thumbnail we get from the API, if we don't have network when loading the
  page if the app is served locally).

## License

MIT.

