defmodule PhotoWeb.PageController do
  use PhotoWeb, :controller

  def index(conn, _params) do
    s = Unsplash.Photos.random(count: "25") |> Enum.to_list()
    s = Enum.reduce(s, [], fn(x, acc) -> acc ++ [get_field(x)] end) 
    render conn, "index.html", urls: s 
  end

  defp get_field(pkg) do
    %{}
    |> Map.put(:url, Map.fetch!(pkg, "urls") |> Map.fetch!("regular"))
    |> Map.put(:username, Map.fetch!(pkg, "user") |> Map.fetch!("username"))
  end
end
