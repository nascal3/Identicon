defmodule Identicon do

  def main(input) do
    input
    |> hash_input
    |> pick_color
  end

  def pick_color(image) do
     %Identicon.Image{hex: [red, blue, green | _tail]} = image

     %Identicon.Image{image | color: {red, blue, green}}
  end

  def hash_input(input) do
    hex = :crypto.hash(:md5, input)
    |> :binary.bin_to_list

    %Identicon.Image{hex: hex}
  end

end
