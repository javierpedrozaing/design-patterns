# abstraction
class Notification
attr_reader :notification_mode

  def initialize(notification_mode)
    @mode = notification_mode
  end

  def send_notification
    @mode.notify
  end
end