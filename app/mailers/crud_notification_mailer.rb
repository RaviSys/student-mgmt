class CrudNotificationMailer < ApplicationMailer

  def create_notification(object)
    @object = object
    @object_count = object.class.count

    mail to: 'admin@example.com', subject: "A new entry for #{object.class} has been created"
  end

  def update_notification(object)
    @object = object
    @object_count = object.class.count

    mail to: 'admin@example.com', subject: "An entry for #{object.class} has been updated"
  end

  def delete_notification(object)
    @object = object
    @object_count = object.class.count

    mail to: 'admin@example.com', subject: "An entry for #{object.class} has been deleted"
  end
end
