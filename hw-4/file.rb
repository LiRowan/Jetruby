class FileHandler
  def initialize(file_path)
    @file_path = file_path
  end

  def index
    File.open(@file_path) do |file|
      file.each_line do |line|
        puts line
      end
    end
  end

  def find(id)
    File.open(@file_path) do |file|
      file.each_line.with_index do |line, i|
        puts line if i+1 == id.to_i
      end
    end
  end

  def where(pattern)
    File.open(@file_path) do |file|
      file.each_line do |line|
        puts line if line.include?(pattern)
      end
    end
  end

  def update(id, text)
    lines = File.readlines(@file_path)
    lines[id.to_i-1] = text + "\n"
    File.open(@file_path, "w") do |file|
      file.puts lines
    end
  end

  def delete(id)
    lines = File.readlines(@file_path)
    lines.delete_at(id.to_i-1)
    File.open(@file_path, "w") do |file|
      file.puts lines
    end
  end

  def create(name)
    File.open(@file_path, "a") do |file|
      file.puts name
    end
  end
end
