package com.pusher.client;

import com.pusher.client.channel.Channel;
import com.pusher.client.channel.ChannelEventListener;
import com.pusher.client.channel.PresenceChannel;
import com.pusher.client.channel.PresenceChannelEventListener;
import com.pusher.client.channel.PrivateChannel;
import com.pusher.client.channel.PrivateChannelEventListener;
import com.pusher.client.connection.Connection;
import com.pusher.client.connection.ConnectionEventListener;
import com.pusher.client.connection.ConnectionState;

public interface Client {
    void connect();

    void connect(ConnectionEventListener connectionEventListener, ConnectionState... connectionStateArr);

    void disconnect();

    Channel getChannel(String str);

    Connection getConnection();

    PresenceChannel getPresenceChannel(String str);

    PrivateChannel getPrivateChannel(String str);

    Channel subscribe(String str);

    Channel subscribe(String str, ChannelEventListener channelEventListener, String... strArr);

    PresenceChannel subscribePresence(String str);

    PresenceChannel subscribePresence(String str, PresenceChannelEventListener presenceChannelEventListener, String... strArr);

    PrivateChannel subscribePrivate(String str);

    PrivateChannel subscribePrivate(String str, PrivateChannelEventListener privateChannelEventListener, String... strArr);

    void unsubscribe(String str);
}
