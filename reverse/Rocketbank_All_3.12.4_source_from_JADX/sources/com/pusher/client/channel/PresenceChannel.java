package com.pusher.client.channel;

import java.util.Set;

public interface PresenceChannel extends PrivateChannel {
    User getMe();

    Set<User> getUsers();
}
