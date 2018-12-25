package com.pusher.client.channel.impl;

import android.support.v4.app.NotificationCompat;
import com.facebook.share.internal.ShareConstants;
import com.google.gson.Gson;
import com.pusher.client.AuthorizationFailureException;
import com.pusher.client.Authorizer;
import com.pusher.client.channel.PrivateChannel;
import com.pusher.client.channel.PrivateChannelEventListener;
import com.pusher.client.channel.SubscriptionEventListener;
import com.pusher.client.connection.impl.InternalConnection;
import com.pusher.client.util.Factory;
import java.util.LinkedHashMap;
import java.util.Map;

public class PrivateChannelImpl extends ChannelImpl implements PrivateChannel {
    private static final String CLIENT_EVENT_PREFIX = "client-";
    private static final Gson GSON = new Gson();
    private final Authorizer authorizer;
    private final InternalConnection connection;

    public PrivateChannelImpl(InternalConnection internalConnection, String str, Authorizer authorizer, Factory factory) {
        super(str, factory);
        this.connection = internalConnection;
        this.authorizer = authorizer;
    }

    public void trigger(java.lang.String r5, java.lang.String r6) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r4 = this;
        if (r5 == 0) goto L_0x00c5;
    L_0x0002:
        r0 = "client-";
        r0 = r5.startsWith(r0);
        if (r0 != 0) goto L_0x000c;
    L_0x000a:
        goto L_0x00c5;
    L_0x000c:
        r0 = r4.state;
        r1 = com.pusher.client.channel.ChannelState.SUBSCRIBED;
        if (r0 == r1) goto L_0x0043;
    L_0x0012:
        r6 = new java.lang.IllegalStateException;
        r0 = new java.lang.StringBuilder;
        r1 = "Cannot trigger event ";
        r0.<init>(r1);
        r0.append(r5);
        r5 = " because channel ";
        r0.append(r5);
        r5 = r4.name;
        r0.append(r5);
        r5 = " is in ";
        r0.append(r5);
        r5 = r4.state;
        r5 = r5.toString();
        r0.append(r5);
        r5 = " state";
        r0.append(r5);
        r5 = r0.toString();
        r6.<init>(r5);
        throw r6;
    L_0x0043:
        r0 = r4.connection;
        r0 = r0.getState();
        r1 = com.pusher.client.connection.ConnectionState.CONNECTED;
        if (r0 == r1) goto L_0x0078;
    L_0x004d:
        r6 = new java.lang.IllegalStateException;
        r0 = new java.lang.StringBuilder;
        r1 = "Cannot trigger event ";
        r0.<init>(r1);
        r0.append(r5);
        r5 = " because connection is in ";
        r0.append(r5);
        r5 = r4.connection;
        r5 = r5.getState();
        r5 = r5.toString();
        r0.append(r5);
        r5 = " state";
        r0.append(r5);
        r5 = r0.toString();
        r6.<init>(r5);
        throw r6;
    L_0x0078:
        r0 = GSON;	 Catch:{ JsonSyntaxException -> 0x00a4 }
        r1 = java.util.Map.class;	 Catch:{ JsonSyntaxException -> 0x00a4 }
        r0 = r0.fromJson(r6, r1);	 Catch:{ JsonSyntaxException -> 0x00a4 }
        r0 = (java.util.Map) r0;	 Catch:{ JsonSyntaxException -> 0x00a4 }
        r1 = new java.util.LinkedHashMap;	 Catch:{ JsonSyntaxException -> 0x00a4 }
        r1.<init>();	 Catch:{ JsonSyntaxException -> 0x00a4 }
        r2 = "event";	 Catch:{ JsonSyntaxException -> 0x00a4 }
        r1.put(r2, r5);	 Catch:{ JsonSyntaxException -> 0x00a4 }
        r2 = "channel";	 Catch:{ JsonSyntaxException -> 0x00a4 }
        r3 = r4.name;	 Catch:{ JsonSyntaxException -> 0x00a4 }
        r1.put(r2, r3);	 Catch:{ JsonSyntaxException -> 0x00a4 }
        r2 = "data";	 Catch:{ JsonSyntaxException -> 0x00a4 }
        r1.put(r2, r0);	 Catch:{ JsonSyntaxException -> 0x00a4 }
        r0 = GSON;	 Catch:{ JsonSyntaxException -> 0x00a4 }
        r0 = r0.toJson(r1);	 Catch:{ JsonSyntaxException -> 0x00a4 }
        r1 = r4.connection;	 Catch:{ JsonSyntaxException -> 0x00a4 }
        r1.sendMessage(r0);	 Catch:{ JsonSyntaxException -> 0x00a4 }
        return;
    L_0x00a4:
        r0 = new java.lang.IllegalArgumentException;
        r1 = new java.lang.StringBuilder;
        r2 = "Cannot trigger event ";
        r1.<init>(r2);
        r1.append(r5);
        r5 = " because \"";
        r1.append(r5);
        r1.append(r6);
        r5 = "\" could not be parsed as valid JSON";
        r1.append(r5);
        r5 = r1.toString();
        r0.<init>(r5);
        throw r0;
    L_0x00c5:
        r6 = new java.lang.IllegalArgumentException;
        r0 = new java.lang.StringBuilder;
        r1 = "Cannot trigger event ";
        r0.<init>(r1);
        r0.append(r5);
        r5 = ": client events must start with \"client-\"";
        r0.append(r5);
        r5 = r0.toString();
        r6.<init>(r5);
        throw r6;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.pusher.client.channel.impl.PrivateChannelImpl.trigger(java.lang.String, java.lang.String):void");
    }

    public void bind(String str, SubscriptionEventListener subscriptionEventListener) {
        if (subscriptionEventListener instanceof PrivateChannelEventListener) {
            super.bind(str, subscriptionEventListener);
            return;
        }
        throw new IllegalArgumentException("Only instances of PrivateChannelEventListener can be bound to a private channel");
    }

    public String toSubscribeMessage() {
        String authResponse = getAuthResponse();
        try {
            String str = (String) ((Map) GSON.fromJson(authResponse, Map.class)).get("auth");
            Map linkedHashMap = new LinkedHashMap();
            linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "pusher:subscribe");
            Map linkedHashMap2 = new LinkedHashMap();
            linkedHashMap2.put("channel", this.name);
            linkedHashMap2.put("auth", str);
            linkedHashMap.put(ShareConstants.WEB_DIALOG_PARAM_DATA, linkedHashMap2);
            return GSON.toJson(linkedHashMap);
        } catch (Exception e) {
            throw new AuthorizationFailureException("Unable to parse response from Authorizer: ".concat(String.valueOf(authResponse)), e);
        }
    }

    protected String[] getDisallowedNameExpressions() {
        return new String[]{"^(?!private-).*"};
    }

    protected String getAuthResponse() {
        return this.authorizer.authorize(getName(), this.connection.getSocketId());
    }

    public String toString() {
        return String.format("[Private Channel: name=%s]", new Object[]{this.name});
    }
}
