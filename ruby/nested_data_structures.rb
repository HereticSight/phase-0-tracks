tea = {
  
  green: [
    'Sencha',
    'Dragonwell',
    'Gyokuro',
  ],
  
  black: [
    'Darjeeling',
    'Assam',
    'Ying De Hong'
  ],
  
  white: [
    'Silver Needle Tea',
    'Yue Guang Bai',
    'Jade Needle'
  ],
  
  oolong: [
    'Wu Yi Rock',
    'Dan Cong',
    'Anxi'
  ],
  
  puerh: {
    :ripe => [
      'Long Xin Tang Yi Wu Gu Shu',
      'Yong Pin Hao Menghai Qi Zi Bing 131',
      'Bu Lang'
      ],
    :raw => [
      'Tian Xia Tong An',
      'Yin Hao Tuo',
      'Zheng Shan Da Ye'
      ],
  },
  
  tisane: [
    'Chai',
    'Rooibos',
    'Matte'
  ]
}
# Show oolong teas:
puts "Show Oolong"
p tea[:oolong]

# Change 'Dan Cong' to show some different types of Dan Cong Oolongs
tea[:oolong][1] = ['Mi Lan Xiang', 'Snowflake Da Wu Ye', 'Song Zhong']

# Print the Oolong tea at index 2 within the index 1 of Oolong teas
puts "Show the 3rd Dan Cong Oolong"
p tea[:oolong][1][2]

# Print the index 2 of the :raw :puerh teas
puts "Show the 3rd Raw Pu-erh"
p tea[:puerh][:raw][2]

# Print the last item in the :tisane array
puts "Show the last Tisane"
p tea[:tisane].last


# Change the 2nd Raw Pu-erh to Autumn Ba Wai Village
tea[:puerh][:raw][1] = 'Autumn Ba Wai Village'
puts "Show latest list of raw Pu-Erh"
p tea[:puerh][:raw]


#Add Catnip to Tisane list
tea[:tisane].push('Catnip')
puts "Show the Tisane list"
p tea[:tisane]

#Remove Tisane
tea.delete(:tisane)
puts "Show all available tea"
p tea