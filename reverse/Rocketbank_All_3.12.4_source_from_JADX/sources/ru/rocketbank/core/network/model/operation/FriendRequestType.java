package ru.rocketbank.core.network.model.operation;

/* compiled from: FriendRequestType.kt */
public enum FriendRequestType {
    ;
    
    private final int type;

    protected FriendRequestType(int i) {
        this.type = i;
    }

    public final int getType() {
        return this.type;
    }
}
