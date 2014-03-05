module AvatarHelper
  def avatar_url
    gravatar_id = Digest::MD5::hexdigest("petesta@live.com").downcase
    "http://gravatar.com/avatar/#{gravatar_id}.png"
  end
end
