package ru.rocketbank.core.manager.loader.cacher.discounts;

import android.os.Handler;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref.ObjectRef;
import ru.rocketbank.core.model.discounts.Category;
import ru.rocketbank.core.model.discounts.Discount;
import ru.rocketbank.core.model.discounts.DiscountsCollection;
import rx.Observable;
import rx.android.schedulers.AndroidSchedulers;
import rx.schedulers.Schedulers;

/* compiled from: DiscountCache.kt */
public final class DiscountCache {
    private final Handler handler = new Handler();
    private boolean isDiscountsSelected;
    private boolean isEmpty;
    private DiscountsCollection lastCollection;
    private DiscountsChangedListener listener;

    public final DiscountsCollection getLastCollection() {
        return this.lastCollection;
    }

    public final void setLastCollection(DiscountsCollection discountsCollection) {
        this.lastCollection = discountsCollection;
    }

    public final DiscountsChangedListener getListener() {
        return this.listener;
    }

    public final void setListener(DiscountsChangedListener discountsChangedListener) {
        this.listener = discountsChangedListener;
    }

    public final void setEmpty(boolean z) {
        this.isEmpty = z;
    }

    public final boolean isEmpty() {
        return this.lastCollection == null;
    }

    public final Observable<Object> sync(DiscountsCollection discountsCollection) {
        Intrinsics.checkParameterIsNotNull(discountsCollection, "collection");
        discountsCollection = Observable.create(new DiscountCache$sync$1(this, discountsCollection));
        Intrinsics.checkExpressionValueIsNotNull(discountsCollection, "Observable.create({ subs…\n            }\n        })");
        return discountsCollection;
    }

    private final void checkAddition(List<Category> list, List<Category> list2) {
        HashMap hashMap = new HashMap();
        for (Category category : list) {
            List discounts = category.getDiscounts();
            if (discounts == null) {
                Intrinsics.throwNpe();
            }
            hashMap.put(category, discounts);
        }
        list = new ObjectRef();
        int i = 0;
        int size = list2.size() - 1;
        if (size >= 0) {
            while (true) {
                list.element = (Category) list2.get(i);
                List<Discount> list3 = (List) hashMap.get((Category) list.element);
                if (list3 == null) {
                    this.handler.post(new DiscountCache$checkAddition$2(this, list, i));
                } else {
                    HashSet hashSet = new HashSet((Collection) hashMap.get((Category) list.element));
                    for (Discount contains : list3) {
                        if (!hashSet.contains(contains)) {
                            this.handler.post(new DiscountCache$checkAddition$3(this, list, i));
                            return;
                        }
                    }
                }
                if (i == size) {
                    break;
                }
                i++;
            }
        }
    }

    private final void checkDeletion(List<Category> list, List<Category> list2) {
        HashMap hashMap = new HashMap();
        ObjectRef objectRef = new ObjectRef();
        for (Category category : list2) {
            List discounts = category.getDiscounts();
            if (discounts == null) {
                Intrinsics.throwNpe();
            }
            hashMap.put(category, discounts);
        }
        int i = 0;
        list = list.size() - 1;
        if (list >= null) {
            while (true) {
                objectRef.element = (Category) list2.get(i);
                List<Discount> list3 = (List) hashMap.get((Category) objectRef.element);
                if (list3 == null) {
                    this.handler.post(new DiscountCache$checkDeletion$2(this, objectRef, i));
                } else {
                    HashSet hashSet = new HashSet((Collection) hashMap.get((Category) objectRef.element));
                    for (Discount contains : list3) {
                        if (!hashSet.contains(contains)) {
                            this.handler.post((Runnable) new DiscountCache$checkDeletion$3(this, objectRef, i));
                            return;
                        }
                    }
                }
                if (i == list) {
                    break;
                }
                i++;
            }
        }
    }

    public final void update(DiscountsCollection discountsCollection) {
        if (discountsCollection != null) {
            sync(discountsCollection).subscribeOn(Schedulers.computation()).observeOn(AndroidSchedulers.mainThread()).subscribe(new DiscountCache$update$$inlined$let$lambda$1(this));
        }
    }
}
