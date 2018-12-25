package ru.rocketbank.r2d2.manager.messsage;

/* compiled from: MessageTyping.kt */
public final class MessageTyping {
    private boolean typing;
    private MessageUser user;

    /* compiled from: MessageTyping.kt */
    public static final class MessageUser {
        private int id;
        private MessageUserInfo info;

        public final int getId() {
            return this.id;
        }

        public final void setId(int i) {
            this.id = i;
        }

        public final MessageUserInfo getInfo() {
            return this.info;
        }

        public final void setInfo(MessageUserInfo messageUserInfo) {
            this.info = messageUserInfo;
        }
    }

    /* compiled from: MessageTyping.kt */
    public static final class MessageUserInfo {
        private String avatar;
        private String name;
        private String permalink;

        public final String getName() {
            return this.name;
        }

        public final void setName(String str) {
            this.name = str;
        }

        public final String getAvatar() {
            return this.avatar;
        }

        public final void setAvatar(String str) {
            this.avatar = str;
        }

        public final String getPermalink() {
            return this.permalink;
        }

        public final void setPermalink(String str) {
            this.permalink = str;
        }
    }

    public final boolean getTyping() {
        return this.typing;
    }

    public final void setTyping(boolean z) {
        this.typing = z;
    }

    public final MessageUser getUser() {
        return this.user;
    }

    public final void setUser(MessageUser messageUser) {
        this.user = messageUser;
    }
}
