require_relative "email_notification"
require_relative "sms_notification"
require_relative "whatssap_notification"
require_relative "notification"

email_notification = EmailNotification.new("destination@gmail.com", "new email", "texto del mensaje")
email = Notification.new(email_notification)
email.send_notification

sms_notification =  SmsNotification.new("3114426177", 'hola como estas')
sms = Notification.new(sms_notification)
sms.send_notification

whatssap_notification = WhatssapNotification.new("3232323233", "texto ....", "path to image")
whatssap = Notification.new(whatssap_notification)
whatssap.send_notification