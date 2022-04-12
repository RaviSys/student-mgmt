# Preview all emails at http://localhost:3000/rails/mailers/crud_notification_mailer
class CrudNotificationMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/crud_notification_mailer/create_notification
  def create_notification
    CrudNotificationMailer.create_notification(Student.first)
  end

  # Preview this email at http://localhost:3000/rails/mailers/crud_notification_mailer/update_notification
  def update_notification
    CrudNotificationMailer.update_notification
  end

  # Preview this email at http://localhost:3000/rails/mailers/crud_notification_mailer/delete_notification
  def delete_notification
    CrudNotificationMailer.delete_notification
  end

end
