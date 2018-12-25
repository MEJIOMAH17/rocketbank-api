package ru.rocketbank.r2d2.charges;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.content.ContextCompat;
import android.support.v7.widget.LinearLayoutManager.SavedState;
import android.support.v7.widget.RecyclerView;
import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StrikethroughSpan;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.TreeMap;
import kotlin.NoWhenBranchMatchedException;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.charge.ChargeModel;
import ru.rocketbank.core.model.charge.ChargeModel.Requisites;
import ru.rocketbank.core.model.charge.ChargeType;
import ru.rocketbank.core.model.charge.DocumentType;
import ru.rocketbank.core.model.enums.Currency;
import ru.rocketbank.core.utils.MoneyFormatter;
import ru.rocketbank.core.widgets.CunningCat;
import ru.rocketbank.core.widgets.SectionedRecyclerViewAdapter;
import ru.rocketbank.core.widgets.SectionedRecyclerViewAdapter.Section;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.activities.SecuredActivity;
import rx.Observable;
import rx.Subscription;

/* compiled from: ChargesListActivity.kt */
public final class ChargesListActivity extends SecuredActivity {
    public static final Companion Companion = new Companion();
    private static final String KEY_CHARGES = "KEY_CHARGES";
    private static final String KEY_CHARGE_TYPE = ChargePaymentDetailsActivity.Companion.getKEY_CHARGE_TYPE();
    private static final String KEY_CTC = "KEY_CTC";
    private static final String KEY_DRIVER_LICENCE = "KEY_DRIVER_LICENCE";
    private static final String KEY_INN = "KEY_INN";
    private static final String KEY_LOAD_ACTUAL = "KEY_LOAD_ACTUAL";
    private static final String KEY_RECYCLER_VIEW_STATE = "KEY_RECYCLER_VIEW_STATE";
    private static final String KEY_UIN = "KEY_UIN";
    private HashMap _$_findViewCache;
    private Subscription chargeFetchSubscription;
    private ChargeType chargeType;
    private ArrayList<ChargeModel> charges = new ArrayList();
    private ChargesAdapter chargesAdapter;
    private SavedState savedState;
    private SectionedRecyclerViewAdapter sectionedRecyclerViewAdapter;

    /* compiled from: ChargesListActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        public final String getKEY_CHARGES() {
            return ChargesListActivity.KEY_CHARGES;
        }

        public final String getKEY_CTC() {
            return ChargesListActivity.KEY_CTC;
        }

        public final String getKEY_UIN() {
            return ChargesListActivity.KEY_UIN;
        }

        public final String getKEY_DRIVER_LICENCE() {
            return ChargesListActivity.KEY_DRIVER_LICENCE;
        }

        public final String getKEY_INN() {
            return ChargesListActivity.KEY_INN;
        }

        public final String getKEY_RECYCLER_VIEW_STATE() {
            return ChargesListActivity.KEY_RECYCLER_VIEW_STATE;
        }

        public final String getKEY_LOAD_ACTUAL() {
            return ChargesListActivity.KEY_LOAD_ACTUAL;
        }

        public final String getKEY_CHARGE_TYPE() {
            return ChargesListActivity.KEY_CHARGE_TYPE;
        }

        public static /* bridge */ /* synthetic */ void start$default(Companion companion, Context context, String str, String str2, String str3, String str4, int i, Object obj) {
            companion.start(context, str, (i & 4) != null ? null : str2, (i & 8) != null ? null : str3, (i & 16) != null ? null : str4);
        }

