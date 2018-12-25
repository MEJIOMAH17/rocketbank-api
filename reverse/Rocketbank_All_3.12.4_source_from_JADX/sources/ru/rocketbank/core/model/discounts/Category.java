package ru.rocketbank.core.model.discounts;

import java.io.Serializable;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Category.kt */
public final class Category implements Serializable {
    private List<? extends Discount> discounts;
    private String name;

    public final List<Discount> getDiscounts() {
        return this.discounts;
    }

    public final void setDiscounts(List<? extends Discount> list) {
        this.discounts = list;
    }

    public final String getName() {
        return this.name;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null) {
            if ((Intrinsics.areEqual(getClass(), obj.getClass()) ^ 1) == 0) {
                return Intrinsics.areEqual(this.name, ((Category) obj).name);
            }
        }
        return null;
    }

    public final int hashCode() {
        String str = this.name;
        if (str == null) {
            Intrinsics.throwNpe();
        }
        return str.hashCode();
    }
}
