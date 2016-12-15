defmodule FitLeaderboard.SlackAPI do
  use HTTPoison.Base

  def process_url(url) do
    "https://slack.com/api/" <> url <> "?token=xoxp-3053565023-3053663269-116390157744-77ab1313bef1c236014e9e2097a2272e"
  end

  def process_response_body(body) do
    case Poison.decode(body) do
      {:ok, json} -> json
      {:error, _} -> IO.puts("Slack Response JSON parse failed")
    end
  end

end
