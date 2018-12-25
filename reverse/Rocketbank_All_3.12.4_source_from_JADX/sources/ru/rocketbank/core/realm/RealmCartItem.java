package ru.rocketbank.core.realm;

import io.realm.RealmCartItemRealmProxyInterface;
import io.realm.RealmObject;
import io.realm.internal.RealmObjectProxy;

/* compiled from: RealmCartItem.kt */
public class RealmCartItem extends RealmObject implements RealmCartItemRealmProxyInterface {
    private RealmString colorID;
    private long id;
    private RealmString sizeID;
    private long storeItemId;

    public RealmString realmGet$colorID() {
        return this.colorID;
    }

    public long realmGet$id() {
        return this.id;
    }

    public RealmString realmGet$sizeID() {
        return this.sizeID;
    }

    public long realmGet$storeItemId() {
        return this.storeItemId;
    }

    public void realmSet$colorID(RealmString realmString) {
        this.colorID = realmString;
    }

    public void realmSet$id(long j) {
        this.id = j;
    }

    public void realmSet$sizeID(RealmString realmString) {
        this.sizeID = realmString;
    }

    public void realmSet$storeItemId(long j) {
        this.storeItemId = j;
    }

    public RealmCartItem() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$storeItemId(-1);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public RealmCartItem(long r2, ru.rocketbank.core.model.shop.CartItem r4) {
        /*
        r1 = this;
        r0 = "cartItem";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r4, r0);
        r1.<init>();
        r0 = r1 instanceof io.realm.internal.RealmObjectProxy;
        if (r0 == 0) goto L_0x0012;
    L_0x000c:
        r0 = r1;
        r0 = (io.realm.internal.RealmObjectProxy) r0;
        r0.realm$injectObjectContext();
    L_0x0012:
        r1.realmSet$id(r2);
        r2 = r4.getShopItem();
        r2 = r2.getId();
        r1.realmSet$storeItemId(r2);
        r2 = new ru.rocketbank.core.realm.RealmString;
        r3 = r4.getSize();
        if (r3 == 0) goto L_0x002e;
    L_0x0028:
        r3 = r3.getId();
        if (r3 != 0) goto L_0x0030;
    L_0x002e:
        r3 = "";
    L_0x0030:
        r2.<init>(r3);
        r1.realmSet$sizeID(r2);
        r2 = new ru.rocketbank.core.realm.RealmString;
        r3 = r4.getColor();
        if (r3 == 0) goto L_0x0044;
    L_0x003e:
        r3 = r3.getId();
        if (r3 != 0) goto L_0x0046;
    L_0x0044:
        r3 = "";
    L_0x0046:
        r2.<init>(r3);
        r1.realmSet$colorID(r2);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.realm.RealmCartItem.<init>(long, ru.rocketbank.core.model.shop.CartItem):void");
    }
}
