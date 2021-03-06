defmodule ReportsGenerator.Parser do

    def parse_file(filename) do # define a função para abrir o arquivo com um argumento
      "Reports/#{filename}"
      |> File.stream!()
      |> Stream.map(fn line -> parse_line(line) end)  
    end
  
    defp parse_line(line) do
      line
      |> String.trim()
      |> String.split(",")
      |> List.update_at(2, &String.to_integer/1) # forma implicita de se definir uma função (fn elem -> String.to_integer(elem)end) 
    end

  end