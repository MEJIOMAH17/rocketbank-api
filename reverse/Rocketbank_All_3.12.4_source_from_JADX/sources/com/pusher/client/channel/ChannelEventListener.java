package com.pusher.client.channel;

public interface ChannelEventListener extends SubscriptionEventListener {
    void onSubscriptionSucceeded(String str);
}
