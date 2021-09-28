defmodule CoinfellowWeb.ProductController do
  use CoinfellowWeb, :controller

  def index(conn, _params) do
    trades =
      Coinfellow.available_products()
      |> Coinfellow.get_last_trades()
    render(conn, "index.html", trades: trades)
  end
end
