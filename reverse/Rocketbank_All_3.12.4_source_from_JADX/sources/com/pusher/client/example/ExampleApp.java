package com.pusher.client.example;

import com.google.gson.Gson;
import com.pusher.client.Pusher;
import com.pusher.client.PusherOptions;
import com.pusher.client.channel.ChannelEventListener;
import com.pusher.client.connection.ConnectionEventListener;
import com.pusher.client.connection.ConnectionState;
import com.pusher.client.connection.ConnectionStateChange;
import java.util.Map;

public class ExampleApp implements ChannelEventListener, ConnectionEventListener {
    private final String channelName;
    private final String eventName;
    private final Pusher pusher;
    private final long startTime = System.currentTimeMillis();

    public static void main(String[] strArr) {
        ExampleApp exampleApp = new ExampleApp(strArr);
    }

    public ExampleApp(String[] strArr) {
        String str = strArr.length > 0 ? strArr[0] : "161717a55e65825bacf1";
        this.channelName = strArr.length > 1 ? strArr[1] : "my-channel";
        this.eventName = strArr.length > 2 ? strArr[2] : "my-event";
        this.pusher = new Pusher(str, new PusherOptions().setEncrypted(true));
        this.pusher.connect(this, new ConnectionState[0]);
        this.pusher.subscribe(this.channelName, this, this.eventName);
        while (true) {
            try {
                Thread.sleep(1000);
            } catch (String[] strArr2) {
                strArr2.printStackTrace();
            }
        }
    }

    public void onConnectionStateChange(ConnectionStateChange connectionStateChange) {
        System.out.println(String.format("[%d] Connection state changed from [%s] to [%s]", new Object[]{Long.valueOf(timestamp()), connectionStateChange.getPreviousState(), connectionStateChange.getCurrentState()}));
    }

    public void onError(String str, String str2, Exception exception) {
        System.out.println(String.format("[%d] An error was received with message [%s], code [%s], exception [%s]", new Object[]{Long.valueOf(timestamp()), str, str2, exception}));
    }

    public void onEvent(String str, String str2, String str3) {
        System.out.println(String.format("[%d] Received event [%s] on channel [%s] with data [%s]", new Object[]{Long.valueOf(timestamp()), str2, str, str3}));
        System.out.println((Map) new Gson().fromJson(str3, Map.class));
    }

    public void onSubscriptionSucceeded(String str) {
        System.out.println(String.format("[%d] Subscription to channel [%s] succeeded", new Object[]{Long.valueOf(timestamp()), str}));
    }

    private long timestamp() {
        return System.currentTimeMillis() - this.startTime;
    }
}
