# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'oot'

puts OOT::VERSION

circle_creator =
  OOT::Creators::Universal.new(
    class_name: OOT::Shapes::ShadowedCircle
  )
rectangle_creator =
  OOT::Creators::Universal.new(
    class_name: OOT::Shapes::ColoredRectangle
  )

shape_factory =
  # OOT::Factories::FilledShape.new(
  #   circle_class: OOT::Shapes::TexturedCircle,
  #   rectangle_class: OOT::Shapes::ColoredRectangle,
  # )
  # OOT::Factories::DecoratedShape.new(
  #   circle_proto: OOT::Shapes::ShadowedCircle.new(
  #     radius: 2,
  #     options: {
  #       shadow_color: OOT::RGBAColor.new(red: 255),
  #       shadow_spread: 12,
  #       shadow_blur: 10,
  #     }
  #   ),
  #   rectangle_proto: OOT::Shapes::BorderedRectangle.new(
  #     width: 2,
  #     height: 2,
  #     options: {
  #       border_color: OOT::RGBAColor.new,
  #       border_width: 2,
  #     }
  #   ),
  # )
  OOT::Factories::Universal.new(
    circle_creator: circle_creator,
    rectangle_creator: rectangle_creator,
    options: {
      color: OOT::RGBAColor.new(green: 123),
      shadow_color: OOT::RGBAColor.new,
      shadow_spread: 10,
      shadow_blur: 15,
    }
  )

circle = shape_factory.build_circle(radius: 1)
rectangle = shape_factory.build_rectangle(width: 1, height: 1)

puts circle.inspect
puts rectangle.inspect
