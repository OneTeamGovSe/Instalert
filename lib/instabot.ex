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
  end
end
