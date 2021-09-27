defmodule Coinfellow do
  defdelegate subscribe_to_trades(product),
    to: CoinFellow.Exchanges, as: :subscribe

  defdelegate unsubscribe_from_trades(product),
    to: CoinFellow.Exchanges, as: :unsubscribe

  defdelegate get_last_trade(product), to: CoinFellow.Historical
  defdelegate get_last_trades(products), to: CoinFellow.Historical
end
