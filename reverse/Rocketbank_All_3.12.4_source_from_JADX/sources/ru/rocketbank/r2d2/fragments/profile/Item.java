package ru.rocketbank.r2d2.fragments.profile;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: Item.kt */
public final class Item {
    private int id;
    private String title;
    private int type;
    private String value;

    public final int getId() {
        return this.id;
    }

    public final void setId(int i) {
        this.id = i;
    }

    public final int getType() {
        return this.type;
    }

    public final void setType(int i) {
        this.type = i;
    }

    public final String getTitle() {
        return this.title;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public final String getValue() {
        return this.value;
    }

    public final void setValue(String str) {
        this.value = str;
    }

    public Item(int i, int i2) {
        this.type = i;
        this.id = i2;
    }

    public Item(int i, int i2, String str, String str2) {
        Intrinsics.checkParameterIsNotNull(str, "value");
        this.type = i;
        this.id = i2;
        this.value = str;
        this.title = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null) {
            if ((Intrinsics.areEqual(getClass(), obj.getClass()) ^ 1) == 0) {
                Item item = (Item) obj;
                return this.type == item.type && this.id == item.id;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.type * 31) + this.id;
    }
}
