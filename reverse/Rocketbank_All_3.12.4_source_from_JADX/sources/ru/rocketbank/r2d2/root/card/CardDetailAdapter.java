package ru.rocketbank.r2d2.root.card;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.facebook.share.internal.ShareConstants;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.provider.ProviderField;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.adapters.ParallaxAdapter;
import ru.rocketbank.r2d2.data.binding.parallax.ParallaxData;
import ru.rocketbank.r2d2.widgets.recycler.parallax.GenericViewHolder;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.GenericDelimiterViewHolder;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.ParallaxItem;

/* compiled from: CardDetailAdapter.kt */
public final class CardDetailAdapter extends ParallaxAdapter {
    public static final Companion Companion = new Companion();
    public static final int VIEW_TYPE_ACTION = 1048577;
    public static final int VIEW_TYPE_AP = 1048579;
    public static final int VIEW_TYPE_LIMIT = 1048578;
    public static final int VIEW_TYPE_SP = 1048580;
    private final ParallaxItem ap = new ParallaxItem();
    private final ParallaxItem sp = new ParallaxItem();

    /* compiled from: CardDetailAdapter.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public CardDetailAdapter(ParallaxData parallaxData, View view, int i) {
        Intrinsics.checkParameterIsNotNull(parallaxData, "parallaxData");
        Intrinsics.checkParameterIsNotNull(view, "appBarLayout");
        super(parallaxData, view, i);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void onBindCustomViewType(ru.rocketbank.r2d2.widgets.recycler.parallax.GenericViewHolder r1, int r2, int r3) {
        /*
        r0 = this;
        super.onBindCustomViewType(r1, r2, r3);
        r2 = 10;
        if (r3 == r2) goto L_0x0098;
    L_0x0007:
        switch(r3) {
            case 1048577: goto L_0x0068;
            case 1048578: goto L_0x0044;
            case 1048579: goto L_0x0028;
            case 1048580: goto L_0x000c;
            default: goto L_0x000a;
        };
    L_0x000a:
        goto L_0x00b9;
    L_0x000c:
        if (r1 != 0) goto L_0x0011;
    L_0x000e:
        kotlin.jvm.internal.Intrinsics.throwNpe();
    L_0x0011:
        r2 = r1.getItem();
        if (r2 != 0) goto L_0x001a;
    L_0x0017:
        kotlin.jvm.internal.Intrinsics.throwNpe();
    L_0x001a:
        r1 = (ru.rocketbank.r2d2.root.card.SPViewHolder) r1;
        r3 = r2.getTitle();
        r2 = r2.getOnClick();
        r1.onBind(r3, r2);
        return;
    L_0x0028:
        if (r1 != 0) goto L_0x002d;
    L_0x002a:
        kotlin.jvm.internal.Intrinsics.throwNpe();
    L_0x002d:
        r2 = r1.getItem();
        if (r2 != 0) goto L_0x0036;
    L_0x0033:
        kotlin.jvm.internal.Intrinsics.throwNpe();
    L_0x0036:
        r1 = (ru.rocketbank.r2d2.root.card.APViewHolder) r1;
        r3 = r2.getTitle();
        r2 = r2.getOnClick();
        r1.onBind(r3, r2);
        return;
    L_0x0044:
        if (r1 != 0) goto L_0x0049;
    L_0x0046:
        kotlin.jvm.internal.Intrinsics.throwNpe();
    L_0x0049:
        r2 = r1.getItem();
        if (r2 != 0) goto L_0x0052;
    L_0x004f:
        kotlin.jvm.internal.Intrinsics.throwNpe();
    L_0x0052:
        r1 = (ru.rocketbank.r2d2.root.card.LimitViewHolder) r1;
        r3 = r2.getTitle();
        if (r3 != 0) goto L_0x005c;
    L_0x005a:
        r3 = "";
    L_0x005c:
        r2 = r2.getSubtitle();
        if (r2 != 0) goto L_0x0064;
    L_0x0062:
        r2 = "";
    L_0x0064:
        r1.onBind(r3, r2);
        return;
    L_0x0068:
        if (r1 != 0) goto L_0x006d;
    L_0x006a:
        kotlin.jvm.internal.Intrinsics.throwNpe();
    L_0x006d:
        r2 = r1.getItem();
        if (r2 != 0) goto L_0x0076;
    L_0x0073:
        kotlin.jvm.internal.Intrinsics.throwNpe();
    L_0x0076:
        r1 = (ru.rocketbank.r2d2.root.card.ActionViewHolder) r1;
        r3 = r2.getTitle();
        if (r3 != 0) goto L_0x0080;
    L_0x007e:
        r3 = "";
    L_0x0080:
        r2 = r2.getPayload();
        if (r2 != 0) goto L_0x008e;
    L_0x0086:
        r1 = new kotlin.TypeCastException;
        r2 = "null cannot be cast to non-null type kotlin.Int";
        r1.<init>(r2);
        throw r1;
    L_0x008e:
        r2 = (java.lang.Integer) r2;
        r2 = r2.intValue();
        r1.onBind(r3, r2);
        return;
    L_0x0098:
        if (r1 == 0) goto L_0x009f;
    L_0x009a:
        r2 = r1.getItem();
        goto L_0x00a0;
    L_0x009f:
        r2 = 0;
    L_0x00a0:
        if (r1 != 0) goto L_0x00aa;
    L_0x00a2:
        r1 = new kotlin.TypeCastException;
        r2 = "null cannot be cast to non-null type ru.rocketbank.r2d2.widgets.recycler.parallax.vh.GenericDelimiterViewHolder";
        r1.<init>(r2);
        throw r1;
    L_0x00aa:
        r1 = (ru.rocketbank.r2d2.widgets.recycler.parallax.vh.GenericDelimiterViewHolder) r1;
        if (r2 == 0) goto L_0x00b4;
    L_0x00ae:
        r2 = r2.getTitle();
        if (r2 != 0) goto L_0x00b6;
    L_0x00b4:
        r2 = "";
    L_0x00b6:
        r1.setText(r2);
    L_0x00b9:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.root.card.CardDetailAdapter.onBindCustomViewType(ru.rocketbank.r2d2.widgets.recycler.parallax.GenericViewHolder, int, int):void");
    }

    public final void addLockButton(String str, int i, Function0<Unit> function0) {
        Intrinsics.checkParameterIsNotNull(str, ProviderField.TEXT);
        Intrinsics.checkParameterIsNotNull(function0, "onClicked");
        ParallaxItem parallaxItem = new ParallaxItem();
        parallaxItem.setOnClick(new CardDetailAdapter$addLockButton$1(function0));
        parallaxItem.setTitle(str);
        parallaxItem.setPayload(Integer.valueOf(i));
        parallaxItem.setViewType(VIEW_TYPE_ACTION);
        ParallaxAdapter.addStaticItem$default(this, parallaxItem, null, 2, null);
    }

    public final void addLimit(String str, String str2) {
        Intrinsics.checkParameterIsNotNull(str, "limitName");
        Intrinsics.checkParameterIsNotNull(str2, "limitValue");
        ParallaxItem parallaxItem = new ParallaxItem();
        parallaxItem.setTitle(str);
        parallaxItem.setSubtitle(str2);
        parallaxItem.setViewType(VIEW_TYPE_LIMIT);
        ParallaxAdapter.addStaticItem$default(this, parallaxItem, null, 2, null);
    }

    public final void addAndroidPay(String str, Function1<? super ParallaxItem, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(str, ShareConstants.WEB_DIALOG_PARAM_TITLE);
        this.ap.setViewType(VIEW_TYPE_AP);
        this.ap.setOnClick(function1);
        this.ap.setTitle(str);
        ParallaxAdapter.addStaticItem$default(this, this.ap, null, 2, null);
    }

    public final void addSPay(String str, Function1<? super ParallaxItem, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(str, ShareConstants.WEB_DIALOG_PARAM_TITLE);
        this.sp.setViewType(VIEW_TYPE_SP);
        this.sp.setOnClick(function1);
        this.sp.setTitle(str);
        ParallaxAdapter.addStaticItem$default(this, this.sp, null, 2, null);
    }

    public final GenericViewHolder onCreateCustomViewType(ViewGroup viewGroup, int i) {
        Intrinsics.checkParameterIsNotNull(viewGroup, "parent");
        if (i == 10) {
            return onUpperCaseDelimitterCreate(viewGroup);
        }
        switch (i) {
            case VIEW_TYPE_ACTION /*1048577*/:
                return onActionCreate(viewGroup);
            case VIEW_TYPE_LIMIT /*1048578*/:
                return onLimitCreate(viewGroup);
            case VIEW_TYPE_AP /*1048579*/:
                return onAPCreate(viewGroup);
            case VIEW_TYPE_SP /*1048580*/:
                return onSPCreate(viewGroup);
            default:
                return super.onCreateCustomViewType(viewGroup, i);
        }
    }

    private final GenericViewHolder onSPCreate(ViewGroup viewGroup) {
        viewGroup = LayoutInflater.from(viewGroup != null ? viewGroup.getContext() : null).inflate(C0859R.layout.profile_item_sp, viewGroup, false);
        Intrinsics.checkExpressionValueIsNotNull(viewGroup, "view");
        return new SPViewHolder(viewGroup);
    }

    private final GenericViewHolder onLimitCreate(ViewGroup viewGroup) {
        viewGroup = LayoutInflater.from(viewGroup != null ? viewGroup.getContext() : null).inflate(C0859R.layout.list_item_card_limit, viewGroup, false);
        Intrinsics.checkExpressionValueIsNotNull(viewGroup, "view");
        return new LimitViewHolder(viewGroup);
    }

    private final GenericViewHolder onUpperCaseDelimitterCreate(ViewGroup viewGroup) {
        viewGroup = LayoutInflater.from(viewGroup != null ? viewGroup.getContext() : null).inflate(C0859R.layout.layout_uppercase_delimiter, viewGroup, false);
        Intrinsics.checkExpressionValueIsNotNull(viewGroup, "view");
        return new GenericDelimiterViewHolder(viewGroup);
    }

    private final GenericViewHolder onActionCreate(ViewGroup viewGroup) {
        viewGroup = LayoutInflater.from(viewGroup != null ? viewGroup.getContext() : null).inflate(C0859R.layout.list_item_card_delete, viewGroup, false);
        Intrinsics.checkExpressionValueIsNotNull(viewGroup, "view");
        return new ActionViewHolder(viewGroup);
    }

    private final GenericViewHolder onAPCreate(ViewGroup viewGroup) {
        viewGroup = LayoutInflater.from(viewGroup != null ? viewGroup.getContext() : null).inflate(C0859R.layout.profile_item_ap, viewGroup, false);
        Intrinsics.checkExpressionValueIsNotNull(viewGroup, "view");
        return new APViewHolder(viewGroup);
    }

    public final void addUpperCaseDelimiter(String str) {
        Intrinsics.checkParameterIsNotNull(str, "name");
        ParallaxItem parallaxItem = new ParallaxItem();
        parallaxItem.setViewType(10);
        str = str.toUpperCase();
        Intrinsics.checkExpressionValueIsNotNull(str, "(this as java.lang.String).toUpperCase()");
        parallaxItem.setTitle(str);
        ParallaxAdapter.addStaticItem$default(this, parallaxItem, null, 2, null);
    }
}
