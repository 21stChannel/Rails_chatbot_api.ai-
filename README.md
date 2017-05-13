# Rails chatbot api.ai
A lightweight webpage chatbot implementation based on api.ai and Ruby on Rails.

## Function
A user types in text based request, the api.ai replies with what it knows, simple.\
To use the bot API, you need to register a free account on [api.ai](https://api.ai/) and fill in the access token within `/chatbot/app/controllers/chats_controller.rb`.\
The procedure is, first create a client instance of api.ai, send a `String` request, then the server will return a JSON object (hash) as the response.\ 
If you just want the text response only, you should access the JSON object by key like `text = JSONResponse[:result][:fulfillment][:speech]`, note that the `speech` key maps into the text response. 

## Clarification
An implementation showing how to use API of api.ai to build a chatbot with Ruby on Rails.
You can check that in the chat controller. However, the front end design is not included ;P
That means you can set up your own style with that!

## Implementation example
[Click here](https://secure-bayou-98710.herokuapp.com/chats) to meet Alfred the bot! Feel free to teach him :)

## Credit
Bootstrap template by [Mark Otto](https://twitter.com/mdo)\
[Official Ruby api.ai guide](https://github.com/api-ai/apiai-ruby-client)
