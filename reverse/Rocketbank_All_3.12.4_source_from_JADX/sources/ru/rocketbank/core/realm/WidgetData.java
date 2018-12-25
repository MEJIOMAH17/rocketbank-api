package ru.rocketbank.core.realm;

import io.realm.RealmList;
import io.realm.RealmObject;
import io.realm.WidgetDataRealmProxyInterface;
import io.realm.internal.RealmObjectProxy;

/* compiled from: WidgetData.kt */
public class WidgetData extends RealmObject implements WidgetDataRealmProxyInterface {
    private String balance;
    private RealmList<RealmWidgetFriend> friends;
    private long id;
    private int limit;
    private String miles;
    private String number;
    private RealmList<RealmOperation> operation;
    private String operator;
    private boolean unlimitedCashouts;
    private int usedOperation;

    public String realmGet$balance() {
        return this.balance;
    }

    public RealmList realmGet$friends() {
        return this.friends;
    }

    public long realmGet$id() {
        return this.id;
    }

    public int realmGet$limit() {
        return this.limit;
    }

    public String realmGet$miles() {
        return this.miles;
    }

    public String realmGet$number() {
        return this.number;
    }

    public RealmList realmGet$operation() {
        return this.operation;
    }

    public String realmGet$operator() {
        return this.operator;
    }

    public boolean realmGet$unlimitedCashouts() {
        return this.unlimitedCashouts;
    }

    public int realmGet$usedOperation() {
        return this.usedOperation;
    }

    public void realmSet$balance(String str) {
        this.balance = str;
    }

    public void realmSet$friends(RealmList realmList) {
        this.friends = realmList;
    }

    public void realmSet$id(long j) {
        this.id = j;
    }

    public void realmSet$limit(int i) {
        this.limit = i;
    }

    public void realmSet$miles(String str) {
        this.miles = str;
    }

    public void realmSet$number(String str) {
        this.number = str;
    }

    public void realmSet$operation(RealmList realmList) {
        this.operation = realmList;
    }

    public void realmSet$operator(String str) {
        this.operator = str;
    }

    public void realmSet$unlimitedCashouts(boolean z) {
        this.unlimitedCashouts = z;
    }

    public void realmSet$usedOperation(int i) {
        this.usedOperation = i;
    }

    public WidgetData() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$friends(new RealmList());
        realmSet$operation(new RealmList());
    }
}
