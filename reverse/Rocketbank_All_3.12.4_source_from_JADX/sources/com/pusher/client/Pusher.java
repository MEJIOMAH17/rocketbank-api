package com.pusher.client;

import com.pusher.client.channel.Channel;
import com.pusher.client.channel.ChannelEventListener;
import com.pusher.client.channel.PresenceChannel;
import com.pusher.client.channel.PresenceChannelEventListener;
import com.pusher.client.channel.PrivateChannel;
import com.pusher.client.channel.PrivateChannelEventListener;
import com.pusher.client.channel.impl.ChannelManager;
import com.pusher.client.connection.Connection;
import com.pusher.client.connection.ConnectionEventListener;
import com.pusher.client.connection.ConnectionState;
import com.pusher.client.connection.impl.InternalConnection;
import com.pusher.client.util.Factory;

public class Pusher implements Client {
    private final ChannelManager channelManager;
    private final InternalConnection connection;
    private final Factory factory;
    private final PusherOptions pusherOptions;

    public Pusher(String str) {
        this(str, new PusherOptions());
    }

    public Pusher(String str, PusherOptions pusherOptions) {
        this(str, pusherOptions, new Factory());
    }

    Pusher(String str, PusherOptions pusherOptions, Factory factory) {
        if (str != null) {
            if (str.length() != 0) {
                if (pusherOptions == null) {
                    throw new IllegalArgumentException("PusherOptions cannot be null");
                }
                this.pusherOptions = pusherOptions;
                this.factory = factory;
                this.connection = factory.getConnection(str, this.pusherOptions);
                this.channelManager = factory.getChannelManager();
                this.channelManager.setConnection(this.connection);
                return;
            }
        }
        throw new IllegalArgumentException("API Key cannot be null or empty");
    }

    public Connection getConnection() {
        return this.connection;
    }

    public void connect() {
        connect(null, new ConnectionState[0]);
    }

    public void connect(ConnectionEventListener connectionEventListener, ConnectionState... connectionStateArr) {
        if (connectionEventListener != null) {
            int i = 0;
            if (connectionStateArr.length == 0) {
                connectionStateArr = new ConnectionState[]{ConnectionState.ALL};
            }
            int length = connectionStateArr.length;
            while (i < length) {
                this.connection.bind(connectionStateArr[i], connectionEventListener);
                i++;
            }
        } else if (connectionStateArr.length > null) {
            throw new IllegalArgumentException("Cannot bind to connection states with a null connection event listener");
        }
        this.connection.connect();
    }

    public void disconnect() {
        if (this.connection.getState() == ConnectionState.CONNECTED) {
            this.connection.disconnect();
        }
    }

    public Channel subscribe(String str) {
        return subscribe(str, null, new String[0]);
    }

    public Channel subscribe(String str, ChannelEventListener channelEventListener, String... strArr) {
        str = this.factory.newPublicChannel(str);
        this.channelManager.subscribeTo(str, channelEventListener, strArr);
        return str;
    }

    public PrivateChannel subscribePrivate(String str) {
        return subscribePrivate(str, null, new String[0]);
    }

    public PrivateChannel subscribePrivate(String str, PrivateChannelEventListener privateChannelEventListener, String... strArr) {
        throwExceptionIfNoAuthorizerHasBeenSet();
        str = this.factory.newPrivateChannel(this.connection, str, this.pusherOptions.getAuthorizer());
        this.channelManager.subscribeTo(str, privateChannelEventListener, strArr);
        return str;
    }

    public PresenceChannel subscribePresence(String str) {
        return subscribePresence(str, null, new String[0]);
    }

    public PresenceChannel subscribePresence(String str, PresenceChannelEventListener presenceChannelEventListener, String... strArr) {
        throwExceptionIfNoAuthorizerHasBeenSet();
        str = this.factory.newPresenceChannel(this.connection, str, this.pusherOptions.getAuthorizer());
        this.channelManager.subscribeTo(str, presenceChannelEventListener, strArr);
        return str;
    }

    public void unsubscribe(String str) {
        this.channelManager.unsubscribeFrom(str);
    }

    private void throwExceptionIfNoAuthorizerHasBeenSet() {
        if (this.pusherOptions.getAuthorizer() == null) {
            throw new IllegalStateException("Cannot subscribe to a private or presence channel because no Authorizer has been set. Call PusherOptions.setAuthorizer() before connecting to Pusher");
        }
    }

    public Channel getChannel(String str) {
        return this.channelManager.getChannel(str);
    }

    public PrivateChannel getPrivateChannel(String str) {
        return this.channelManager.getPrivateChannel(str);
    }

    public PresenceChannel getPresenceChannel(String str) {
        return this.channelManager.getPresenceChannel(str);
    }
}
