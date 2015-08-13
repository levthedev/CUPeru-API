defmodule RestApi.V1.MessageView do
  use RestApi.Web, :view

  def render("index.json", %{messages: messages}) do
    %{data: render_many(messages, RestApi.MessageView, "message.json")}
  end

  def render("show.json", %{message: message}) do
    %{data: render_one(message, RestApi.MessageView, "message.json")}
  end

  def render("message.json", %{message: message}) do
    %{id: message.id}
  end
end
