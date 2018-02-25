lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'oot'

puts OOT::VERSION

gsf = OOT::Factories::GenericShape.new
gc =
  gsf.build_circle(radius: 1)

fsf = OOT::Factories::FilledShape.new
fc = fsf.build_circle(
  radius: 1,
  fill: OOT::RGBAColor.new(red: 255, green: 12, blue: 140)
)

tsf = OOT::Factories::TexturedShape.new
tc = tsf.build_circle(
  radius: 1,
  texture: OOT::Texture.new(path: 'some.png')
)

bsf = OOT::Factories::BorderedShape.new
bc = bsf.build_circle(
  radius: 1,
  border_color: OOT::RGBAColor.new(),
  border_width: 1
)

ssf = OOT::Factories::ShadowedShape.new
sc = ssf.build_circle(
  radius: 1,
  shadow_color: OOT::RGBAColor.new(red: 255, alpha: 0.5),
  shadow_spread: 14,
  shadow_blur: 4
)

puts sc.inspect