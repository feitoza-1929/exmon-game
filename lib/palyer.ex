defmodule ExMon.Player do
  @required_keys [:name, :life, :moves]
  @max_life 100

  @enforce_keys @required_keys
  defstruct @required_keys

  def build(name, move_random, move_average, move_heal) do
    %__MODULE__{
      name: name,
      life: @max_life,
      moves: %{
        move_random: move_random,
        move_average: move_average,
        move_heal: move_heal
      }
    }
  end
end
