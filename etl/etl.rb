class ETL
  def self.transform(old)
    old.each_with_object({}) {|(points, letters), new| letters.each { |letter| new[letter.downcase] = points }}
  end
end
