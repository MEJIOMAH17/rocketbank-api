package ru.rocketbank.r2d2.adapters;

import android.content.Context;
import android.support.v7.util.SortedList;
import android.support.v7.util.SortedList.Callback;
import android.support.v7.widget.RecyclerView.Adapter;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.facebook.share.internal.ShareConstants;
import java.util.ArrayList;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Lazy;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import ru.rocketbank.core.model.AbstractOperation;
import ru.rocketbank.core.network.model.FeedItem;
import ru.rocketbank.core.widgets.BarChartView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.parallax.HeaderData;
import ru.rocketbank.r2d2.data.binding.parallax.ParallaxData;
import ru.rocketbank.r2d2.databinding.ParallaxHeaderBinding;
import ru.rocketbank.r2d2.databinding.ParallaxRoundImageItemBinding;
import ru.rocketbank.r2d2.widgets.recycler.parallax.GenericViewHolder;
import ru.rocketbank.r2d2.widgets.recycler.parallax.HeaderViewHolder;
import ru.rocketbank.r2d2.widgets.recycler.parallax.ParallaxImagePayload;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.AnalyticsParallaxItem;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.AnalyticsProfileViewHolder;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.GenericBarChartViewHolder;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.GenericDelimiterViewHolder;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.GenericOperationViewHolder;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.GenericRightArrowViewHolder;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.GenericRoundedImageViewHolder;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.GenericSwitchViewHolder;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.ParallaxItem;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.statistics.StatisticsAdapter;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.statistics.StatisticsViewHolder;

