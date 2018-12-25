package ru.rocketbank.core.model.shop;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.facebook.share.internal.ShareConstants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import ru.rocketbank.core.network.model.ShopImage;

/* compiled from: ShopItem.kt */
public class ShopItem implements Parcelable {
    public static final Creator<ShopItem> CREATOR = new ShopItem$Companion$CREATOR$1();
    public static final Companion Companion = new Companion();
    private final ShopImage cart_image;
    private List<Color> colors;
    private final String description;
    private final String feedDescription;
    private final long id;
    private final ShopImage image;
    private final List<ShopImage> images;
    private final double price;
    private final Double price_old;
    private final String price_replacement;
    private final String promoText;
    private final int promoTextColor;
    private final boolean promoTextFront;
    private final Float promoTitleOpacity;
    private List<Size> sizes;
    private final String sizes_table_url;
    private final String structure;
    private final int textColor;
    private final String title;
    private final List<Variant> variants;

    /* compiled from: ShopItem.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public int describeContents() {
        return 0;
    }

    public ShopItem(long j, String str, String str2, String str3, ShopImage shopImage, double d, int i, List<Size> list, Double d2, List<ShopImage> list2, ShopImage shopImage2, String str4, String str5, String str6, String str7, boolean z, int i2, Float f, List<Variant> list3, List<Color> list4) {
        Collection arrayList;
        String str8 = str;
        String str9 = str2;
        Intrinsics.checkParameterIsNotNull(str8, ShareConstants.WEB_DIALOG_PARAM_TITLE);
        Intrinsics.checkParameterIsNotNull(str9, "description");
        this.id = j;
        this.title = str8;
        this.description = str9;
        this.feedDescription = str3;
        this.image = shopImage;
        this.price = d;
        this.textColor = i;
        this.sizes = list;
        this.price_old = d2;
        this.images = list2;
        this.cart_image = shopImage2;
        this.price_replacement = str4;
        this.structure = str5;
        this.promoText = str6;
        this.sizes_table_url = str7;
        this.promoTextFront = z;
        this.promoTextColor = i2;
        this.promoTitleOpacity = f;
        this.variants = list3;
        this.colors = list4;
        List list5 = this.variants;
        List list6 = null;
        if (list5 != null) {
            Collection arrayList2 = new ArrayList();
            for (Object next : list5) {
                if ((((Variant) next).getSize() != null ? 1 : null) != null) {
                    arrayList2.add(next);
                }
            }
            Iterable<Variant> iterable = (List) arrayList2;
            arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault$251b5948(iterable));
            for (Variant variant : iterable) {
                String size = variant.getSize();
                if (size == null) {
                    Intrinsics.throwNpe();
                }
                arrayList.add(new Size(size, null, variant.getAvailable(), 2, null));
            }
            Iterable iterable2 = (List) arrayList;
            HashSet hashSet = new HashSet();
            ArrayList arrayList3 = new ArrayList();
            for (Object next2 : iterable2) {
                if (hashSet.add(((Size) next2).getId())) {
                    arrayList3.add(next2);
                }
            }
            list5 = arrayList3;
        } else {
            list5 = null;
        }
        r0.sizes = list5;
        list5 = r0.variants;
        if (list5 != null) {
            Collection arrayList4 = new ArrayList();
            for (Object next3 : list5) {
                if ((((Variant) next3).getColor() != null ? 1 : null) != null) {
                    arrayList4.add(next3);
                }
            }
            arrayList = new ArrayList();
            for (Object next4 : (List) arrayList4) {
                if (((Variant) next4).getAvailable()) {
                    arrayList.add(next4);
                }
            }
            Iterable<Variant> iterable3 = (List) arrayList;
            arrayList4 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault$251b5948(iterable3));
            for (Variant color : iterable3) {
                String color2 = color.getColor();
                if (color2 == null) {
                    Intrinsics.throwNpe();
                }
                arrayList4.add(new Color(color2, null, false, 6, null));
            }
            Iterable iterable4 = (List) arrayList4;
            HashSet hashSet2 = new HashSet();
            ArrayList arrayList5 = new ArrayList();
            for (Object next5 : iterable4) {
                if (hashSet2.add(((Color) next5).getId())) {
                    arrayList5.add(next5);
                }
            }
            list6 = arrayList5;
        }
        r0.colors = list6;
    }

    public final long getId() {
        return this.id;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getFeedDescription() {
        return this.feedDescription;
    }

    public final ShopImage getImage() {
        return this.image;
    }

    public final double getPrice() {
        return this.price;
    }

    public final int getTextColor() {
        return this.textColor;
    }

    public final List<Size> getSizes() {
        return this.sizes;
    }

    public final void setSizes(List<Size> list) {
        this.sizes = list;
    }

    public final Double getPrice_old() {
        return this.price_old;
    }

    public final List<ShopImage> getImages() {
        return this.images;
    }

    public final ShopImage getCart_image() {
        return this.cart_image;
    }

    public final String getPrice_replacement() {
        return this.price_replacement;
    }

    public final String getStructure() {
        return this.structure;
    }

    public final String getPromoText() {
        return this.promoText;
    }

    public final String getSizes_table_url() {
        return this.sizes_table_url;
    }

    public final boolean getPromoTextFront() {
        return this.promoTextFront;
    }

    public final int getPromoTextColor() {
        return this.promoTextColor;
    }

    public final Float getPromoTitleOpacity() {
        return this.promoTitleOpacity;
    }

    public final List<Variant> getVariants() {
        return this.variants;
    }

    public /* synthetic */ ShopItem(long j, String str, String str2, String str3, ShopImage shopImage, double d, int i, List list, Double d2, List list2, ShopImage shopImage2, String str4, String str5, String str6, String str7, boolean z, int i2, Float f, List list3, List list4, int i3, Ref ref) {
        int i4 = i3;
        this(j, str, str2, (i4 & 8) != 0 ? null : str3, (i4 & 16) != 0 ? null : shopImage, d, i, (i4 & 128) != 0 ? null : list, (i4 & 256) != 0 ? null : d2, (i4 & 512) != 0 ? null : list2, (i4 & 1024) != 0 ? null : shopImage2, (i4 & 2048) != 0 ? null : str4, (i4 & 4096) != 0 ? null : str5, (i4 & 8192) != 0 ? null : str6, (i4 & 16384) != 0 ? null : str7, (32768 & i4) != 0 ? true : z, (65536 & i4) != 0 ? -1 : i2, (131072 & i4) != 0 ? null : f, (262144 & i4) != 0 ? null : list3, (i4 & 524288) != 0 ? null : list4);
    }

