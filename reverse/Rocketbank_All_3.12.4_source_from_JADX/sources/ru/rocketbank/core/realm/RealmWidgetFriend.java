package ru.rocketbank.core.realm;

import io.realm.RealmObject;
import io.realm.RealmWidgetFriendRealmProxyInterface;
import io.realm.internal.RealmObjectProxy;

/* compiled from: RealmWidgetFriend.kt */
public class RealmWidgetFriend extends RealmObject implements RealmWidgetFriendRealmProxyInterface {
    private String firstName;
    private int id;
    private String lastName;
    private String userpicUrl;

    public String realmGet$firstName() {
        return this.firstName;
    }

    public int realmGet$id() {
        return this.id;
    }

    public String realmGet$lastName() {
        return this.lastName;
    }

    public String realmGet$userpicUrl() {
        return this.userpicUrl;
    }

    public void realmSet$firstName(String str) {
        this.firstName = str;
    }

    public void realmSet$id(int i) {
        this.id = i;
    }

    public void realmSet$lastName(String str) {
        this.lastName = str;
    }

    public void realmSet$userpicUrl(String str) {
        this.userpicUrl = str;
    }

    public RealmWidgetFriend() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }
}
