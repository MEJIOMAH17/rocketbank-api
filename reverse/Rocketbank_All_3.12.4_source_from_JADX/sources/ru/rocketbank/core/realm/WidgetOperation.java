package ru.rocketbank.core.realm;

import io.realm.RealmObject;
import io.realm.WidgetOperationRealmProxyInterface;
import io.realm.internal.RealmObjectProxy;

/* compiled from: WidgetOperation.kt */
public class WidgetOperation extends RealmObject implements WidgetOperationRealmProxyInterface {
    private String amountText;
    private byte[] bitmap;
    private String iconUrl;
    private String name;

    public String realmGet$amountText() {
        return this.amountText;
    }

    public byte[] realmGet$bitmap() {
        return this.bitmap;
    }

    public String realmGet$iconUrl() {
        return this.iconUrl;
    }

    public String realmGet$name() {
        return this.name;
    }

    public void realmSet$amountText(String str) {
        this.amountText = str;
    }

    public void realmSet$bitmap(byte[] bArr) {
        this.bitmap = bArr;
    }

    public void realmSet$iconUrl(String str) {
        this.iconUrl = str;
    }

    public void realmSet$name(String str) {
        this.name = str;
    }

    public WidgetOperation() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }
}
