package com.pusher.client.util;

import com.pusher.client.Authorizer;
import com.pusher.client.PusherOptions;
import com.pusher.client.channel.impl.ChannelImpl;
import com.pusher.client.channel.impl.ChannelManager;
import com.pusher.client.channel.impl.PresenceChannelImpl;
import com.pusher.client.channel.impl.PrivateChannelImpl;
import com.pusher.client.connection.impl.InternalConnection;
import com.pusher.client.connection.websocket.WebSocketClientWrapper;
import com.pusher.client.connection.websocket.WebSocketConnection;
import com.pusher.client.connection.websocket.WebSocketListener;
import java.net.Proxy;
import java.net.URI;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import javax.net.ssl.SSLException;

public class Factory {
    private static final Object eventLock = new Object();
    private ChannelManager channelManager;
    private InternalConnection connection;
    private ExecutorService eventQueue;
    private ScheduledExecutorService timers;

    private static class DaemonThreadFactory implements ThreadFactory {
        private final String name;

        public DaemonThreadFactory(String str) {
            this.name = str;
        }

        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setDaemon(true);
            runnable = new StringBuilder("pusher-java-client ");
            runnable.append(this.name);
            thread.setName(runnable.toString());
            return thread;
        }
    }

    public synchronized InternalConnection getConnection(String str, PusherOptions pusherOptions) {
        if (this.connection == null) {
            try {
                this.connection = new WebSocketConnection(pusherOptions.buildUrl(str), pusherOptions.getActivityTimeout(), pusherOptions.getPongTimeout(), pusherOptions.getProxy(), this);
            } catch (String str2) {
                throw new IllegalArgumentException("Failed to initialise connection", str2);
            }
        }
        return this.connection;
    }

    public WebSocketClientWrapper newWebSocketClientWrapper(URI uri, Proxy proxy, WebSocketListener webSocketListener) throws SSLException {
        return new WebSocketClientWrapper(uri, proxy, webSocketListener);
    }

    public synchronized ScheduledExecutorService getTimers() {
        if (this.timers == null) {
            this.timers = Executors.newSingleThreadScheduledExecutor(new DaemonThreadFactory("timers"));
        }
        return this.timers;
    }

    public ChannelImpl newPublicChannel(String str) {
        return new ChannelImpl(str, this);
    }

    public PrivateChannelImpl newPrivateChannel(InternalConnection internalConnection, String str, Authorizer authorizer) {
        return new PrivateChannelImpl(internalConnection, str, authorizer, this);
    }

    public PresenceChannelImpl newPresenceChannel(InternalConnection internalConnection, String str, Authorizer authorizer) {
        return new PresenceChannelImpl(internalConnection, str, authorizer, this);
    }

    public synchronized ChannelManager getChannelManager() {
        if (this.channelManager == null) {
            this.channelManager = new ChannelManager(this);
        }
        return this.channelManager;
    }

    public synchronized void queueOnEventThread(final Runnable runnable) {
        if (this.eventQueue == null) {
            this.eventQueue = Executors.newSingleThreadExecutor(new DaemonThreadFactory("eventQueue"));
        }
        this.eventQueue.execute(new Runnable() {
            public void run() {
                synchronized (Factory.eventLock) {
                    runnable.run();
                }
            }
        });
    }

    public synchronized void shutdownThreads() {
        if (this.eventQueue != null) {
            this.eventQueue.shutdown();
            this.eventQueue = null;
        }
        if (this.timers != null) {
            this.timers.shutdown();
            this.timers = null;
        }
    }
}
