# Dangerously overwriting the Sting class

class String
  # try in irb
  # "Paij-ree".name_significance
  # "Gonk-poo".name_significance

  @@sylables = [
    {'Paij' => 'Personal',
      'Gonk' => 'Business',
      'Blon' => 'Slave',
      'Stro' => 'Master',
      'Wert' => 'Father',
      'Onnn' => 'Mother'},
    {'ree'  => 'AM',
      'plo'  => 'PM'}
  ]

  def name_significance
    parts = self.split( '-')
    sylables = @@sylables.dup
    signif = parts.collect do |p|
      sylables.shift[p]
    end
    signif.join(' ')
  end
end