package ru.rocketbank.core.model.shop;

import com.facebook.share.internal.ShareConstants;
import com.google.gson.JsonElement;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ShopOrder.kt */
public final class ShopOrder {
    private final Address address;
    private final double amount;
    private final String comment;
    private final List<Item> items;

    /* compiled from: ShopOrder.kt */
    public static final class Address {
        private final JsonElement data;
        private final String string;

        public static /* bridge */ /* synthetic */ Address copy$default(Address address, String str, JsonElement jsonElement, int i, Object obj) {
            if ((i & 1) != 0) {
                str = address.string;
            }
            if ((i & 2) != 0) {
                jsonElement = address.data;
            }
            return address.copy(str, jsonElement);
        }

        public final String component1() {
            return this.string;
        }

        public final JsonElement component2() {
            return this.data;
        }

        public final Address copy(String str, JsonElement jsonElement) {
            Intrinsics.checkParameterIsNotNull(str, "string");
            Intrinsics.checkParameterIsNotNull(jsonElement, ShareConstants.WEB_DIALOG_PARAM_DATA);
            return new Address(str, jsonElement);
        }

        public final boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof Address) {
                    Address address = (Address) obj;
                    if (Intrinsics.areEqual(this.string, address.string) && Intrinsics.areEqual(this.data, address.data)) {
                    }
                }
                return false;
            }
            return true;
        }

        public final int hashCode() {
            String str = this.string;
            int i = 0;
            int hashCode = (str != null ? str.hashCode() : 0) * 31;
            JsonElement jsonElement = this.data;
            if (jsonElement != null) {
                i = jsonElement.hashCode();
            }
            return hashCode + i;
        }

        public final String toString() {
            StringBuilder stringBuilder = new StringBuilder("Address(string=");
            stringBuilder.append(this.string);
            stringBuilder.append(", data=");
            stringBuilder.append(this.data);
            stringBuilder.append(")");
            return stringBuilder.toString();
        }

        public Address(String str, JsonElement jsonElement) {
            Intrinsics.checkParameterIsNotNull(str, "string");
            Intrinsics.checkParameterIsNotNull(jsonElement, ShareConstants.WEB_DIALOG_PARAM_DATA);
            this.string = str;
            this.data = jsonElement;
        }

        public final JsonElement getData() {
            return this.data;
        }

        public final String getString() {
            return this.string;
        }
    }

    /* compiled from: ShopOrder.kt */
    public static final class Item {
        private final int count;
        private final long id;
        private final long variant_id;

        public static /* bridge */ /* synthetic */ Item copy$default(Item item, long j, int i, long j2, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                j = item.id;
            }
            long j3 = j;
            if ((i2 & 2) != 0) {
                i = item.count;
            }
            int i3 = i;
            if ((i2 & 4) != 0) {
                j2 = item.variant_id;
            }
            return item.copy(j3, i3, j2);
        }

        public final long component1() {
            return this.id;
        }

        public final int component2() {
            return this.count;
        }

        public final long component3() {
            return this.variant_id;
        }

        public final Item copy(long j, int i, long j2) {
            return new Item(j, i, j2);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Item) {
                Item item = (Item) obj;
                if (this.id == item.id) {
                    if (this.count == item.count) {
                        if (this.variant_id == item.variant_id) {
                            return true;
                        }
                    }
                }
            }
            return false;
        }

        public final int hashCode() {
            long j = this.id;
            int i = ((((int) (j ^ (j >>> 32))) * 31) + this.count) * 31;
            long j2 = this.variant_id;
            return i + ((int) (j2 ^ (j2 >>> 32)));
        }

        public final String toString() {
            StringBuilder stringBuilder = new StringBuilder("Item(id=");
            stringBuilder.append(this.id);
            stringBuilder.append(", count=");
            stringBuilder.append(this.count);
            stringBuilder.append(", variant_id=");
            stringBuilder.append(this.variant_id);
            stringBuilder.append(")");
            return stringBuilder.toString();
        }

        public Item(long j, int i, long j2) {
            this.id = j;
            this.count = i;
            this.variant_id = j2;
        }

        public final int getCount() {
            return this.count;
        }

        public final long getId() {
            return this.id;
        }

        public final long getVariant_id() {
            return this.variant_id;
        }
    }

    public static /* bridge */ /* synthetic */ ShopOrder copy$default(ShopOrder shopOrder, List list, String str, double d, Address address, int i, Object obj) {
        if ((i & 1) != 0) {
            list = shopOrder.items;
        }
        if ((i & 2) != 0) {
            str = shopOrder.comment;
        }
        String str2 = str;
        if ((i & 4) != 0) {
            d = shopOrder.amount;
        }
        double d2 = d;
        if ((i & 8) != 0) {
            address = shopOrder.address;
        }
        return shopOrder.copy(list, str2, d2, address);
    }

    public final List<Item> component1() {
        return this.items;
    }

    public final String component2() {
        return this.comment;
    }

    public final double component3() {
        return this.amount;
    }

    public final Address component4() {
        return this.address;
    }

    public final ShopOrder copy(List<Item> list, String str, double d, Address address) {
        Intrinsics.checkParameterIsNotNull(list, "items");
        Intrinsics.checkParameterIsNotNull(address, "address");
        return new ShopOrder(list, str, d, address);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof ShopOrder) {
                ShopOrder shopOrder = (ShopOrder) obj;
                if (Intrinsics.areEqual(this.items, shopOrder.items) && Intrinsics.areEqual(this.comment, shopOrder.comment) && Double.compare(this.amount, shopOrder.amount) == 0 && Intrinsics.areEqual(this.address, shopOrder.address)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        List list = this.items;
        int i = 0;
        int hashCode = (list != null ? list.hashCode() : 0) * 31;
        String str = this.comment;
        hashCode = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
        long doubleToLongBits = Double.doubleToLongBits(this.amount);
        hashCode = (hashCode + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)))) * 31;
        Address address = this.address;
        if (address != null) {
            i = address.hashCode();
        }
        return hashCode + i;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("ShopOrder(items=");
        stringBuilder.append(this.items);
        stringBuilder.append(", comment=");
        stringBuilder.append(this.comment);
        stringBuilder.append(", amount=");
        stringBuilder.append(this.amount);
        stringBuilder.append(", address=");
        stringBuilder.append(this.address);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public ShopOrder(List<Item> list, String str, double d, Address address) {
        Intrinsics.checkParameterIsNotNull(list, "items");
        Intrinsics.checkParameterIsNotNull(address, "address");
        this.items = list;
        this.comment = str;
        this.amount = d;
        this.address = address;
    }

    public final Address getAddress() {
        return this.address;
    }

    public final double getAmount() {
        return this.amount;
    }

    public final String getComment() {
        return this.comment;
    }

    public final List<Item> getItems() {
        return this.items;
    }
}
