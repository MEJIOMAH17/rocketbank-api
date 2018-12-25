package com.pusher.client.channel.impl;

import com.google.gson.Gson;
import com.pusher.client.channel.Channel;
import com.pusher.client.channel.ChannelEventListener;
import com.pusher.client.channel.ChannelState;
import com.pusher.client.channel.PresenceChannel;
import com.pusher.client.channel.PrivateChannel;
import com.pusher.client.channel.PrivateChannelEventListener;
import com.pusher.client.connection.ConnectionEventListener;
import com.pusher.client.connection.ConnectionState;
import com.pusher.client.connection.ConnectionStateChange;
import com.pusher.client.connection.impl.InternalConnection;
import com.pusher.client.util.Factory;
import java.util.HashMap;
import java.util.Map;

public class ChannelManager implements ConnectionEventListener {
    private static final Gson GSON = new Gson();
    private final Map<String, InternalChannel> channelNameToChannelMap = new HashMap();
    private InternalConnection connection;
    private final Factory factory;

    public void onError(String str, String str2, Exception exception) {
    }

    public ChannelManager(Factory factory) {
        this.factory = factory;
    }

    public Channel getChannel(String str) {
        if (str.startsWith("private-")) {
            throw new IllegalArgumentException("Please use the getPrivateChannel method");
        } else if (!str.startsWith("presence-")) {
            return findChannelInChannelMap(str);
        } else {
            throw new IllegalArgumentException("Please use the getPresenceChannel method");
        }
    }

    public PrivateChannel getPrivateChannel(String str) throws IllegalArgumentException {
        if (str.startsWith("private-")) {
            return (PrivateChannel) findChannelInChannelMap(str);
        }
        throw new IllegalArgumentException("Private channels must begin with 'private-'");
    }

    public PresenceChannel getPresenceChannel(String str) throws IllegalArgumentException {
        if (str.startsWith("presence-")) {
            return (PresenceChannel) findChannelInChannelMap(str);
        }
        throw new IllegalArgumentException("Presence channels must begin with 'presence-'");
    }

    private InternalChannel findChannelInChannelMap(String str) {
        return (InternalChannel) this.channelNameToChannelMap.get(str);
    }

    public void setConnection(InternalConnection internalConnection) {
        if (internalConnection == null) {
            throw new IllegalArgumentException("Cannot construct ChannelManager with a null connection");
        }
        if (this.connection != null) {
            this.connection.unbind(ConnectionState.CONNECTED, this);
        }
        this.connection = internalConnection;
        internalConnection.bind(ConnectionState.CONNECTED, this);
    }

    public void subscribeTo(InternalChannel internalChannel, ChannelEventListener channelEventListener, String... strArr) {
        validateArgumentsAndBindEvents(internalChannel, channelEventListener, strArr);
        this.channelNameToChannelMap.put(internalChannel.getName(), internalChannel);
        sendOrQueueSubscribeMessage(internalChannel);
    }

    public void unsubscribeFrom(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Cannot unsubscribe from null channel");
        }
        InternalChannel internalChannel = (InternalChannel) this.channelNameToChannelMap.remove(str);
        if (internalChannel != null && this.connection.getState() == ConnectionState.CONNECTED) {
            sendUnsubscribeMessage(internalChannel);
        }
    }

    public void onMessage(String str, String str2) {
        Object obj = ((Map) GSON.fromJson(str2, Map.class)).get("channel");
        if (obj != null) {
            InternalChannel internalChannel = (InternalChannel) this.channelNameToChannelMap.get((String) obj);
            if (internalChannel != null) {
                internalChannel.onMessage(str, str2);
            }
        }
    }

    public void onConnectionStateChange(ConnectionStateChange connectionStateChange) {
        if (connectionStateChange.getCurrentState() == ConnectionState.CONNECTED) {
            for (InternalChannel sendOrQueueSubscribeMessage : this.channelNameToChannelMap.values()) {
                sendOrQueueSubscribeMessage(sendOrQueueSubscribeMessage);
            }
        }
    }

    private void sendOrQueueSubscribeMessage(final InternalChannel internalChannel) {
        this.factory.queueOnEventThread(new Runnable() {
            public void run() {
                if (ChannelManager.this.connection.getState() == ConnectionState.CONNECTED) {
                    try {
                        ChannelManager.this.connection.sendMessage(internalChannel.toSubscribeMessage());
                        internalChannel.updateState(ChannelState.SUBSCRIBE_SENT);
                    } catch (Exception e) {
                        ChannelManager.this.clearDownSubscription(internalChannel, e);
                    }
                }
            }
        });
    }

    private void sendUnsubscribeMessage(final InternalChannel internalChannel) {
        this.factory.queueOnEventThread(new Runnable() {
            public void run() {
                ChannelManager.this.connection.sendMessage(internalChannel.toUnsubscribeMessage());
                internalChannel.updateState(ChannelState.UNSUBSCRIBED);
            }
        });
    }

    private void clearDownSubscription(final InternalChannel internalChannel, final Exception exception) {
        this.channelNameToChannelMap.remove(internalChannel.getName());
        internalChannel.updateState(ChannelState.FAILED);
        if (internalChannel.getEventListener() != null) {
            this.factory.queueOnEventThread(new Runnable() {
                public void run() {
                    ((PrivateChannelEventListener) internalChannel.getEventListener()).onAuthenticationFailure(exception.getMessage(), exception);
                }
            });
        }
    }

    private void validateArgumentsAndBindEvents(InternalChannel internalChannel, ChannelEventListener channelEventListener, String... strArr) {
        if (internalChannel == null) {
            throw new IllegalArgumentException("Cannot subscribe to a null channel");
        } else if (this.channelNameToChannelMap.containsKey(internalChannel.getName())) {
            strArr = new StringBuilder("Already subscribed to a channel with name ");
            strArr.append(internalChannel.getName());
            throw new IllegalArgumentException(strArr.toString());
        } else {
            for (String bind : strArr) {
                internalChannel.bind(bind, channelEventListener);
            }
            internalChannel.setEventListener(channelEventListener);
        }
    }
}
