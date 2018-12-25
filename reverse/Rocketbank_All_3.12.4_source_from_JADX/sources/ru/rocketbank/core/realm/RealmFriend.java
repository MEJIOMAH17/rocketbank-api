package ru.rocketbank.core.realm;

import io.realm.RealmFriendRealmProxyInterface;
import io.realm.RealmObject;
import io.realm.internal.RealmObjectProxy;

/* compiled from: RealmFriend.kt */
public class RealmFriend extends RealmObject implements RealmFriendRealmProxyInterface {
    public static final Companion Companion = new Companion();
    private String email;
    private String firstName;
    private long id;
    private String lastName;
    private String mobilePhone;
    private String userpicUrl;

    /* compiled from: RealmFriend.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public String realmGet$email() {
        return this.email;
    }

    public String realmGet$firstName() {
        return this.firstName;
    }

    public long realmGet$id() {
        return this.id;
    }

    public String realmGet$lastName() {
        return this.lastName;
    }

    public String realmGet$mobilePhone() {
        return this.mobilePhone;
    }

    public String realmGet$userpicUrl() {
        return this.userpicUrl;
    }

    public void realmSet$email(String str) {
        this.email = str;
    }

    public void realmSet$firstName(String str) {
        this.firstName = str;
    }

    public void realmSet$id(long j) {
        this.id = j;
    }

    public void realmSet$lastName(String str) {
        this.lastName = str;
    }

    public void realmSet$mobilePhone(String str) {
        this.mobilePhone = str;
    }

    public void realmSet$userpicUrl(String str) {
        this.userpicUrl = str;
    }

    public RealmFriend() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }
}