        public final void start(Context context, String str, String str2, String str3, String str4) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(str, "icon");
            Companion companion = this;
            str = createIntent(context, ChargeType.PENALTY, str);
            str.putExtra(getKEY_CTC(), str2);
            str.putExtra(getKEY_DRIVER_LICENCE(), str3);
            str.putExtra(getKEY_UIN(), str4);
            str.putExtra(getKEY_LOAD_ACTUAL(), null);
            context.startActivity(str);
        }

        public static /* bridge */ /* synthetic */ void start$default(Companion companion, Context context, String str, String str2, String str3, String str4, String str5, int i, Object obj) {
            companion.start(context, str, (i & 4) != 0 ? null : str2, (i & 8) != 0 ? null : str3, (i & 16) != 0 ? null : str4, (i & 32) != 0 ? null : str5);
        }

        public final void start(Context context, String str, String str2, String str3, String str4, String str5) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(str, "icon");
            Companion companion = this;
            str = createIntent(context, ChargeType.PENALTY_TAX, str);
            str.putExtra(getKEY_CTC(), str2);
            str.putExtra(getKEY_DRIVER_LICENCE(), str3);
            str.putExtra(getKEY_UIN(), str4);
            str.putExtra(getKEY_INN(), str5);
            str.putExtra(getKEY_LOAD_ACTUAL(), null);
            context.startActivity(str);
        }

        public static /* bridge */ /* synthetic */ void start$default(Companion companion, Context context, String str, String str2, int i, Object obj) {
            if ((i & 4) != 0) {
                str2 = null;
            }
            companion.start(context, str, str2);
        }

        public final void start(Context context, String str, String str2) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(str, "icon");
            Companion companion = this;
            str = createIntent(context, ChargeType.TAX, str);
            str.putExtra(getKEY_INN(), str2);
            str.putExtra(getKEY_LOAD_ACTUAL(), false);
            context.startActivity(str);
        }

        public final void start(Context context, String str, ChargeType chargeType) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(str, "icon");
            Intrinsics.checkParameterIsNotNull(chargeType, "chargeType");
            Companion companion = this;
            str = createIntent(context, chargeType, str);
            str.putExtra(getKEY_LOAD_ACTUAL(), true);
            context.startActivity(str);
        }

        public final Intent createIntent(Context context, ChargeType chargeType, String str) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(chargeType, "chargeType");
            Intrinsics.checkParameterIsNotNull(str, "icon");
            Intent intent = new Intent(context, ChargesListActivity.class);
            intent.putExtra(getKEY_CHARGE_TYPE(), chargeType);
            intent.putExtra(ChargePaymentDetailsActivity.Companion.getKEY_ICON(), str);
            return intent;
        }

        public static /* bridge */ /* synthetic */ SpannableStringBuilder createChargeSumText$default(Companion companion, Context context, ChargeModel chargeModel, int i, Integer num, int i2, Object obj) {
            if ((i2 & 4) != null) {
                i = C0859R.color.rocketBlack;
            }
            if ((i2 & 8) != 0) {
                num = null;
            }
            return companion.createChargeSumText(context, chargeModel, i, num);
        }

        public final SpannableStringBuilder createChargeSumText(Context context, ChargeModel chargeModel, int i, Integer num) {
            double doubleValue;
            SpannableStringBuilder spannableStringBuilder;
            Double discount_amount;
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(chargeModel, "chargeModel");
            MoneyFormatter moneyFormatter = new MoneyFormatter(context, RocketApplication.Companion.getInjector().getAuthorization(), RocketApplication.Companion.getInjector().getCurrencyManager());
            Requisites requisites = chargeModel.getRequisites();
            double d = 0.0d;
            if (requisites != null) {
                Double amount = requisites.getAmount();
                if (amount != null) {
                    doubleValue = amount.doubleValue();
                    spannableStringBuilder = new SpannableStringBuilder(moneyFormatter.format(doubleValue, Currency.ROUBLE, false));
                    if (num != null) {
                        spannableStringBuilder.setSpan(new AbsoluteSizeSpan(num.intValue(), true), 0, spannableStringBuilder.length(), 33);
                    }
                    if (chargeModel.getDiscount_amount() == null) {
                        spannableStringBuilder.setSpan(new StrikethroughSpan(), 0, spannableStringBuilder.length(), 33);
                        spannableStringBuilder.append(" (");
                        i = spannableStringBuilder.length();
                        discount_amount = chargeModel.getDiscount_amount();
                        if (discount_amount != null) {
                            d = discount_amount.doubleValue();
                        }
                        spannableStringBuilder.append(moneyFormatter.format(d, Currency.ROUBLE, false));
                        spannableStringBuilder.setSpan(new ForegroundColorSpan(ContextCompat.getColor(context, C0859R.color.green)), i, spannableStringBuilder.length(), 33);
                        if (num != null) {
                            spannableStringBuilder.setSpan(new AbsoluteSizeSpan(num.intValue(), true), i, spannableStringBuilder.length(), 33);
                        }
                        i = spannableStringBuilder.length();
                        spannableStringBuilder.append(" ");
                        spannableStringBuilder.append(context.getString(C0859R.string.until));
                        spannableStringBuilder.append(" ");
                        num = ChargeModel.Companion.getDATE_FORMAT();
                        chargeModel = chargeModel.getDiscount_date_calendar();
                        spannableStringBuilder.append(num.format(chargeModel == null ? chargeModel.getTime() : null));
                        spannableStringBuilder.setSpan(new ForegroundColorSpan(ContextCompat.getColor(context, C0859R.color.charges_grey_color)), i, spannableStringBuilder.length(), 33);
                        spannableStringBuilder.setSpan(new AbsoluteSizeSpan(14, true), i, spannableStringBuilder.length(), 33);
                        spannableStringBuilder.append(")");
                    } else {
                        spannableStringBuilder.setSpan(new ForegroundColorSpan(ContextCompat.getColor(context, i)), 0, spannableStringBuilder.length(), 33);
                    }
                    return spannableStringBuilder;
                }
            }
            doubleValue = 0.0d;
            spannableStringBuilder = new SpannableStringBuilder(moneyFormatter.format(doubleValue, Currency.ROUBLE, false));
            if (num != null) {
                spannableStringBuilder.setSpan(new AbsoluteSizeSpan(num.intValue(), true), 0, spannableStringBuilder.length(), 33);
            }
            if (chargeModel.getDiscount_amount() == null) {
                spannableStringBuilder.setSpan(new ForegroundColorSpan(ContextCompat.getColor(context, i)), 0, spannableStringBuilder.length(), 33);
            } else {
                spannableStringBuilder.setSpan(new StrikethroughSpan(), 0, spannableStringBuilder.length(), 33);
                spannableStringBuilder.append(" (");
                i = spannableStringBuilder.length();
                discount_amount = chargeModel.getDiscount_amount();
                if (discount_amount != null) {
                    d = discount_amount.doubleValue();
                }
                spannableStringBuilder.append(moneyFormatter.format(d, Currency.ROUBLE, false));
                spannableStringBuilder.setSpan(new ForegroundColorSpan(ContextCompat.getColor(context, C0859R.color.green)), i, spannableStringBuilder.length(), 33);
                if (num != null) {
                    spannableStringBuilder.setSpan(new AbsoluteSizeSpan(num.intValue(), true), i, spannableStringBuilder.length(), 33);
                }
                i = spannableStringBuilder.length();
                spannableStringBuilder.append(" ");
                spannableStringBuilder.append(context.getString(C0859R.string.until));
                spannableStringBuilder.append(" ");
                num = ChargeModel.Companion.getDATE_FORMAT();
                chargeModel = chargeModel.getDiscount_date_calendar();
                if (chargeModel == null) {
                }
                spannableStringBuilder.append(num.format(chargeModel == null ? chargeModel.getTime() : null));
                spannableStringBuilder.setSpan(new ForegroundColorSpan(ContextCompat.getColor(context, C0859R.color.charges_grey_color)), i, spannableStringBuilder.length(), 33);
                spannableStringBuilder.setSpan(new AbsoluteSizeSpan(14, true), i, spannableStringBuilder.length(), 33);
                spannableStringBuilder.append(")");
            }
            return spannableStringBuilder;
        }
    }

    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[ChargeType.values().length];
            $EnumSwitchMapping$0 = iArr;
            iArr[ChargeType.PENALTY.ordinal()] = 1;
            $EnumSwitchMapping$0[ChargeType.PENALTY_TAX.ordinal()] = 2;
            $EnumSwitchMapping$0[ChargeType.TAX.ordinal()] = 3;
            iArr = new int[ChargeType.values().length];
            $EnumSwitchMapping$1 = iArr;
            iArr[ChargeType.PENALTY.ordinal()] = 1;
            $EnumSwitchMapping$1[ChargeType.TAX.ordinal()] = 2;
            $EnumSwitchMapping$1[ChargeType.PENALTY_TAX.ordinal()] = 3;
        }
    }

    public final void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public final View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        view = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), view);
        return view;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected final void onCreate(android.os.Bundle r5) {
        /*
        r4 = this;
        super.onCreate(r5);
        r0 = 2131492916; // 0x7f0c0034 float:1.8609297E38 double:1.053097424E-314;
        r4.setContentView(r0);
        r0 = ru.rocketbank.r2d2.C0859R.id.toolbar;
        r0 = r4._$_findCachedViewById(r0);
        r0 = (android.support.v7.widget.Toolbar) r0;
        r4.setSupportActionBar(r0);
        r0 = r4.getSupportActionBar();
        if (r0 == 0) goto L_0x001e;
    L_0x001a:
        r1 = 1;
        r0.setDisplayHomeAsUpEnabled(r1);
    L_0x001e:
        r0 = r4.getIntent();
        r1 = KEY_CHARGE_TYPE;
        r0 = r0.getSerializableExtra(r1);
        if (r0 != 0) goto L_0x0032;
    L_0x002a:
        r5 = new kotlin.TypeCastException;
        r0 = "null cannot be cast to non-null type ru.rocketbank.core.model.charge.ChargeType";
        r5.<init>(r0);
        throw r5;
    L_0x0032:
        r0 = (ru.rocketbank.core.model.charge.ChargeType) r0;
        r4.chargeType = r0;
        r0 = r4.chargeType;
        if (r0 != 0) goto L_0x003f;
    L_0x003a:
        r1 = "chargeType";
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r1);
    L_0x003f:
        r0 = r0.getActivityTitle();
        r4.setTitle(r0);
        if (r5 == 0) goto L_0x0050;
    L_0x0048:
        r0 = KEY_CHARGES;
        r0 = r5.getParcelableArrayList(r0);
        if (r0 != 0) goto L_0x0055;
    L_0x0050:
        r0 = new java.util.ArrayList;
        r0.<init>();
    L_0x0055:
        r4.charges = r0;
        r0 = ru.rocketbank.r2d2.C0859R.id.recyclerView;
        r0 = r4._$_findCachedViewById(r0);
        r0 = (android.support.v7.widget.RecyclerView) r0;
        r1 = "recyclerView";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r1);
        r1 = new android.support.v7.widget.LinearLayoutManager;
        r2 = r4;
        r2 = (android.content.Context) r2;
        r1.<init>(r2);
        r1 = (android.support.v7.widget.RecyclerView.LayoutManager) r1;
        r0.setLayoutManager(r1);
        r0 = ru.rocketbank.r2d2.helpers.UIHelper.supportsViewElevation();
        if (r0 != 0) goto L_0x009c;
    L_0x0077:
        r0 = ru.rocketbank.r2d2.C0859R.id.recyclerView;
        r0 = r4._$_findCachedViewById(r0);
        r0 = (android.support.v7.widget.RecyclerView) r0;
        r1 = new ru.rocketbank.core.widgets.ItemShadowDecorator;
        r3 = 2131231159; // 0x7f0801b7 float:1.8078391E38 double:1.052968099E-314;
        r2 = android.support.v4.content.ContextCompat.getDrawable(r2, r3);
        if (r2 != 0) goto L_0x0092;
    L_0x008a:
        r5 = new kotlin.TypeCastException;
        r0 = "null cannot be cast to non-null type android.graphics.drawable.NinePatchDrawable";
        r5.<init>(r0);
        throw r5;
    L_0x0092:
        r2 = (android.graphics.drawable.NinePatchDrawable) r2;
        r1.<init>(r2);
        r1 = (android.support.v7.widget.RecyclerView.ItemDecoration) r1;
        r0.addItemDecoration(r1);
    L_0x009c:
        if (r5 == 0) goto L_0x00a7;
    L_0x009e:
        r0 = KEY_RECYCLER_VIEW_STATE;
        r0 = r5.getParcelable(r0);
        r0 = (android.support.v7.widget.LinearLayoutManager.SavedState) r0;
        goto L_0x00a8;
    L_0x00a7:
        r0 = 0;
    L_0x00a8:
        r4.savedState = r0;
        if (r5 == 0) goto L_0x00b9;
    L_0x00ac:
        r5 = r4.charges;
        r5 = r5.isEmpty();
        if (r5 == 0) goto L_0x00b5;
    L_0x00b4:
        goto L_0x00b9;
    L_0x00b5:
        r4.showData();
        return;
    L_0x00b9:
        r4.showProgressDialog();
        r5 = r4.loader();
        r0 = rx.android.schedulers.AndroidSchedulers.mainThread();
        r5 = r5.observeOn(r0);
        r0 = rx.schedulers.Schedulers.io();
        r5 = r5.subscribeOn(r0);
        r0 = new ru.rocketbank.r2d2.charges.ChargesListActivity$onCreate$1;
        r0.<init>(r4);
        r0 = (rx.functions.Action1) r0;
        r1 = new ru.rocketbank.r2d2.charges.ChargesListActivity$onCreate$2;
        r1.<init>(r4);
        r1 = (rx.functions.Action1) r1;
        r5 = r5.subscribe(r0, r1);
        r4.chargeFetchSubscription = r5;
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.charges.ChargesListActivity.onCreate(android.os.Bundle):void");
    }

    public final Observable<ArrayList<ChargeModel>> loader() {
        String stringExtra = getIntent().getStringExtra(KEY_CTC);
        String stringExtra2 = getIntent().getStringExtra(KEY_DRIVER_LICENCE);
        String stringExtra3 = getIntent().getStringExtra(KEY_UIN);
        String stringExtra4 = getIntent().getStringExtra(KEY_INN);
        Observable<ArrayList<ChargeModel>> penalty;
        if (getIntent().getBooleanExtra(KEY_LOAD_ACTUAL, false)) {
            ChargeType chargeType = this.chargeType;
            if (chargeType == null) {
                Intrinsics.throwUninitializedPropertyAccessException("chargeType");
            }
            switch (WhenMappings.$EnumSwitchMapping$0[chargeType.ordinal()]) {
                case 1:
                case 2:
                    penalty = this.rocketApi.penalty();
                    break;
                case 3:
                    penalty = this.rocketApi.tax();
                    break;
                default:
                    throw new NoWhenBranchMatchedException();
            }
            Intrinsics.checkExpressionValueIsNotNull(penalty, "when (chargeType) {\n    …etApi.tax()\n            }");
            return penalty;
        }
        ChargeType chargeType2 = this.chargeType;
        if (chargeType2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chargeType");
        }
        switch (WhenMappings.$EnumSwitchMapping$1[chargeType2.ordinal()]) {
            case 1:
                penalty = this.rocketApi.chargesFetch(stringExtra2, stringExtra, null, stringExtra3);
                break;
            case 2:
                penalty = this.rocketApi.chargesFetch(null, null, stringExtra4, null);
                break;
            case 3:
                penalty = this.rocketApi.chargesFetch(stringExtra2, stringExtra, stringExtra4, stringExtra3);
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        Intrinsics.checkExpressionValueIsNotNull(penalty, "when (chargeType) {\n    …, inn, uin)\n            }");
        return penalty;
    }

    public final void showData() {
        this.chargesAdapter = new ChargesAdapter(new ArrayList());
        this.sectionedRecyclerViewAdapter = new SectionedRecyclerViewAdapter(this.chargesAdapter);
        updateData();
    }

    public final void updateData() {
        Collection arrayList = new ArrayList();
        Iterator it = this.charges.iterator();
        while (true) {
            int i = 1;
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            if (((ChargeModel) next).getRequisites() == null) {
                i = 0;
            }
            if (i != 0) {
                arrayList.add(next);
            }
        }
        Collection arrayList2 = new ArrayList();
        for (Object next2 : (List) arrayList) {
            int i2;
            ChargeModel chargeModel = (ChargeModel) next2;
            ChargeType chargeType = this.chargeType;
            if (chargeType == null) {
                Intrinsics.throwUninitializedPropertyAccessException("chargeType");
            }
            if (chargeType != ChargeType.PENALTY_TAX) {
                ChargeType chargeType2 = chargeModel.getDocument_type().getChargeType();
                chargeType = this.chargeType;
                if (chargeType == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("chargeType");
                }
                if (chargeType2 != chargeType) {
                    i2 = 0;
                    if (i2 != 0) {
                        arrayList2.add(next2);
                    }
                }
            }
            i2 = 1;
            if (i2 != 0) {
                arrayList2.add(next2);
            }
        }
        List list = (List) arrayList2;
        if (list.isEmpty()) {
            nothingFound();
            return;
        }
        FrameLayout frameLayout = (FrameLayout) _$_findCachedViewById(C0859R.id.content);
        Intrinsics.checkExpressionValueIsNotNull(frameLayout, Param.CONTENT);
        frameLayout.setVisibility(0);
        RelativeLayout relativeLayout = (RelativeLayout) _$_findCachedViewById(C0859R.id.nothingFound);
        Intrinsics.checkExpressionValueIsNotNull(relativeLayout, "nothingFound");
        relativeLayout.setVisibility(8);
        Iterable sortedWith = CollectionsKt.sortedWith(list, new ChargesListActivity$updateData$$inlined$sortedByDescending$1());
        Map linkedHashMap = new LinkedHashMap();
        for (Object next22 : sortedWith) {
            DocumentType document_type = ((ChargeModel) next22).getDocument_type();
            ArrayList arrayList3 = linkedHashMap.get(document_type);
            if (arrayList3 == null) {
                arrayList3 = new ArrayList();
                linkedHashMap.put(document_type, arrayList3);
            }
            arrayList3.add(next22);
        }
        Intrinsics.checkParameterIsNotNull(linkedHashMap, "$receiver");
        Map treeMap = new TreeMap(linkedHashMap);
        arrayList = new ArrayList();
        for (Entry value : treeMap.entrySet()) {
            CollectionsKt.addAll(arrayList, (List) value.getValue());
        }
        List toMutableList = CollectionsKt.toMutableList((List) arrayList);
        ChargesAdapter chargesAdapter = this.chargesAdapter;
        if (chargesAdapter != null) {
            chargesAdapter.setCharges(toMutableList);
        }
        List arrayList4 = new ArrayList();
        i = 0;
        for (Entry entry : treeMap.entrySet()) {
            DocumentType documentType = (DocumentType) entry.getKey();
            List list2 = (List) entry.getValue();
            arrayList4.add(new Section(i, getString(documentType.getTextStringRes())));
            i += list2.size();
        }
        SectionedRecyclerViewAdapter sectionedRecyclerViewAdapter = this.sectionedRecyclerViewAdapter;
        if (sectionedRecyclerViewAdapter != null) {
            Object[] toArray = arrayList4.toArray(new Section[0]);
            if (toArray == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
            }
            sectionedRecyclerViewAdapter.setSections((Section[]) toArray);
        }
        RecyclerView recyclerView = (RecyclerView) _$_findCachedViewById(C0859R.id.recyclerView);
        Intrinsics.checkExpressionValueIsNotNull(recyclerView, "recyclerView");
        recyclerView.setAdapter(this.sectionedRecyclerViewAdapter);
        ChargesAdapter chargesAdapter2 = this.chargesAdapter;
        if (chargesAdapter2 != null) {
            chargesAdapter2.notifyDataSetChanged();
        }
        Iterable<ChargeModel> iterable = toMutableList;
        arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault$251b5948(iterable));
        for (ChargeModel chargeModel2 : iterable) {
            double doubleValue;
            Double discount_amount = chargeModel2.getDiscount_amount();
            if (discount_amount != null) {
                doubleValue = discount_amount.doubleValue();
            } else {
                Requisites requisites = chargeModel2.getRequisites();
                if (requisites != null) {
                    Double amount = requisites.getAmount();
                    if (amount != null) {
                        doubleValue = amount.doubleValue();
                    }
                }
                doubleValue = 0.0d;
            }
            arrayList2.add(Double.valueOf(doubleValue));
        }
        CollectionsKt.sumOfDouble((List) arrayList2);
        RocketApplication.Companion.getInjector().getAuthorization();
        RocketApplication.Companion.getInjector().getCurrencyManager();
        if (this.savedState != null) {
            recyclerView = (RecyclerView) _$_findCachedViewById(C0859R.id.recyclerView);
            Intrinsics.checkExpressionValueIsNotNull(recyclerView, "recyclerView");
            recyclerView.getLayoutManager().onRestoreInstanceState(this.savedState);
            this.savedState = null;
        }
    }

    private final void nothingFound() {
        FrameLayout frameLayout = (FrameLayout) _$_findCachedViewById(C0859R.id.content);
        Intrinsics.checkExpressionValueIsNotNull(frameLayout, Param.CONTENT);
        frameLayout.setVisibility(8);
        RelativeLayout relativeLayout = (RelativeLayout) _$_findCachedViewById(C0859R.id.nothingFound);
        Intrinsics.checkExpressionValueIsNotNull(relativeLayout, "nothingFound");
        relativeLayout.setVisibility(0);
        ((CunningCat) _$_findCachedViewById(C0859R.id.cunningCat)).resetAnimation();
    }

    protected final void onResume() {
        super.onResume();
        ((CunningCat) _$_findCachedViewById(C0859R.id.cunningCat)).resetAnimation();
    }

    protected final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == ChargesAdapter.Companion.getREQUEST_CODE() && i2 == -1) {
            CollectionsKt.removeAll((List) this.charges, (Function1) new ChargesListActivity$onActivityResult$1(intent != null ? (ChargeModel) intent.getParcelableExtra(ChargeInfoActivity.Companion.getKEY_CHARGE()) : 0));
            updateData();
        }
    }

    protected final void onPause() {
        unsubscribe(this.chargeFetchSubscription);
        super.onPause();
        if (((RecyclerView) _$_findCachedViewById(C0859R.id.recyclerView)) != null) {
            RecyclerView recyclerView = (RecyclerView) _$_findCachedViewById(C0859R.id.recyclerView);
            Intrinsics.checkExpressionValueIsNotNull(recyclerView, "recyclerView");
            if (recyclerView.getLayoutManager() != null) {
                recyclerView = (RecyclerView) _$_findCachedViewById(C0859R.id.recyclerView);
                Intrinsics.checkExpressionValueIsNotNull(recyclerView, "recyclerView");
                Parcelable onSaveInstanceState = recyclerView.getLayoutManager().onSaveInstanceState();
                if (onSaveInstanceState == null) {
                    throw new TypeCastException("null cannot be cast to non-null type android.support.v7.widget.LinearLayoutManager.SavedState");
                }
                this.savedState = (SavedState) onSaveInstanceState;
            }
        }
    }

    protected final void onSaveInstanceState(Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(bundle, "outState");
        super.onSaveInstanceState(bundle);
        if (((RecyclerView) _$_findCachedViewById(C0859R.id.recyclerView)) != null) {
            RecyclerView recyclerView = (RecyclerView) _$_findCachedViewById(C0859R.id.recyclerView);
            Intrinsics.checkExpressionValueIsNotNull(recyclerView, "recyclerView");
            if (recyclerView.getLayoutManager() != null) {
                String str = KEY_RECYCLER_VIEW_STATE;
                RecyclerView recyclerView2 = (RecyclerView) _$_findCachedViewById(C0859R.id.recyclerView);
                Intrinsics.checkExpressionValueIsNotNull(recyclerView2, "recyclerView");
                bundle.putParcelable(str, recyclerView2.getLayoutManager().onSaveInstanceState());
            }
        }
        bundle.putParcelableArrayList(KEY_CHARGES, this.charges);
    }
}
