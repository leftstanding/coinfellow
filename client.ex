  def start_link(currency_pairs, options \\[]) do
    GenServer.start_link(__MODULE__, currency_pairs, options)
  end

  def init(currency_pairs) do
    state = %{
      currency_pairs: currency_pairs,
      conn: nil
    }
    {:ok, state, {:continue, :connect}}
  end
