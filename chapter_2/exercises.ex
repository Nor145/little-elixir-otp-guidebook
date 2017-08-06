defmodule MySum do
	def sum([]), do: 0
	def sum([head | tail]) do
		sum(head) + sum(tail)
	end
	def sum(head), do: head

	def sumPatternMatch(numbers) do
		case numbers do
			[] -> 
				0
			[head | tail] -> 
				sumPatternMatch(head) + sumPatternMatch(tail)
			head -> 
				head
		end
	end
end

defmodule FlatReversePower do
	def flatten [], do: []
	def flatten [head | tail], do: flatten head ++ flatten tail		
	def flatten head, do: [head]

	def reverse list, do: Enum.reverse list

	def power list, do: Enum.map list, fn x -> x * x end

	def start list, do: list |> flatten |> reverse |> power
end