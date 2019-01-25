handle_open = fn
  { :ok, file } -> IO.puts "Reading... #{IO.read(file, :line)}"
  { _, error } -> IO.puts "Error: #{:file.format_error(error)}"
end

IO.puts handle_open.(File.open('test.txt'))
IO.puts handle_open.(File.open('test.txtxtxt'))
