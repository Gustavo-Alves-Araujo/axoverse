module ApplicationHelper
  def profile_picture_of(user, field_class = nil)
    return image_tag(user.profile_picture, class: field_class) if user.profile_picture.present?

    # Imagem padrão caso o usuário não tenha uma foto
    image_tag('default-user', class: field_class)
  end

  def contact_info(room)
    raise "Argument assigned is not a Room class instance" if room.class != Room

    room.users.find { |user| user != current_user }
  end
end