    public final List<Color> getColors() {
        return this.colors;
    }

    public final void setColors(List<Color> list) {
        this.colors = list;
    }

    public ShopItem(Parcel parcel) {
        Parcel parcel2 = parcel;
        Intrinsics.checkParameterIsNotNull(parcel2, "source");
        long readLong = parcel.readLong();
        String readString = parcel.readString();
        Intrinsics.checkExpressionValueIsNotNull(readString, "source.readString()");
        String readString2 = parcel.readString();
        Intrinsics.checkExpressionValueIsNotNull(readString2, "source.readString()");
        String readString3 = parcel.readString();
        ShopImage shopImage = (ShopImage) parcel2.readParcelable(ShopImage.class.getClassLoader());
        double readDouble = parcel.readDouble();
        int readInt = parcel.readInt();
        List createTypedArrayList = parcel2.createTypedArrayList(Size.CREATOR);
        Double d = (Double) parcel2.readValue(Double.TYPE.getClassLoader());
        List createTypedArrayList2 = parcel2.createTypedArrayList(ShopImage.CREATOR);
        ShopImage shopImage2 = (ShopImage) parcel2.readParcelable(ShopImage.class.getClassLoader());
        String readString4 = parcel.readString();
        String readString5 = parcel.readString();
        String readString6 = parcel.readString();
        this(readLong, readString, readString2, readString3, shopImage, readDouble, readInt, createTypedArrayList, d, createTypedArrayList2, shopImage2, readString4, readString5, parcel.readString(), readString6, 1 == parcel.readInt(), parcel.readInt(), (Float) parcel2.readValue(Float.TYPE.getClassLoader()), parcel2.createTypedArrayList(Variant.CREATOR), parcel2.createTypedArrayList(Color.CREATOR));
    }

