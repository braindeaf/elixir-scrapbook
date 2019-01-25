defmodule SweetBeats do
  @tempo 250
  # SweetBeats.song("BAGABBB AAA BDD BABABBBAABAG")
  def song(notes) do
    notes
    |> String.graphemes
    |> Enum.each(fn(note) ->
         spawn fn -> note(note) end
         :timer.sleep(@tempo)
      end)
  end

  def note(" "), do: nil
  def note(note) do
    System.cmd("play", ["-qn", "synth", "3", "pluck", note])
  end
end
