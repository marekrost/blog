Jekyll::Hooks.register :posts, :post_write do |post|
  source_dir = File.dirname(post.path)
  dest_dir = File.dirname(post.destination(""))

  Dir.glob(File.join(source_dir, "**", "*")).each do |file|
    next if File.directory?(file)
    next if file =~ /\.(md|markdown)$/i

    relative = file.sub(source_dir + "/", "")
    dest_file = File.join(dest_dir, relative)
    FileUtils.mkdir_p(File.dirname(dest_file))
    FileUtils.cp(file, dest_file)
  end
end
