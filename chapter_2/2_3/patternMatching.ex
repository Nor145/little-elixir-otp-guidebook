programmers = %{rich: "Clojure"}

case Map.fetch(programmers, :rich) do
	{:ok, language} -> 
		IO.puts "#{language} is a legit languge."
	:error -> 
		IO.puts "No idea what languge it is"
end