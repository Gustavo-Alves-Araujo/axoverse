module ApplicationHelper
  def profile_picture_of(user)
    if user.profile_picture.present?
      return image_tag(user.profile_picture)
    end

    # Imagem padrão caso o usuário não tenha uma foto
    image_tag('default-user')
  end

  def contact_info(room)
    raise "Argument assigned is not a Room class instance" if room.class != Room

    room.users.find { |user| user != current_user }
  end
end
