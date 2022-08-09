class ReadWriteFile
  def read_file(file); end

  def write_file(data, file)
    File.write(file, data)
  end
end