/* compiled from: ParallaxAdapter.kt */
public class ParallaxAdapter extends Adapter<GenericViewHolder> {
    static final /* synthetic */ KProperty[] $$delegatedProperties = new KProperty[]{Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(ParallaxAdapter.class), "sortedCallback", "getSortedCallback()Landroid/support/v7/util/SortedList$Callback;"))};
    public static final Companion Companion = new Companion();
    public static final int NO_POSITION = -1;
    public static final String TAG = "PrlAdpt";
    public static final int VIEW_TYPE_BAR_CHART = 4;
    public static final int VIEW_TYPE_DELIMITER = 1;
    public static final int VIEW_TYPE_HEADER = 0;
    public static final int VIEW_TYPE_IMAGE_ITEM_CLICK = 7;
    public static final int VIEW_TYPE_JOINT_ANALYTICS = 8;
    public static final int VIEW_TYPE_LOADING = 6;
    public static final int VIEW_TYPE_OPERATION = 5;
    public static final int VIEW_TYPE_RIGHT_ARROW = 2;
    public static final int VIEW_TYPE_STAT = 9;
    public static final int VIEW_TYPE_SWITCH = 3;
    public static final int VIEW_TYPE_UPPER_CASE_DELIMITER = 10;
    private View appBarLayout;
    private final SortedList<ParallaxItem> dynamicItems = new SortedList(ParallaxItem.class, getSortedCallback());
    private Function2<? super ParallaxItem, ? super ParallaxItem, Boolean> equalMethod = ((Function2) ParallaxAdapter$equalMethod$1.INSTANCE);
    private boolean existsBottom;
    private final int headerHeight;
    private final ArrayList<ParallaxItem> items = new ArrayList();
    private Function2<? super ParallaxItem, ? super GenericOperationViewHolder, Unit> onOperationBinder;
    private ParallaxData parallaxData;
    private Function2<? super ParallaxItem, ? super ParallaxItem, Integer> sortMethod = ((Function2) ParallaxAdapter$sortMethod$1.INSTANCE);
    private final Lazy sortedCallback$delegate = ExceptionsKt__ExceptionsKt.lazy((Function0) new ParallaxAdapter$sortedCallback$2(this));

    /* compiled from: ParallaxAdapter.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    private final Callback<ParallaxItem> getSortedCallback() {
        return (Callback) this.sortedCallback$delegate.getValue();
    }

    public final void addProgress() {
    }

    public void onBindCustomViewType(GenericViewHolder genericViewHolder, int i, int i2) {
    }

    public final ParallaxData getParallaxData() {
        return this.parallaxData;
    }

    public final void setParallaxData(ParallaxData parallaxData) {
        Intrinsics.checkParameterIsNotNull(parallaxData, "<set-?>");
        this.parallaxData = parallaxData;
    }

    public final View getAppBarLayout() {
        return this.appBarLayout;
    }

    public final void setAppBarLayout(View view) {
        Intrinsics.checkParameterIsNotNull(view, "<set-?>");
        this.appBarLayout = view;
    }

    public ParallaxAdapter(ParallaxData parallaxData, View view, int i) {
        Intrinsics.checkParameterIsNotNull(parallaxData, "parallaxData");
        Intrinsics.checkParameterIsNotNull(view, "appBarLayout");
        this.parallaxData = parallaxData;
        this.appBarLayout = view;
        this.headerHeight = i;
    }

    public final int getHeaderHeight() {
        return this.headerHeight;
    }

    protected final ArrayList<ParallaxItem> getItems() {
        return this.items;
    }

    public final Function2<ParallaxItem, ParallaxItem, Integer> getSortMethod() {
        return this.sortMethod;
    }

    public final void setSortMethod(Function2<? super ParallaxItem, ? super ParallaxItem, Integer> function2) {
        Intrinsics.checkParameterIsNotNull(function2, "<set-?>");
        this.sortMethod = function2;
    }

    public final Function2<ParallaxItem, ParallaxItem, Boolean> getEqualMethod() {
        return this.equalMethod;
    }

    public final void setEqualMethod(Function2<? super ParallaxItem, ? super ParallaxItem, Boolean> function2) {
        Intrinsics.checkParameterIsNotNull(function2, "<set-?>");
        this.equalMethod = function2;
    }

    protected final SortedList<ParallaxItem> getDynamicItems() {
        return this.dynamicItems;
    }

    public final void addDynamic(ParallaxItem parallaxItem) {
        Intrinsics.checkParameterIsNotNull(parallaxItem, "parallaxItem");
        this.dynamicItems.add(parallaxItem);
        int indexOf = this.dynamicItems.indexOf(parallaxItem);
        if (indexOf != -1) {
            Log.v(TAG, "Update item ".concat(String.valueOf(indexOf)));
            this.dynamicItems.updateItemAt(indexOf, parallaxItem);
            return;
        }
        Log.v(TAG, "Create new Item");
        this.dynamicItems.add(parallaxItem);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onBindViewHolder(ru.rocketbank.r2d2.widgets.recycler.parallax.GenericViewHolder r9, int r10) {
        /*
        r8 = this;
        r0 = "holder";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r9, r0);
        r0 = r8.getItem(r10);
        r9.setItem(r0);
        r0 = r8.getItemViewType(r10);
        r1 = 0;
        switch(r0) {
            case 0: goto L_0x01ea;
            case 1: goto L_0x01d6;
            case 2: goto L_0x0198;
            case 3: goto L_0x0157;
            case 4: goto L_0x013b;
            case 5: goto L_0x011f;
            case 6: goto L_0x011e;
            case 7: goto L_0x0090;
            case 8: goto L_0x0045;
            case 9: goto L_0x0019;
            default: goto L_0x0014;
        };
    L_0x0014:
        r8.onBindCustomViewType(r9, r10, r0);
        goto L_0x01f2;
    L_0x0019:
        r10 = r9.getItem();
        r9 = (ru.rocketbank.r2d2.widgets.recycler.parallax.vh.statistics.StatisticsViewHolder) r9;
        if (r10 == 0) goto L_0x0025;
    L_0x0021:
        r1 = r10.getPayload();
    L_0x0025:
        if (r1 != 0) goto L_0x002f;
    L_0x0027:
        r9 = new kotlin.TypeCastException;
        r10 = "null cannot be cast to non-null type ru.rocketbank.r2d2.widgets.recycler.parallax.vh.statistics.StatisticsAdapter";
        r9.<init>(r10);
        throw r9;
    L_0x002f:
        r1 = (ru.rocketbank.r2d2.widgets.recycler.parallax.vh.statistics.StatisticsAdapter) r1;
        r0 = r10.getSubtitle();
        if (r0 != 0) goto L_0x0039;
    L_0x0037:
        r0 = "";
    L_0x0039:
        r10 = r10.getTitle();
        if (r10 != 0) goto L_0x0041;
    L_0x003f:
        r10 = "";
    L_0x0041:
        r9.onBind(r1, r10, r0);
        return;
    L_0x0045:
        r10 = r9.getItem();
        r10 = (ru.rocketbank.r2d2.widgets.recycler.parallax.vh.AnalyticsParallaxItem) r10;
        r9 = (ru.rocketbank.r2d2.widgets.recycler.parallax.vh.AnalyticsProfileViewHolder) r9;
        if (r10 == 0) goto L_0x0058;
    L_0x004f:
        r0 = r10.getOnBind();
        if (r0 == 0) goto L_0x0058;
    L_0x0055:
        r0.invoke(r10, r9);
    L_0x0058:
        if (r10 == 0) goto L_0x0060;
    L_0x005a:
        r0 = r10.getTitle();
        if (r0 != 0) goto L_0x0062;
    L_0x0060:
        r0 = "";
    L_0x0062:
        r9.setTitle(r0);
        if (r10 == 0) goto L_0x006c;
    L_0x0067:
        r0 = r10.getOnSwitch();
        goto L_0x006d;
    L_0x006c:
        r0 = r1;
    L_0x006d:
        r9.onBindActions(r0);
        if (r10 == 0) goto L_0x0077;
    L_0x0072:
        r0 = r10.getName();
        goto L_0x0078;
    L_0x0077:
        r0 = r1;
    L_0x0078:
        r9.setName(r0);
        if (r10 == 0) goto L_0x0082;
    L_0x007d:
        r0 = r10.getAvatar();
        goto L_0x0083;
    L_0x0082:
        r0 = r1;
    L_0x0083:
        r9.setIcon(r0);
        if (r10 == 0) goto L_0x008c;
    L_0x0088:
        r1 = r10.getStatus();
    L_0x008c:
        r9.setStatus(r1);
        return;
    L_0x0090:
        r10 = r9.getItem();
        r9 = (ru.rocketbank.r2d2.widgets.recycler.parallax.vh.GenericRoundedImageViewHolder) r9;
        if (r10 == 0) goto L_0x009c;
    L_0x0098:
        r1 = r10.getPayload();
    L_0x009c:
        if (r1 != 0) goto L_0x00a6;
    L_0x009e:
        r9 = new kotlin.TypeCastException;
        r10 = "null cannot be cast to non-null type ru.rocketbank.r2d2.widgets.recycler.parallax.ParallaxImagePayload";
        r9.<init>(r10);
        throw r9;
    L_0x00a6:
        r1 = (ru.rocketbank.r2d2.widgets.recycler.parallax.ParallaxImagePayload) r1;
        r0 = r9.getBinding();
        r0 = r0.getData();
        if (r0 != 0) goto L_0x00ba;
    L_0x00b2:
        r9 = new kotlin.TypeCastException;
        r10 = "null cannot be cast to non-null type ru.rocketbank.r2d2.data.binding.parallax.ParallaxRoundItem";
        r9.<init>(r10);
        throw r9;
    L_0x00ba:
        r2 = r0.getText();
        r3 = r10.getTitle();
        r2.set(r3);
        r0 = r0.getSubText();
        r2 = r10.getSubtitle();
        r0.set(r2);
        r0 = r9.getBinding();
        r0 = r0.image;
        r2 = "operationVH.binding.image";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r2);
        r0 = r0.getContext();
        r2 = r9.getBinding();
        r2 = r2.image;
        r3 = r1.getImageUrl();
        if (r3 == 0) goto L_0x0102;
    L_0x00eb:
        r0 = com.bumptech.glide.Glide.with(r0);
        r1 = r1.getImageUrl();
        if (r1 != 0) goto L_0x00f8;
    L_0x00f5:
        kotlin.jvm.internal.Intrinsics.throwNpe();
    L_0x00f8:
        r0 = r0.load(r1);
        r2 = (android.widget.ImageView) r2;
        r0.into(r2);
        goto L_0x0117;
    L_0x0102:
        r0 = com.bumptech.glide.Glide.with(r0);
        r1 = r1.getImageResId();
        r1 = java.lang.Integer.valueOf(r1);
        r0 = r0.load(r1);
        r2 = (android.widget.ImageView) r2;
        r0.into(r2);
    L_0x0117:
        r10 = r10.getOnClick();
        r9.onBind(r10);
    L_0x011e:
        return;
    L_0x011f:
        r10 = r9.getItem();
        r0 = r9;
        r0 = (ru.rocketbank.r2d2.widgets.recycler.parallax.vh.GenericOperationViewHolder) r0;
        if (r10 == 0) goto L_0x0131;
    L_0x0128:
        r1 = r10.getOnBind();
        if (r1 == 0) goto L_0x0131;
    L_0x012e:
        r1.invoke(r10, r9);
    L_0x0131:
        if (r10 == 0) goto L_0x01f2;
    L_0x0133:
        r9 = r8.onOperationBinder;
        if (r9 == 0) goto L_0x013a;
    L_0x0137:
        r9.invoke(r10, r0);
    L_0x013a:
        return;
    L_0x013b:
        r10 = r9.getItem();
        r0 = r9;
        r0 = (ru.rocketbank.r2d2.widgets.recycler.parallax.vh.GenericBarChartViewHolder) r0;
        if (r10 == 0) goto L_0x014d;
    L_0x0144:
        r2 = r10.getOnBind();
        if (r2 == 0) goto L_0x014d;
    L_0x014a:
        r2.invoke(r10, r9);
    L_0x014d:
        if (r10 == 0) goto L_0x0153;
    L_0x014f:
        r1 = r10.getBarChartAdapter();
    L_0x0153:
        r0.setAdapter(r1);
        return;
    L_0x0157:
        r10 = r9.getItem();
        r9 = (ru.rocketbank.r2d2.widgets.recycler.parallax.vh.GenericSwitchViewHolder) r9;
        if (r10 == 0) goto L_0x0168;
    L_0x015f:
        r0 = r10.getOnBind();
        if (r0 == 0) goto L_0x0168;
    L_0x0165:
        r0.invoke(r10, r9);
    L_0x0168:
        if (r10 == 0) goto L_0x016f;
    L_0x016a:
        r0 = r10.getTitle();
        goto L_0x0170;
    L_0x016f:
        r0 = r1;
    L_0x0170:
        if (r10 == 0) goto L_0x0177;
    L_0x0172:
        r2 = r10.getSubtitle();
        goto L_0x0178;
    L_0x0177:
        r2 = r1;
    L_0x0178:
        r9.setText(r0, r2);
        if (r10 == 0) goto L_0x0182;
    L_0x017d:
        r0 = r10.getLink();
        goto L_0x0183;
    L_0x0182:
        r0 = r1;
    L_0x0183:
        r9.setLink(r0);
        if (r10 == 0) goto L_0x018d;
    L_0x0188:
        r0 = r10.getOnSwitch();
        goto L_0x018e;
    L_0x018d:
        r0 = r1;
    L_0x018e:
        if (r10 == 0) goto L_0x0194;
    L_0x0190:
        r1 = r10.getOnClick();
    L_0x0194:
        r9.onBindActions(r0, r1);
        return;
    L_0x0198:
        r10 = r9.getItem();
        r2 = r9;
        r2 = (ru.rocketbank.r2d2.widgets.recycler.parallax.vh.GenericRightArrowViewHolder) r2;
        if (r10 == 0) goto L_0x01aa;
    L_0x01a1:
        r9 = r10.getTitle();
        if (r9 != 0) goto L_0x01a8;
    L_0x01a7:
        goto L_0x01aa;
    L_0x01a8:
        r3 = r9;
        goto L_0x01ad;
    L_0x01aa:
        r9 = "";
        goto L_0x01a8;
    L_0x01ad:
        if (r10 == 0) goto L_0x01b4;
    L_0x01af:
        r9 = r10.getPayload();
        goto L_0x01b5;
    L_0x01b4:
        r9 = r1;
    L_0x01b5:
        r4 = r9;
        r4 = (java.lang.String) r4;
        if (r10 == 0) goto L_0x01c0;
    L_0x01ba:
        r9 = r10.getSubtitle();
        r5 = r9;
        goto L_0x01c1;
    L_0x01c0:
        r5 = r1;
    L_0x01c1:
        if (r10 == 0) goto L_0x01c7;
    L_0x01c3:
        r1 = r10.getOnClick();
    L_0x01c7:
        r6 = r1;
        if (r10 == 0) goto L_0x01d0;
    L_0x01ca:
        r9 = r10.getHideArrow();
    L_0x01ce:
        r7 = r9;
        goto L_0x01d2;
    L_0x01d0:
        r9 = 0;
        goto L_0x01ce;
    L_0x01d2:
        r2.onBind(r3, r4, r5, r6, r7);
        return;
    L_0x01d6:
        r10 = r9.getItem();
        r9 = (ru.rocketbank.r2d2.widgets.recycler.parallax.vh.GenericDelimiterViewHolder) r9;
        if (r10 == 0) goto L_0x01e4;
    L_0x01de:
        r10 = r10.getTitle();
        if (r10 != 0) goto L_0x01e6;
    L_0x01e4:
        r10 = "";
    L_0x01e6:
        r9.setText(r10);
        return;
    L_0x01ea:
        r9 = (ru.rocketbank.r2d2.widgets.recycler.parallax.HeaderViewHolder) r9;
        r10 = r8.appBarLayout;
        r9.onBind(r10);
        return;
    L_0x01f2:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.adapters.ParallaxAdapter.onBindViewHolder(ru.rocketbank.r2d2.widgets.recycler.parallax.GenericViewHolder, int):void");
    }

    public int getItemViewType(int i) {
        if (i == 0) {
            return 0;
        }
        i = getItem(i);
        return i != 0 ? i.getViewType() : 6;
    }

    public final void changed(ParallaxItem parallaxItem) {
        Intrinsics.checkParameterIsNotNull(parallaxItem, "parallaxItem");
        parallaxItem = this.items.indexOf(parallaxItem);
        if (parallaxItem >= null) {
            notifyItemChanged(parallaxItem);
        }
    }

    public final void removeItem(ParallaxItem parallaxItem) {
        Intrinsics.checkParameterIsNotNull(parallaxItem, "parallaxItem");
        int indexOf = this.items.indexOf(parallaxItem);
        if (indexOf >= 0) {
            this.items.remove(parallaxItem);
            notifyItemRemoved(indexOf);
        }
    }

    public final void clearAll() {
        int size = this.items.size();
        if (this.items.size() > 0) {
            this.items.clear();
            notifyItemRangeRemoved(1, size);
        }
    }

    public final void clearStatic() {
        this.items.clear();
        notifyDataSetChanged();
    }

    public static /* bridge */ /* synthetic */ void addStaticItem$default(ParallaxAdapter parallaxAdapter, ParallaxItem parallaxItem, int i, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addStaticItem");
        }
        if ((i2 & 2) != 0) {
            i = -1;
        }
        parallaxAdapter.addStaticItem(parallaxItem, i);
    }

    public final void addStaticItem(ParallaxItem parallaxItem, int i) {
        Intrinsics.checkParameterIsNotNull(parallaxItem, "parallaxItem");
        if (i == -1) {
            this.items.add(parallaxItem);
        } else {
            this.items.add(i, parallaxItem);
        }
        notifyDataSetChanged();
    }

    public final void addDelimiter(String str) {
        Intrinsics.checkParameterIsNotNull(str, ShareConstants.WEB_DIALOG_PARAM_TITLE);
        ParallaxItem parallaxItem = new ParallaxItem();
        parallaxItem.setViewType(1);
        parallaxItem.setTitle(str);
        addStaticItem$default(this, parallaxItem, null, 2, null);
    }

    public final void addRoundImage(String str, String str2, int i, Function1<? super ParallaxItem, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(str, ShareConstants.WEB_DIALOG_PARAM_TITLE);
        Intrinsics.checkParameterIsNotNull(str2, "subTitle");
        Intrinsics.checkParameterIsNotNull(function1, "onClick");
        ParallaxImagePayload parallaxImagePayload = new ParallaxImagePayload();
        parallaxImagePayload.setImageResId(i);
        i = new ParallaxItem();
        i.setViewType(7);
        i.setTitle(str);
        i.setSubtitle(str2);
        i.setOnClick(function1);
        i.setPayload(parallaxImagePayload);
        addStaticItem$default(this, i, null, 2, null);
    }

    public final void addRightArrow(String str, Function1<? super ParallaxItem, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(str, ShareConstants.WEB_DIALOG_PARAM_TITLE);
        ParallaxItem parallaxItem = new ParallaxItem();
        parallaxItem.setViewType(2);
        parallaxItem.setTitle(str);
        parallaxItem.setOnClick(function1);
        addStaticItem$default(this, parallaxItem, null, 2, null);
    }

    public final void addRightArrow(String str, String str2, Function1<? super ParallaxItem, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(str, ShareConstants.WEB_DIALOG_PARAM_TITLE);
        Intrinsics.checkParameterIsNotNull(function1, "onClick");
        ParallaxItem parallaxItem = new ParallaxItem();
        parallaxItem.setViewType(2);
        parallaxItem.setTitle(str);
        parallaxItem.setSubtitle(str2);
        parallaxItem.setOnClick(function1);
        addStaticItem$default(this, parallaxItem, null, 2, null);
    }

    public final void addItem(String str, String str2, Function1<? super ParallaxItem, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(str, ShareConstants.WEB_DIALOG_PARAM_TITLE);
        Intrinsics.checkParameterIsNotNull(function1, "onClick");
        ParallaxItem parallaxItem = new ParallaxItem();
        parallaxItem.setViewType(2);
        parallaxItem.setTitle(str);
        parallaxItem.setSubtitle(str2);
        parallaxItem.setOnClick(function1);
        parallaxItem.setHideArrow(true);
        addStaticItem$default(this, parallaxItem, null, 2, null);
    }

    public final void addRightArrow(String str, String str2, String str3, Function1<? super ParallaxItem, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(str, ShareConstants.WEB_DIALOG_PARAM_TITLE);
        Intrinsics.checkParameterIsNotNull(function1, "onClick");
        ParallaxItem parallaxItem = new ParallaxItem();
        parallaxItem.setViewType(2);
        parallaxItem.setTitle(str);
        parallaxItem.setSubtitle(str2);
        parallaxItem.setPayload(str3);
        parallaxItem.setOnClick(function1);
        addStaticItem$default(this, parallaxItem, null, 2, null);
    }

    public final void addSwitch(String str, String str2, Function3<? super ParallaxItem, ? super Boolean, ? super GenericViewHolder, Unit> function3, Function2<? super ParallaxItem, ? super GenericViewHolder, Unit> function2) {
        Intrinsics.checkParameterIsNotNull(str, ShareConstants.WEB_DIALOG_PARAM_TITLE);
        Intrinsics.checkParameterIsNotNull(str2, "subTitle");
        Intrinsics.checkParameterIsNotNull(function2, "onBind");
        addSwitch(str, str2, function3, null, function2);
    }

    public final void addSwitch(String str, String str2, Function3<? super ParallaxItem, ? super Boolean, ? super GenericViewHolder, Unit> function3, Function1<? super ParallaxItem, Unit> function1, Function2<? super ParallaxItem, ? super GenericViewHolder, Unit> function2) {
        Intrinsics.checkParameterIsNotNull(str, ShareConstants.WEB_DIALOG_PARAM_TITLE);
        Intrinsics.checkParameterIsNotNull(str2, "subTitle");
        Intrinsics.checkParameterIsNotNull(function2, "onBind");
        ParallaxItem parallaxItem = new ParallaxItem();
        parallaxItem.setViewType(3);
        parallaxItem.setTitle(str);
        parallaxItem.setSubtitle(str2);
        parallaxItem.setOnClick(function1);
        parallaxItem.setOnSwitch(function3);
        parallaxItem.setOnBind(function2);
        addStaticItem$default(this, parallaxItem, null, 2, null);
    }

    public static /* bridge */ /* synthetic */ void addAnalytics$default(ParallaxAdapter parallaxAdapter, String str, String str2, String str3, String str4, Integer num, boolean z, Function3 function3, Function2 function2, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addAnalytics");
        }
        parallaxAdapter.addAnalytics(str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : str4, (i & 16) != 0 ? null : num, (i & 32) != 0 ? false : z, function3, function2);
    }

    public final void addAnalytics(String str, String str2, String str3, String str4, Integer num, boolean z, Function3<? super ParallaxItem, ? super Boolean, ? super GenericViewHolder, Unit> function3, Function2<? super ParallaxItem, ? super GenericViewHolder, Unit> function2) {
        Intrinsics.checkParameterIsNotNull(str, ShareConstants.WEB_DIALOG_PARAM_TITLE);
        Intrinsics.checkParameterIsNotNull(function2, "onBind");
        AnalyticsParallaxItem analyticsParallaxItem = new AnalyticsParallaxItem(str2, str3, str4, num, z);
        analyticsParallaxItem.setViewType(8);
        analyticsParallaxItem.setTitle(str);
        analyticsParallaxItem.setOnSwitch(function3);
        analyticsParallaxItem.setOnBind(function2);
        addStaticItem$default(this, analyticsParallaxItem, null, 2, null);
    }

    public final void addStatistics(StatisticsAdapter statisticsAdapter, String str, String str2) {
        Intrinsics.checkParameterIsNotNull(statisticsAdapter, "statisticsAdapter");
        Intrinsics.checkParameterIsNotNull(str, "collapsedActionName");
        Intrinsics.checkParameterIsNotNull(str2, "fullActionName");
        ParallaxItem parallaxItem = new ParallaxItem();
        parallaxItem.setViewType(9);
        parallaxItem.setPayload(statisticsAdapter);
        parallaxItem.setTitle(str);
        parallaxItem.setSubtitle(str2);
        addStaticItem$default(this, parallaxItem, null, 2, null);
    }

    public final void addBarChart(BarChartView.Adapter adapter) {
        Intrinsics.checkParameterIsNotNull(adapter, "barChartAdapter");
        ParallaxItem parallaxItem = new ParallaxItem();
        parallaxItem.setViewType(4);
        parallaxItem.setBarChartAdapter(adapter);
        addStaticItem$default(this, parallaxItem, null, 2, null);
    }

    public final void addDynamicFeedItem(FeedItem feedItem) {
        Intrinsics.checkParameterIsNotNull(feedItem, "feedItem");
        ParallaxItem parallaxItem = new ParallaxItem();
        parallaxItem.setViewType(5);
        AbstractOperation operation = feedItem.getOperation();
        parallaxItem.setId((int) (operation != null ? operation.getId() : 0));
        parallaxItem.setFeedItem(feedItem);
        addDynamic(parallaxItem);
    }

    public final void removeBottom() {
        if (this.existsBottom) {
            this.existsBottom = false;
        }
    }

    public final void addBottom() {
        if (!this.existsBottom) {
            this.existsBottom = true;
        }
    }

    public GenericViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        Intrinsics.checkParameterIsNotNull(viewGroup, "parent");
        LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
        switch (i) {
            case 0:
                viewGroup = ParallaxHeaderBinding.inflate(from, viewGroup, false);
                Intrinsics.checkExpressionValueIsNotNull(viewGroup, "binding");
                viewGroup.setData((HeaderData) this.parallaxData);
                View root = viewGroup.getRoot();
                Intrinsics.checkExpressionValueIsNotNull(root, "binding.root");
                return (GenericViewHolder) new HeaderViewHolder(root, this.appBarLayout, this.headerHeight, viewGroup);
            case 1:
                viewGroup = from.inflate(C0859R.layout.layout_delimiter, viewGroup, false);
                Intrinsics.checkExpressionValueIsNotNull(viewGroup, "view");
                return (GenericViewHolder) new GenericDelimiterViewHolder(viewGroup);
            case 2:
                viewGroup = from.inflate(C0859R.layout.profile_item_change, viewGroup, false);
                Intrinsics.checkExpressionValueIsNotNull(viewGroup, "view");
                return (GenericViewHolder) new GenericRightArrowViewHolder(viewGroup);
            case 3:
                viewGroup = from.inflate(C0859R.layout.profile_item_switch, viewGroup, false);
                Intrinsics.checkExpressionValueIsNotNull(viewGroup, "view");
                return (GenericViewHolder) new GenericSwitchViewHolder(viewGroup);
            case 4:
                viewGroup = from.inflate(C0859R.layout.layout_generic_barchart, viewGroup, false);
                Intrinsics.checkExpressionValueIsNotNull(viewGroup, "view");
                return (GenericViewHolder) new GenericBarChartViewHolder(null, viewGroup);
            case 5:
                viewGroup = from.inflate(C0859R.layout.feed_item_operation, viewGroup, false);
                Context context = this.appBarLayout.getContext();
                Intrinsics.checkExpressionValueIsNotNull(context, "appBarLayout.context");
                Intrinsics.checkExpressionValueIsNotNull(viewGroup, "view");
                return (GenericViewHolder) new GenericOperationViewHolder(context, viewGroup);
            case 6:
                return new GenericViewHolder(from.inflate(C0859R.layout.feed_item_loading, viewGroup, false));
            case 7:
                viewGroup = ParallaxRoundImageItemBinding.inflate(from, viewGroup, false);
                Intrinsics.checkExpressionValueIsNotNull(viewGroup, "binding");
                return (GenericViewHolder) new GenericRoundedImageViewHolder(viewGroup);
            case 8:
                viewGroup = from.inflate(C0859R.layout.profile_item_joint_analytics, viewGroup, false);
                Intrinsics.checkExpressionValueIsNotNull(viewGroup, "view");
                return (GenericViewHolder) new AnalyticsProfileViewHolder(viewGroup);
            case 9:
                viewGroup = from.inflate(C0859R.layout.layout_general_statistics, viewGroup, false);
                Intrinsics.checkExpressionValueIsNotNull(viewGroup, "view");
                return (GenericViewHolder) new StatisticsViewHolder(viewGroup);
            default:
                return onCreateCustomViewType(viewGroup, i);
        }
    }

    public GenericViewHolder onCreateCustomViewType(ViewGroup viewGroup, int i) {
        Intrinsics.checkParameterIsNotNull(viewGroup, "parent");
        return new GenericViewHolder(new View(viewGroup.getContext()));
    }

    public ParallaxItem getItem(int i) {
        if (i == 0) {
            return null;
        }
        i--;
        int size = this.items.size();
        if (i < size) {
            return (ParallaxItem) this.items.get(i);
        }
        i -= size;
        if (i < this.dynamicItems.size()) {
            return (ParallaxItem) this.dynamicItems.get(i);
        }
        return null;
    }

    public int getItemCount() {
        return (this.items.size() + 1) + this.dynamicItems.size();
    }
}
