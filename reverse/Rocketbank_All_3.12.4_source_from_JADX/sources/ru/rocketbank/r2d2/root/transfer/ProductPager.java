package ru.rocketbank.r2d2.root.transfer;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentStatePagerAdapter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Pair;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import ru.rocketbank.r2d2.root.transfer.SmallAccountFragment.Companion;

/* compiled from: ProductPager.kt */
public class ProductPager extends FragmentStatePagerAdapter {
    private String currency;
    private final ArrayList<Pair<String, String>> products = new ArrayList();
    private final ArrayList<String> productsReady = new ArrayList();
    private String selectedToken;

    public float getPageWidth(int i) {
        return 1.0f;
    }

    public ProductPager(FragmentManager fragmentManager) {
        super(fragmentManager);
    }

    protected final ArrayList<String> getProductsReady() {
        return this.productsReady;
    }

    public final void setProducts(List<Pair<String, String>> list) {
        Intrinsics.checkParameterIsNotNull(list, "products");
        this.products.clear();
        this.products.addAll(list);
        this.productsReady.clear();
        ArrayList arrayList = this.productsReady;
        Collection arrayList2 = new ArrayList();
        for (Object next : list) {
            Object obj;
            if (!Intrinsics.areEqual((String) ((Pair) next).getSecond(), this.currency)) {
                if (this.currency != null) {
                    obj = null;
                    if (obj != null) {
                        arrayList2.add(next);
                    }
                }
            }
            obj = 1;
            if (obj != null) {
                arrayList2.add(next);
            }
        }
        Iterable<Pair> iterable = (List) arrayList2;
        Collection arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault$251b5948(iterable));
        for (Pair first : iterable) {
            arrayList3.add((String) first.getFirst());
        }
        arrayList.addAll((List) arrayList3);
        arrayList3 = this.productsReady;
        String str = this.selectedToken;
        if (arrayList3 == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlin.collections.MutableCollection<T>");
        }
        TypeIntrinsics.asMutableCollection(arrayList3).remove(str);
        notifyDataSetChanged();
    }

    public Fragment getItem(int i) {
        Companion companion = SmallAccountFragment.Companion;
        i = this.productsReady.get(i);
        Intrinsics.checkExpressionValueIsNotNull(i, "productsReady[position]");
        return companion.newInstance((String) i);
    }

    public int getCount() {
        return this.productsReady.size();
    }

    public final String getToken(int i) {
        return i < this.productsReady.size() ? (String) this.productsReady.get(i) : 0;
    }

    public final int findItem(String str) {
        Intrinsics.checkParameterIsNotNull(str, "productTokenImm");
        int size = this.productsReady.size();
        for (int i = 0; i < size; i++) {
            if (Intrinsics.areEqual((String) this.productsReady.get(i), str)) {
                return i;
            }
        }
        return 0;
    }

    public final void excludeToken(String str) {
        Intrinsics.checkParameterIsNotNull(str, "selectedSourceToken");
        this.selectedToken = str;
        this.productsReady.clear();
        ArrayList arrayList = this.productsReady;
        Iterable<Pair> iterable = this.products;
        Collection arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault$251b5948(iterable));
        for (Pair first : iterable) {
            arrayList2.add((String) first.getFirst());
        }
        arrayList.addAll((List) arrayList2);
        this.productsReady.remove(str);
        notifyDataSetChanged();
    }

    public final void excludeCurrency(String str) {
        this.currency = str;
        this.productsReady.clear();
        ArrayList arrayList = this.productsReady;
        Collection arrayList2 = new ArrayList();
        for (Object next : this.products) {
            Object obj;
            if (!Intrinsics.areEqual((String) ((Pair) next).getSecond(), str)) {
                if (str != null) {
                    obj = null;
                    if (obj != null) {
                        arrayList2.add(next);
                    }
                }
            }
            obj = 1;
            if (obj != null) {
                arrayList2.add(next);
            }
        }
        Iterable<Pair> iterable = (List) arrayList2;
        Collection collection = (Collection) new ArrayList(CollectionsKt.collectionSizeOrDefault$251b5948(iterable));
        for (Pair first : iterable) {
            collection.add((String) first.getFirst());
        }
        arrayList.addAll((List) collection);
        notifyDataSetChanged();
    }
}
