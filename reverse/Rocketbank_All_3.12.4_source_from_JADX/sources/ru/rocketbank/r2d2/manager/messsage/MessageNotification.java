package ru.rocketbank.r2d2.manager.messsage;

/* compiled from: MessageNotification.kt */
public final class MessageNotification {
    public static final Companion Companion = new Companion();
    private static final int TYPE_CONNECTED = 0;
    private static final int TYPE_DISCONNECTED = 1;
    private static final int TYPE_MESSAGE = 2;
    private static final int TYPE_READ = 4;
    private static final int TYPE_TYPING = 3;
    private String channelName;
    private String data;
    private String eventName;
    private int type;

    /* compiled from: MessageNotification.kt */
    public static final class Companion {
        private Companion() {
        }

        public final int getTYPE_CONNECTED() {
            return MessageNotification.TYPE_CONNECTED;
        }

        public final int getTYPE_DISCONNECTED() {
            return MessageNotification.TYPE_DISCONNECTED;
        }

        public final int getTYPE_MESSAGE() {
            return MessageNotification.TYPE_MESSAGE;
        }

        public final int getTYPE_TYPING() {
            return MessageNotification.TYPE_TYPING;
        }

        public final int getTYPE_READ() {
            return MessageNotification.TYPE_READ;
        }
    }

    public final int getType() {
        return this.type;
    }

    public final void setType(int i) {
        this.type = i;
    }

    public final String getChannelName() {
        return this.channelName;
    }

    public final void setChannelName(String str) {
        this.channelName = str;
    }

    public final String getEventName() {
        return this.eventName;
    }

    public final void setEventName(String str) {
        this.eventName = str;
    }

    public final String getData() {
        return this.data;
    }

    public final void setData(String str) {
        this.data = str;
    }
}
