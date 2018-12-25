package ru.rocketbank.r2d2.adapters.discounts;

import android.support.v7.widget.RecyclerView.Adapter;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map.Entry;
import java.util.TreeMap;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Lazy;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import ru.rocketbank.core.manager.loader.cacher.discounts.DiscountCache;
import ru.rocketbank.core.manager.loader.cacher.discounts.DiscountsChangedListener;
import ru.rocketbank.core.model.discounts.Category;
import ru.rocketbank.core.model.discounts.DiscountsCollection;
import ru.rocketbank.core.model.dto.operations.MonthCashBack;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.adapters.discounts.holders.AbstractDiscountHolder;
import ru.rocketbank.r2d2.adapters.discounts.holders.CategoryHolder;
import ru.rocketbank.r2d2.adapters.discounts.holders.GameHolder;
import ru.rocketbank.r2d2.adapters.discounts.holders.NonSelectedHolder;
import ru.rocketbank.r2d2.adapters.discounts.holders.SelectedHolder;

/* compiled from: CachingDiscountsAdapter.kt */
public final class CachingDiscountsAdapter extends Adapter<AbstractDiscountHolder> implements DiscountsChangedListener {
    static final /* synthetic */ KProperty[] $$delegatedProperties = new KProperty[]{Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(CachingDiscountsAdapter.class), "elements", "getElements()Landroid/util/SparseArray;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(CachingDiscountsAdapter.class), "lastHolders", "getLastHolders()Ljava/util/TreeMap;"))};
    public static final Companion Companion = new Companion();
    private static final int TYPE_CASHBACK_NOT_SELECTED = 3;
    private static final int TYPE_CASHBACK_SELECTED = 2;
    private static final int TYPE_DISCOUNT = 1;
    private static final int TYPE_GAME = 4;
    private final DiscountCache cache = RocketApplication.Companion.getInjector().getDiscountCache();
    private int categoriesStartPosition;
    private final Lazy elements$delegate = ExceptionsKt__ExceptionsKt.lazyOf(new SparseArray());
    private final Lazy lastHolders$delegate = ExceptionsKt__ExceptionsKt.lazyOf(new TreeMap());
    private int realSize;

    /* compiled from: CachingDiscountsAdapter.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    private final SparseArray<ItemWrapper> getElements() {
        return (SparseArray) this.elements$delegate.getValue();
    }

    private final TreeMap<Integer, AbstractDiscountHolder> getLastHolders() {
        return (TreeMap) this.lastHolders$delegate.getValue();
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "t");
    }

    public CachingDiscountsAdapter() {
        this.cache.setListener(this);
    }

    private final View inflateView(ViewGroup viewGroup, int i) {
        viewGroup = LayoutInflater.from(viewGroup.getContext()).inflate(i, viewGroup, false);
        Intrinsics.checkExpressionValueIsNotNull(viewGroup, "LayoutInflater.from(pare…flate(res, parent, false)");
        return viewGroup;
    }

    public final void swap(DiscountsCollection discountsCollection) {
        if (getElements().size() == 0) {
            update(discountsCollection);
        }
        this.cache.update(discountsCollection);
    }

    public final void onDiscountsSelected(MonthCashBack monthCashBack) {
        Intrinsics.checkParameterIsNotNull(monthCashBack, "discounts");
        updateItem(null, new ItemWrapper(2, monthCashBack, null, null, 12, null));
    }

    public final void onDiscountAdded(Category category, int i) {
        Intrinsics.checkParameterIsNotNull(category, "category");
        updateItem(i + this.categoriesStartPosition, new ItemWrapper(2, null, category, null, 10, null));
    }

    public final void onDiscountRemoved(Category category, int i) {
        Intrinsics.checkParameterIsNotNull(category, "category");
        updateItem(i + this.categoriesStartPosition, new ItemWrapper(1, null, category, null, 10, null));
    }

    public final void onCategoryAdded(Category category, int i) {
        Intrinsics.checkParameterIsNotNull(category, "category");
        getElements().put(this.categoriesStartPosition + i, new ItemWrapper(1, null, category, null, 10, null));
        notifyItemInserted(i);
    }

    public final void onCategoryRemoved(Category category, int i) {
        Intrinsics.checkParameterIsNotNull(category, "category");
        updateItem(i + this.categoriesStartPosition, new ItemWrapper(1, null, category, null, 10, null));
    }

    private final void updateItem(int i, ItemWrapper itemWrapper) {
        getElements().put(i, itemWrapper);
        notifyItemChanged(i);
    }

    public final void updatePictures() {
        for (Entry entry : getLastHolders().entrySet()) {
            ((Number) entry.getKey()).intValue();
            ((AbstractDiscountHolder) entry.getValue()).updateImages();
        }
    }

    private final void update(DiscountsCollection discountsCollection) {
        getElements().clear();
        this.realSize = 0;
        this.categoriesStartPosition = 0;
        if (discountsCollection != null) {
            SparseArray elements;
            int i;
            ItemWrapper itemWrapper;
            if (discountsCollection.chosenMonthCashBack != null) {
                itemWrapper = new ItemWrapper(2, discountsCollection.chosenMonthCashBack, null, null, 12, null);
                elements = getElements();
                i = this.realSize;
                this.realSize = i + 1;
                elements.put(i, itemWrapper);
                this.categoriesStartPosition++;
            } else if (discountsCollection.monthCashBack != null) {
                itemWrapper = new ItemWrapper(3, discountsCollection.monthCashBack, null, null, 12, null);
                this.categoriesStartPosition++;
                elements = getElements();
                i = this.realSize;
                this.realSize = i + 1;
                elements.put(i, itemWrapper);
            }
            if (discountsCollection.gamer != null) {
                SparseArray elements2 = getElements();
                int i2 = this.realSize;
                this.realSize = i2 + 1;
                elements2.put(i2, new ItemWrapper(4, null, null, discountsCollection.gamer, 6, null));
            }
            discountsCollection = discountsCollection.categories;
            Intrinsics.checkExpressionValueIsNotNull(discountsCollection, "collection.categories");
            Iterable<Category> iterable = (Iterable) discountsCollection;
            Collection arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault$251b5948(iterable));
            for (Category itemWrapper2 : iterable) {
                arrayList.add(new ItemWrapper(1, null, itemWrapper2, null, 10, null));
            }
            for (ItemWrapper itemWrapper3 : (List) arrayList) {
                elements = getElements();
                i = this.realSize;
                this.realSize = i + 1;
                elements.put(i, itemWrapper3);
            }
        }
        notifyDataSetChanged();
    }

    public final AbstractDiscountHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        Intrinsics.checkParameterIsNotNull(viewGroup, "parent");
        switch (i) {
            case 1:
                return (AbstractDiscountHolder) new CategoryHolder(inflateView(viewGroup, C0859R.layout.discounts_grid_container));
            case 2:
                return (AbstractDiscountHolder) new SelectedHolder(inflateView(viewGroup, C0859R.layout.discounts_selected));
            case 3:
                return (AbstractDiscountHolder) new NonSelectedHolder(inflateView(viewGroup, C0859R.layout.discounts_not_selected));
            case 4:
                return (AbstractDiscountHolder) new GameHolder(inflateView(viewGroup, C0859R.layout.discounts_grid_container));
            default:
                throw ((Throwable) new IllegalStateException("Incorrect type of holder"));
        }
    }

    public final void onDestroy() {
        this.cache.setListener(null);
        getLastHolders().clear();
    }

    public final void onBindViewHolder(AbstractDiscountHolder abstractDiscountHolder, int i) {
        Intrinsics.checkParameterIsNotNull(abstractDiscountHolder, "holder");
        ItemWrapper itemWrapper = (ItemWrapper) getElements().get(i);
        Intrinsics.checkExpressionValueIsNotNull(itemWrapper, "wrapper");
        abstractDiscountHolder.bind(itemWrapper);
        getLastHolders().put(Integer.valueOf(i % 4), abstractDiscountHolder);
    }

    public final int getItemCount() {
        return getElements().size();
    }

    public final int getItemViewType(int i) {
        return ((ItemWrapper) getElements().get(i)).getType();
    }
}
