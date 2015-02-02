module SoundBite
  ONE = [
    'Immigrants are',
    'People on benefits are',
    'The disabled are',
    'Lefties are',
    'The Establishment is',
    'The BBC is',
    'The EU is',
    'The NHS is',
    'Lenny Henry is',
    'Whitehall is'
  ].freeze

  TWO =  [
    'spending all your money on',
    'flooding the UK with',
    'giving British jobs to',
    'no better than',
    'turning our grandchildren into',
    'run by',
    'in a coalition with',
    'a propaganda tool for',
    'responsible for',
    'selling your future to'
  ]

  THREE = [
    'sluts',
    'gays',
    'wind turbines',
    'Muslims',
    'Germans',
    'criminals',
    'The Lords',
    'gypsies',
    'speed cameras',
    'Russell Brand'
  ].freeze

  def self.generated_bite
    "#{ONE.sample} #{TWO.sample} #{THREE.sample}"
  end
end
