defmodule Ectoproj.Identity.User do
  use Ecto.Schema
  import Ecto.Changeset


  schema "users" do
    field :fname, :string
    field :lname, :string
    field :password, :string
    field :phone, :string
    field :wishlist, :map

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:fname, :lname, :phone, :password, :wishlist])
    |> validate_required([:fname, :lname, :phone, :password, :wishlist])
  end
end
