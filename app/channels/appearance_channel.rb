class AppearanceChannel < ApplicationCable::Channel
  def subscribed
    current_user.appear
    stream_for current_user
  end

  def unsubscribed
    current_user.disappear
  end

  def appear(data)
    current_user.appear
  end

  def away
    self.class.broadcast_to(
      current_user,
      title: 'New things!',
      body: 'All the news fit to print'
    )
    current_user.away
  end
end
