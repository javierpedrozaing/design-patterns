# implementaciones concretas de la abstracción

require_relative 'notifier'

class WhatssapNotification < Notifier
  attr_reader :number, :text, :image

  def initialize(number, text, image)
    @number = number
    @text = text
    @image = image
  end

  def notify
    puts "sending whatssap notification to #{@number} - texto: #{@text} - image: #{@image}"
  end
end