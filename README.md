# Rails chatbot api.ai
A lightweight webpage chatbot implementation based on api.ai and Ruby on Rails.

## Function
A user types in text based request, the api.ai replies with what it knows, simple.

To use the bot API, you need to register a free account on [api.ai](https://api.ai/) and fill in the access token within `/chatbot/app/controllers/chats_controller.rb`.

The procedure is, first create a client instance of api.ai, send a `String` request, then the server will return a JSON object (hash) as the response.

If you just want the text response only, you should access the JSON object by key like `text = JSONResponse[:result][:fulfillment][:speech]`, note that the `speech` key maps into the text response. 

## Clarification
There is no database, no devise authentication, no front-end code in this implementation. You can implement them in your own style.

## Implementation example
![](preview.png)

## Credit
Bootstrap template by [Mark Otto](https://twitter.com/mdo)\
[Official Ruby api.ai guide](https://github.com/api-ai/apiai-ruby-client)
