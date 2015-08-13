defmodule RestApi.Message do
  use RestApi.Web, :model

  schema "messages" do
    field :to, :string
    field :from, :string
    field :body, :string

    timestamps
  end

  @required_fields ~w(to from body)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
