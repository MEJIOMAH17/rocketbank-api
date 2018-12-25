package com.pusher.client.channel.impl;

import com.pusher.client.channel.Channel;
import com.pusher.client.channel.ChannelEventListener;
import com.pusher.client.channel.ChannelState;

public interface InternalChannel extends Channel, Comparable<InternalChannel> {
    ChannelEventListener getEventListener();

    void onMessage(String str, String str2);

    void setEventListener(ChannelEventListener channelEventListener);

    String toSubscribeMessage();

    String toUnsubscribeMessage();

    void updateState(ChannelState channelState);
}
