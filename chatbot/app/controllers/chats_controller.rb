class ChatsController < ApplicationController
  # set your api.ai access token
  @@client = ApiAiRuby::Client.new(
    :client_access_token => 'ACCESS_TOKEN'
    )
  def index
  end

  def create
    @request = params[:chatContent]
    # Should not send blank request to api.ai
    if @request.length < 1
      @request = "(I don't know what to say)"
    end
    @JSONResponse = @@client.text_request @request
    # get the text response only
    @response = @JSONResponse[:result][:fulfillment][:speech]
    render :action => "show"
  end
end
