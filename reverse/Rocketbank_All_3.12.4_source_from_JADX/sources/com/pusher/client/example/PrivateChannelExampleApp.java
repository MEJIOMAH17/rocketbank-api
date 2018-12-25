package com.pusher.client.example;

import com.pusher.client.Pusher;
import com.pusher.client.PusherOptions;
import com.pusher.client.channel.PrivateChannel;
import com.pusher.client.channel.PrivateChannelEventListener;
import com.pusher.client.connection.ConnectionEventListener;
import com.pusher.client.connection.ConnectionState;
import com.pusher.client.connection.ConnectionStateChange;
import com.pusher.client.util.HttpAuthorizer;

public class PrivateChannelExampleApp implements PrivateChannelEventListener, ConnectionEventListener {
    private final PrivateChannel channel;
    private final String channelName;
    private final String eventName;
    private final Pusher pusher;

    public static void main(String[] strArr) {
        PrivateChannelExampleApp privateChannelExampleApp = new PrivateChannelExampleApp(strArr);
    }

    public PrivateChannelExampleApp(String[] strArr) {
        String str = strArr.length > 0 ? strArr[0] : "a87fe72c6f36272aa4b1";
        this.channelName = strArr.length > 1 ? strArr[1] : "private-my-channel";
        this.eventName = strArr.length > 2 ? strArr[2] : "my-event";
        this.pusher = new Pusher(str, new PusherOptions().setAuthorizer(new HttpAuthorizer("http://www.leggetter.co.uk/pusher/pusher-examples/php/authentication/src/private_auth.php")));
        this.pusher.connect(this, new ConnectionState[0]);
        this.channel = this.pusher.subscribePrivate(this.channelName, this, this.eventName);
        while (true) {
            try {
                Thread.sleep(1000);
            } catch (String[] strArr2) {
                strArr2.printStackTrace();
            }
        }
    }

    public void onConnectionStateChange(ConnectionStateChange connectionStateChange) {
        System.out.println(String.format("Connection state changed from [%s] to [%s]", new Object[]{connectionStateChange.getPreviousState(), connectionStateChange.getCurrentState()}));
    }

    public void onError(String str, String str2, Exception exception) {
        System.out.println(String.format("An error was received with message [%s], code [%s], exception [%s]", new Object[]{str, str2, exception}));
    }

    public void onEvent(String str, String str2, String str3) {
        System.out.println(String.format("Received event [%s] on channel [%s] with data [%s]", new Object[]{str2, str, str3}));
    }

    public void onSubscriptionSucceeded(String str) {
        System.out.println(String.format("Subscription to channel [%s] succeeded", new Object[]{this.channel.getName()}));
        this.channel.trigger("client-myEvent", "{\"myName\":\"Bob\"}");
    }

    public void onAuthenticationFailure(String str, Exception exception) {
        System.out.println(String.format("Authentication failure due to [%s], exception was [%s]", new Object[]{str, exception}));
    }
}
