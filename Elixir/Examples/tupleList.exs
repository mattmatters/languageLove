defmodule ListFun do
  @tax [ NC: 0.075, TX: 0.08 ]

  def processOrders(orders) do
    orders |> Enum.map(&addTax/1)
  end

  def addTax(order = [ id: _, ship_to: state, net_amount: net_amount ]) do
    tax = Keyword.get(@tax, state, 0)
    total_amount = net_amount + (net_amount * tax)

    Keyword.put(order, :total_amount, total_amount)
  end

end

stuff = [
  [ id: 123, ship_to: :NC, net_amount: 100.00 ],
  [ id: 124, ship_to: :TX, net_amount: 100.00 ],
  [ id: 123, ship_to: :OK, net_amount: 100.00 ],
  [ id: 123, ship_to: :NC, net_amount: 100.00 ],
  [ id: 123, ship_to: :NC, net_amount: 100.00 ],
  [ id: 123, ship_to: :NC, net_amount: 100.00 ],
  [ id: 123, ship_to: :NC, net_amount: 100.00 ],
  [ id: 123, ship_to: :NC, net_amount: 100.00 ],
  [ id: 123, ship_to: :NC, net_amount: 100.00 ]
]

IO.inspect ListFun.processOrders(stuff)
