package com.pusher.client.channel;

public interface Channel {
    void bind(String str, SubscriptionEventListener subscriptionEventListener);

    String getName();

    boolean isSubscribed();

    void unbind(String str, SubscriptionEventListener subscriptionEventListener);
}
