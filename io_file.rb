class ReadWriteFile
  def read_file(file)
    File.exist?(file) ? JSON.parse(File.read(file)) : []
  end

  def write_file(data, file)
    File.write(file, data)
  end
end
