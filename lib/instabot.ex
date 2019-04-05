defmodule Instabot do
  import Mogrify

  @moduledoc """
  Documentation for Instabot.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Instabot.hello()
      :world

  """
  def hello do
    :world
  end

  def getMSBData do

    smhi_alert_api_url = "https://opendata-download-warnings.smhi.se/api/version/2/alerts.json"
    response = HTTPotion.get smhi_alert_api_url
    Poison.decode!(response.body)
    |> Map.fetch!("alert")
    |> Enum.take(1)

  end

  def generateImage(text) do
    open("./static/images/brand-raw.jpg")
    |> custom("pointsize", "60")
    |> custom("fill", "#ffcc44")
    |> Mogrify.Draw.text(60, 100, text)
    |> save(path: "./static/images/other.jpg")
  end
end
