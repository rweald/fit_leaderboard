defmodule FitLeaderboard.SlackAPI do
  use HTTPoison.Base

  def process_url(url) do
    "https://slack.com/api/" <> url <> "?token=" <> System.get_env("SLACK_TOKEN")
  end

  def process_response_body(body) do
    case Poison.decode(body) do
      {:ok, json} -> json
      {:error, _} -> IO.puts("Slack Response JSON parse failed")
    end
  end

end
