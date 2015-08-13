defmodule RestApi.V1.MessageView do
  use RestApi.Web, :view

  def render("index.json", %{messages: messages}) do
    %{data: render_many(messages, RestApi.V1.MessageView, "message.json")}
  end

  def render("show.json", %{message: message}) do
    %{data: render_one(message, RestApi.V1.MessageView, "message.json")}
  end

  def render("message.json", %{message: message}) do
    %{id: message.id, from: message.from, to: message.to, body: message.body}
  end
end