    public void writeToParcel(Parcel parcel, int i) {
        if (parcel != null) {
            parcel.writeLong(this.id);
        }
        if (parcel != null) {
            parcel.writeString(this.title);
        }
        if (parcel != null) {
            parcel.writeString(this.description);
        }
        if (parcel != null) {
            parcel.writeString(this.feedDescription);
        }
        if (parcel != null) {
            parcel.writeParcelable(this.image, i);
        }
        if (parcel != null) {
            parcel.writeDouble(this.price);
        }
        if (parcel != null) {
            parcel.writeInt(this.textColor);
        }
        if (parcel != null) {
            parcel.writeTypedList(this.sizes);
        }
        if (parcel != null) {
            parcel.writeValue(this.price_old);
        }
        if (parcel != null) {
            parcel.writeTypedList(this.images);
        }
        if (parcel != null) {
            parcel.writeParcelable(this.cart_image, i);
        }
        if (parcel != null) {
            parcel.writeString(this.price_replacement);
        }
        if (parcel != null) {
            parcel.writeString(this.structure);
        }
        if (parcel != null) {
            parcel.writeString(this.sizes_table_url);
        }
        if (parcel != null) {
            parcel.writeString(this.promoText);
        }
        if (parcel != null) {
            parcel.writeInt(this.promoTextFront);
        }
        if (parcel != null) {
            parcel.writeInt(this.promoTextColor);
        }
        if (parcel != null) {
            parcel.writeValue(this.promoTitleOpacity);
        }
        if (parcel != null) {
            parcel.writeTypedList(this.colors);
        }
        if (parcel != null) {
            parcel.writeTypedList(this.variants);
        }
    }

    public final Size findSize(String str) {
        List list = this.sizes;
        Size size = null;
        if (list == null) {
            return null;
        }
        for (Size next : list) {
            if (Intrinsics.areEqual(next.getId(), str)) {
                size = next;
                break;
            }
        }
        return size;
    }

    public final Color findColor(String str) {
        List list = this.colors;
        Color color = null;
        if (list == null) {
            return null;
        }
        for (Color next : list) {
            if (Intrinsics.areEqual(next.getId(), str)) {
                color = next;
                break;
            }
        }
        return color;
    }

    public final List<Color> filterColors(Size size) {
        Intrinsics.checkParameterIsNotNull(size, "size");
        List list = this.variants;
        if (list == null) {
            return null;
        }
        Collection arrayList = new ArrayList();
        for (Object next : list) {
            if ((((Variant) next).getColor() != null ? 1 : null) != null) {
                arrayList.add(next);
            }
        }
        Collection arrayList2 = new ArrayList();
        for (Object next2 : (List) arrayList) {
            if (Intrinsics.areEqual(((Variant) next2).getSize(), size.getId())) {
                arrayList2.add(next2);
            }
        }
        Collection collection = (Collection) new ArrayList();
        for (Object next3 : (List) arrayList2) {
            if (((Variant) next3).getAvailable()) {
                collection.add(next3);
            }
        }
        Iterable<Variant> iterable = (List) collection;
        arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault$251b5948(iterable));
        for (Variant color : iterable) {
            String color2 = color.getColor();
            if (color2 == null) {
                Intrinsics.throwNpe();
            }
            arrayList2.add(new Color(color2, null, false, 6, null));
        }
        Iterable iterable2 = (List) arrayList2;
        size = new HashSet();
        ArrayList arrayList3 = new ArrayList();
        for (Object next22 : iterable2) {
            if (size.add(((Color) next22).getId())) {
                arrayList3.add(next22);
            }
        }
        return arrayList3;
    }

    public final Variant findVariant(Size size, Color color) {
        List list = this.sizes;
        Variant variant = null;
        if (list != null && list.size() == 1) {
            size = this.sizes;
            size = size != null ? (Size) size.get(0) : null;
        }
        list = this.colors;
        if (list != null && list.size() == 1) {
            color = this.colors;
            color = color != null ? (Color) color.get(0) : null;
        }
        list = this.variants;
        if (list == null) {
            return null;
        }
        for (Variant next : list) {
            int i;
            Variant variant2 = next;
            if (Intrinsics.areEqual(variant2.getSize(), size != null ? size.getId() : null)) {
                if (Intrinsics.areEqual(variant2.getColor(), color != null ? color.getId() : null)) {
                    i = 1;
                    continue;
                    if (i != 0) {
                        variant = next;
                        break;
                    }
                }
            }
            i = 0;
            continue;
            if (i != 0) {
                variant = next;
                break;
            }
        }
        return variant;
    }
}
