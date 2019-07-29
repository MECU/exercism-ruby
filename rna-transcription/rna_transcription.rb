class Complement
  def self.of_dna(rna = '')
    rna.tr('GCTA', 'CGAU')
  end
end