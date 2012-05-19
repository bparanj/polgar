class Uncommenter
  def self.uncomment(infile, outfile)
    infile.each do |line|
      outfile.print line unless line =~ /\A\s*#/
    end
  end
end