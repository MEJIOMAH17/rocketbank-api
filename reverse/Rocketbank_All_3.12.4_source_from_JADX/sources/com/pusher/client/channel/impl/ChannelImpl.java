package com.pusher.client.channel.impl;

import android.support.v4.app.NotificationCompat;
import com.facebook.share.internal.ShareConstants;
import com.google.gson.Gson;
import com.pusher.client.channel.ChannelEventListener;
import com.pusher.client.channel.ChannelState;
import com.pusher.client.channel.SubscriptionEventListener;
import com.pusher.client.util.Factory;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

public class ChannelImpl implements InternalChannel {
    private static final Gson GSON = new Gson();
    private static final String INTERNAL_EVENT_PREFIX = "pusher_internal:";
    protected static final String SUBSCRIPTION_SUCCESS_EVENT = "pusher_internal:subscription_succeeded";
    private ChannelEventListener eventListener;
    private final Map<String, Set<SubscriptionEventListener>> eventNameToListenerMap = new HashMap();
    private final Factory factory;
    private final Object lock = new Object();
    protected final String name;
    protected volatile ChannelState state = ChannelState.INITIAL;

    /* renamed from: com.pusher.client.channel.impl.ChannelImpl$2 */
    class C06722 implements Runnable {
        C06722() {
        }

        public void run() {
            ChannelImpl.this.eventListener.onSubscriptionSucceeded(ChannelImpl.this.getName());
        }
    }

    public ChannelImpl(String str, Factory factory) {
        if (str == null) {
            throw new IllegalArgumentException("Cannot subscribe to a channel with a null name");
        }
        for (String matches : getDisallowedNameExpressions()) {
            if (str.matches(matches)) {
                StringBuilder stringBuilder = new StringBuilder("Channel name ");
                stringBuilder.append(str);
                stringBuilder.append(" is invalid. Private channel names must start with \"private-\" and presence channel names must start with \"presence-\"");
                throw new IllegalArgumentException(stringBuilder.toString());
            }
        }
        this.name = str;
        this.factory = factory;
    }

    public String getName() {
        return this.name;
    }

    public void bind(String str, SubscriptionEventListener subscriptionEventListener) {
        validateArguments(str, subscriptionEventListener);
        synchronized (this.lock) {
            Set set = (Set) this.eventNameToListenerMap.get(str);
            if (set == null) {
                set = new HashSet();
                this.eventNameToListenerMap.put(str, set);
            }
            set.add(subscriptionEventListener);
        }
    }

    public void unbind(String str, SubscriptionEventListener subscriptionEventListener) {
        validateArguments(str, subscriptionEventListener);
        synchronized (this.lock) {
            Set set = (Set) this.eventNameToListenerMap.get(str);
            if (set != null) {
                set.remove(subscriptionEventListener);
                if (set.isEmpty() != null) {
                    this.eventNameToListenerMap.remove(str);
                }
            }
        }
    }

    public boolean isSubscribed() {
        return this.state == ChannelState.SUBSCRIBED;
    }

    public void onMessage(final String str, String str2) {
        if (str.equals(SUBSCRIPTION_SUCCESS_EVENT)) {
            updateState(ChannelState.SUBSCRIBED);
            return;
        }
        synchronized (this.lock) {
            Set set = (Set) this.eventNameToListenerMap.get(str);
            Set<SubscriptionEventListener> hashSet = set != null ? new HashSet(set) : null;
        }
        if (hashSet != null) {
            for (final SubscriptionEventListener subscriptionEventListener : hashSet) {
                final String extractDataFrom = extractDataFrom(str2);
                this.factory.queueOnEventThread(new Runnable() {
                    public void run() {
                        subscriptionEventListener.onEvent(ChannelImpl.this.name, str, extractDataFrom);
                    }
                });
            }
        }
    }

    public String toSubscribeMessage() {
        Map linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "pusher:subscribe");
        Map linkedHashMap2 = new LinkedHashMap();
        linkedHashMap2.put("channel", this.name);
        linkedHashMap.put(ShareConstants.WEB_DIALOG_PARAM_DATA, linkedHashMap2);
        return GSON.toJson(linkedHashMap);
    }

    public String toUnsubscribeMessage() {
        Map linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "pusher:unsubscribe");
        Map linkedHashMap2 = new LinkedHashMap();
        linkedHashMap2.put("channel", this.name);
        linkedHashMap.put(ShareConstants.WEB_DIALOG_PARAM_DATA, linkedHashMap2);
        return GSON.toJson(linkedHashMap);
    }

    public void updateState(ChannelState channelState) {
        this.state = channelState;
        if (channelState == ChannelState.SUBSCRIBED && this.eventListener != null) {
            this.factory.queueOnEventThread(new C06722());
        }
    }

    public void setEventListener(ChannelEventListener channelEventListener) {
        this.eventListener = channelEventListener;
    }

    public ChannelEventListener getEventListener() {
        return this.eventListener;
    }

    public int compareTo(InternalChannel internalChannel) {
        return getName().compareTo(internalChannel.getName());
    }

    public String toString() {
        return String.format("[Public Channel: name=%s]", new Object[]{this.name});
    }

    private String extractDataFrom(String str) {
        return (String) ((Map) GSON.fromJson(str, Map.class)).get(ShareConstants.WEB_DIALOG_PARAM_DATA);
    }

    protected String[] getDisallowedNameExpressions() {
        return new String[]{"^private-.*", "^presence-.*"};
    }

    private void validateArguments(String str, SubscriptionEventListener subscriptionEventListener) {
        if (str == null) {
            subscriptionEventListener = new StringBuilder("Cannot bind or unbind to channel ");
            subscriptionEventListener.append(this.name);
            subscriptionEventListener.append(" with a null event name");
            throw new IllegalArgumentException(subscriptionEventListener.toString());
        } else if (subscriptionEventListener == null) {
            subscriptionEventListener = new StringBuilder("Cannot bind or unbind to channel ");
            subscriptionEventListener.append(this.name);
            subscriptionEventListener.append(" with a null listener");
            throw new IllegalArgumentException(subscriptionEventListener.toString());
        } else if (str.startsWith(INTERNAL_EVENT_PREFIX) != null) {
            StringBuilder stringBuilder = new StringBuilder("Cannot bind or unbind channel ");
            stringBuilder.append(this.name);
            stringBuilder.append(" with an internal event name such as ");
            stringBuilder.append(str);
            throw new IllegalArgumentException(stringBuilder.toString());
        } else if (this.state == ChannelState.UNSUBSCRIBED) {
            throw new IllegalStateException("Cannot bind or unbind to events on a channel that has been unsubscribed. Call Pusher.subscribe() to resubscribe to this channel");
        }
    }
}
