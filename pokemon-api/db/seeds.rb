50.times do
  name = Faker::Beer.name
  style = Faker::Beer.style
  hop = Faker::Beer.hop
  yeast = Faker::Beer.yeast

  Beer.create(
    name: name,
    style: style,
    hop: hop,
    yeast: yeast
  )
end
