package com.pusher.client.channel.impl;

import android.support.v4.app.NotificationCompat;
import com.facebook.AccessToken;
import com.facebook.share.internal.ShareConstants;
import com.google.gson.Gson;
import com.google.gson.annotations.SerializedName;
import com.pusher.client.AuthorizationFailureException;
import com.pusher.client.Authorizer;
import com.pusher.client.channel.ChannelEventListener;
import com.pusher.client.channel.PresenceChannel;
import com.pusher.client.channel.PresenceChannelEventListener;
import com.pusher.client.channel.SubscriptionEventListener;
import com.pusher.client.channel.User;
import com.pusher.client.connection.impl.InternalConnection;
import com.pusher.client.util.Factory;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class PresenceChannelImpl extends PrivateChannelImpl implements PresenceChannel {
    private static final Gson GSON = new Gson();
    private static final String MEMBER_ADDED_EVENT = "pusher_internal:member_added";
    private static final String MEMBER_REMOVED_EVENT = "pusher_internal:member_removed";
    private final Map<String, User> idToUserMap = Collections.synchronizedMap(new LinkedHashMap());
    private String myUserID;

    private class MemberData {
        @SerializedName("user_id")
        public String userId;
        @SerializedName("user_info")
        public Object userInfo;

        private MemberData() {
        }
    }

    private class Presence {
        @SerializedName("presence")
        public PresenceData presence;

        private Presence() {
        }
    }

    private class PresenceData {
        @SerializedName("count")
        public Integer count;
        @SerializedName("hash")
        public Map<String, Object> hash;
        @SerializedName("ids")
        public List<String> ids;

        private PresenceData() {
        }
    }

    public PresenceChannelImpl(InternalConnection internalConnection, String str, Authorizer authorizer, Factory factory) {
        super(internalConnection, str, authorizer, factory);
    }

    public Set<User> getUsers() {
        return new LinkedHashSet(this.idToUserMap.values());
    }

    public User getMe() {
        return (User) this.idToUserMap.get(this.myUserID);
    }

    public void onMessage(String str, String str2) {
        super.onMessage(str, str2);
        if (str.equals("pusher_internal:subscription_succeeded")) {
            handleSubscriptionSuccessfulMessage(str2);
        } else if (str.equals(MEMBER_ADDED_EVENT)) {
            handleMemberAddedEvent(str2);
        } else {
            if (str.equals(MEMBER_REMOVED_EVENT) != null) {
                handleMemberRemovedEvent(str2);
            }
        }
    }

    public String toSubscribeMessage() {
        String authResponse = getAuthResponse();
        try {
            Map map = (Map) GSON.fromJson(authResponse, Map.class);
            String str = (String) map.get("auth");
            Object obj = map.get("channel_data");
            storeMyUserId(obj);
            Map linkedHashMap = new LinkedHashMap();
            linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "pusher:subscribe");
            Map linkedHashMap2 = new LinkedHashMap();
            linkedHashMap2.put("channel", this.name);
            linkedHashMap2.put("auth", str);
            linkedHashMap2.put("channel_data", obj);
            linkedHashMap.put(ShareConstants.WEB_DIALOG_PARAM_DATA, linkedHashMap2);
            return GSON.toJson(linkedHashMap);
        } catch (Exception e) {
            throw new AuthorizationFailureException("Unable to parse response from Authorizer: ".concat(String.valueOf(authResponse)), e);
        }
    }

    public void bind(String str, SubscriptionEventListener subscriptionEventListener) {
        if (subscriptionEventListener instanceof PresenceChannelEventListener) {
            super.bind(str, subscriptionEventListener);
            return;
        }
        throw new IllegalArgumentException("Only instances of PresenceChannelEventListener can be bound to a presence channel");
    }

    protected String[] getDisallowedNameExpressions() {
        return new String[]{"^(?!presence-).*"};
    }

    public String toString() {
        return String.format("[Presence Channel: name=%s]", new Object[]{this.name});
    }

    private void handleSubscriptionSuccessfulMessage(String str) {
        str = extractPresenceDataFrom(str);
        List<String> list = str.ids;
        str = str.hash;
        for (String str2 : list) {
            this.idToUserMap.put(str2, new User(str2, str.get(str2) != null ? GSON.toJson(str.get(str2)) : null));
        }
        str = getEventListener();
        if (str != null) {
            ((PresenceChannelEventListener) str).onUsersInformationReceived(getName(), getUsers());
        }
    }

    private void handleMemberAddedEvent(String str) {
        MemberData memberData = (MemberData) GSON.fromJson(extractDataStringFrom(str), MemberData.class);
        String str2 = memberData.userId;
        User user = new User(str2, memberData.userInfo != null ? GSON.toJson(memberData.userInfo) : null);
        this.idToUserMap.put(str2, user);
        str = getEventListener();
        if (str != null) {
            ((PresenceChannelEventListener) str).userSubscribed(getName(), user);
        }
    }

    private void handleMemberRemovedEvent(String str) {
        User user = (User) this.idToUserMap.remove(((MemberData) GSON.fromJson(extractDataStringFrom(str), MemberData.class)).userId);
        ChannelEventListener eventListener = getEventListener();
        if (eventListener != null) {
            ((PresenceChannelEventListener) eventListener).userUnsubscribed(getName(), user);
        }
    }

    private static String extractDataStringFrom(String str) {
        return (String) ((Map) GSON.fromJson(str, Map.class)).get(ShareConstants.WEB_DIALOG_PARAM_DATA);
    }

    private static PresenceData extractPresenceDataFrom(String str) {
        return ((Presence) GSON.fromJson(extractDataStringFrom(str), Presence.class)).presence;
    }

    private void storeMyUserId(Object obj) {
        this.myUserID = String.valueOf(((Map) GSON.fromJson((String) obj, Map.class)).get(AccessToken.USER_ID_KEY));
    }
}
