package ru.rocketbank.r2d2.fragments.transfers;

import android.databinding.Bindable;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v7.widget.ActivityChooserView.ActivityChooserViewAdapter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import de.greenrobot.event.EventBus;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import kotlin.Pair;
import kotlin.Triple;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptySet;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.text.StringsKt;
import ru.rocketbank.core.events.NextButtonEvent;
import ru.rocketbank.core.model.transfers.bank.RemittanceKindResponseData.Kind;
import ru.rocketbank.core.model.transfers.bank.RemittanceOutgoing;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.databinding.RemittanceCheckInfoFragmentBinding;
import ru.rocketbank.r2d2.fragments.NextButtonListener;
import ru.rocketbank.r2d2.fragments.RocketFragment;
import ru.rocketbank.r2d2.utils.ViewModelObservable;
import ru.rocketbank.r2d2.utils.ViewModelObservable.ViewField;
import rx.Observable;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Action1;

/* compiled from: RemittanceCheckInfoFragment.kt */
public final class RemittanceCheckInfoFragment extends RocketFragment implements NextButtonListener {
    public static final Companion Companion = new Companion();
    private static final String DATA_EXTRA = "data";
    private static final String KEY_EDIT_MODE = "KEY_EDIT_MODE";
    private HashMap _$_findViewCache;
    private final Map<String, String> basisMap;
    private final CheckInfoObservable checkInfoObservable = new CheckInfoObservable();
    private RemittanceOutgoing data;
    private boolean editMode;
    private final List<String> editModeIgnoreList = CollectionsKt.listOf(new String[]{"purpose", "amount", "besp"});
    private final Map<String, String> statusesMap;
    private Subscription validSubscription;

    /* compiled from: RemittanceCheckInfoFragment.kt */
    public static final class Companion {
        public final Fragment newInstance(RemittanceOutgoing remittanceOutgoing) {
            return newInstance$default(this, remittanceOutgoing, false, 2, null);
        }

        private Companion() {
        }

        public static /* bridge */ /* synthetic */ Fragment newInstance$default(Companion companion, RemittanceOutgoing remittanceOutgoing, boolean z, int i, Object obj) {
            if ((i & 2) != 0) {
                z = false;
            }
            return companion.newInstance(remittanceOutgoing, z);
        }

        public final Fragment newInstance(RemittanceOutgoing remittanceOutgoing, boolean z) {
            Intrinsics.checkParameterIsNotNull(remittanceOutgoing, "data");
            Bundle bundle = new Bundle();
            bundle.putParcelable("data", remittanceOutgoing);
            bundle.putBoolean(RemittanceCheckInfoFragment.KEY_EDIT_MODE, z);
            remittanceOutgoing = new RemittanceCheckInfoFragment();
            remittanceOutgoing.setArguments(bundle);
            return (Fragment) remittanceOutgoing;
        }
    }

    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Kind.values().length];
            $EnumSwitchMapping$0 = iArr;
            iArr[Kind.corporate.ordinal()] = 1;
            $EnumSwitchMapping$0[Kind.not_resident_corporate.ordinal()] = 2;
            $EnumSwitchMapping$0[Kind.budget.ordinal()] = 3;
        }
    }

    /* compiled from: RemittanceCheckInfoFragment.kt */
    public static final class CheckInfoObservable extends ViewModelObservable {
        static final /* synthetic */ KProperty[] $$delegatedProperties = new KProperty[]{Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(CheckInfoObservable.class), "purpose", "getPurpose()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;"))};
        private final HashMap purpose$delegate = getFields();

        /* compiled from: RemittanceCheckInfoFragment.kt */
        /* renamed from: ru.rocketbank.r2d2.fragments.transfers.RemittanceCheckInfoFragment$CheckInfoObservable$1 */
        static final class C17831 extends Lambda implements Function1<String, String> {
            public static final C17831 INSTANCE = new C17831();

            C17831() {
                super(1);
            }

            public final String invoke(String str) {
                return str == null ? "" : str;
            }
        }

        @Bindable
        public final ViewField getPurpose() {
            return (ViewField) kotlin.collections.AbstractList.Companion.getOrImplicitDefaultNullable(this.purpose$delegate, $$delegatedProperties[0].getName());
        }

        public CheckInfoObservable() {
            ViewModelObservable.putField$default(this, "purpose", 67, C17831.INSTANCE, null, 8, null);
        }
    }

    public static final Fragment newInstance(RemittanceOutgoing remittanceOutgoing) {
        return Companion.newInstance$default(Companion, remittanceOutgoing, false, 2, null);
    }

    public static final Fragment newInstance(RemittanceOutgoing remittanceOutgoing, boolean z) {
        return Companion.newInstance(remittanceOutgoing, z);
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
        if (view == null) {
            view = getView();
            if (view == null) {
                return null;
            }
            view = view.findViewById(i);
            this._$_findViewCache.put(Integer.valueOf(i), view);
        }
        return view;
    }

    public final /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public RemittanceCheckInfoFragment() {
        Object stringArray = RocketApplication.Companion.getContext().getResources().getStringArray(C0859R.array.tax_basis);
        Intrinsics.checkExpressionValueIsNotNull(stringArray, "RocketApplication.getCon…gArray(R.array.tax_basis)");
        Collection arrayList = new ArrayList(stringArray.length);
        for (Object obj : stringArray) {
            Intrinsics.checkExpressionValueIsNotNull(obj, "it");
            arrayList.add(StringsKt.split$default((CharSequence) obj, new String[]{" | "}, false, 0, 6, null));
        }
        Iterable<List> iterable = (List) arrayList;
        Collection arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault$251b5948(iterable));
        for (List list : iterable) {
            arrayList2.add(new Pair(list.get(0), list.get(1)));
        }
        this.basisMap = kotlin.collections.AbstractList.Companion.toMap((List) arrayList2);
        stringArray = RocketApplication.Companion.getContext().getResources().getStringArray(C0859R.array.budget_status);
        Intrinsics.checkExpressionValueIsNotNull(stringArray, "RocketApplication.getCon…ay(R.array.budget_status)");
        arrayList = new ArrayList(stringArray.length);
        for (Object obj2 : stringArray) {
            Intrinsics.checkExpressionValueIsNotNull(obj2, "it");
            arrayList.add(StringsKt.split$default((CharSequence) obj2, new String[]{" | "}, false, 0, 6, null));
        }
        iterable = (List) arrayList;
        arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault$251b5948(iterable));
        for (List list2 : iterable) {
            arrayList2.add(new Pair(list2.get(0), list2.get(1)));
        }
        this.statusesMap = kotlin.collections.AbstractList.Companion.toMap((List) arrayList2);
    }

    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Map map;
        Object obj;
        Collection collection;
        Iterable<TransferField> iterable;
        Collection arrayList;
        String str;
        Intrinsics.checkParameterIsNotNull(layoutInflater, "inflater");
        viewGroup = RemittanceCheckInfoFragmentBinding.inflate(layoutInflater, viewGroup, false);
        Bundle arguments = getArguments();
        if (arguments == null) {
            Intrinsics.throwNpe();
        }
        this.data = (RemittanceOutgoing) arguments.getParcelable("data");
        Intrinsics.checkExpressionValueIsNotNull(viewGroup, "rootView");
        viewGroup.setData(this.checkInfoObservable);
        arguments = getArguments();
        if (arguments == null) {
            Intrinsics.throwNpe();
        }
        this.editMode = arguments.getBoolean(KEY_EDIT_MODE, false);
        viewGroup.setEditMode(Boolean.valueOf(this.editMode));
        if (this.editMode) {
            String str2;
            ViewField purpose = this.checkInfoObservable.getPurpose();
            RemittanceOutgoing remittanceOutgoing = this.data;
            if (remittanceOutgoing != null) {
                Map map2 = remittanceOutgoing.getMap();
                if (map2 != null) {
                    str2 = (String) map2.get("purpose");
                    purpose.setValue(str2);
                }
            }
            str2 = null;
            purpose.setValue(str2);
        }
        LinkedHashSet linkedSetOf = kotlin.collections.AbstractList.Companion.linkedSetOf(new TransferField[]{TransferField.bik, TransferField.bank_name, TransferField.corr_bank, TransferField.corr_number});
        RemittanceOutgoing remittanceOutgoing2 = this.data;
        if (remittanceOutgoing2 != null) {
            String remittance_kind = remittanceOutgoing2.getRemittance_kind();
            if (remittance_kind != null) {
                Set set;
                switch (WhenMappings.$EnumSwitchMapping$0[Kind.valueOf(remittance_kind).ordinal()]) {
                    case 1:
                        LinkedHashSet linkedSetOf2;
                        remittanceOutgoing2 = this.data;
                        if (remittanceOutgoing2 == null || !remittanceOutgoing2.isGkh()) {
                            linkedSetOf2 = kotlin.collections.AbstractList.Companion.linkedSetOf(new TransferField[]{TransferField.inn, TransferField.kpp});
                        } else {
                            linkedSetOf2 = kotlin.collections.AbstractList.Companion.linkedSetOf(new TransferField[]{TransferField.inn, TransferField.kpp, TransferField.gkh_period, TransferField.gkh_account_number, TransferField.gkh_payment_document_id, TransferField.gkh_payment_document_number, TransferField.gkh_mc_service_id, TransferField.gkh_els});
                        }
                        set = linkedSetOf2;
                        break;
                    case 2:
                        set = kotlin.collections.AbstractList.Companion.linkedSetOf(new TransferField[]{TransferField.inn, TransferField.kpp});
                        break;
                    case 3:
                        set = kotlin.collections.AbstractList.Companion.linkedSetOf(new TransferField[]{TransferField.inn, TransferField.kpp, TransferField.kbk, TransferField.oktmo, TransferField.uin, TransferField.from, TransferField.inn_from, TransferField.drawer_status, TransferField.tax, TransferField.tax_basis, TransferField.tax_inn, TransferField.tax_period, TransferField.custom_code});
                        break;
                    default:
                        set = EmptySet.INSTANCE;
                        break;
                }
                linkedSetOf.addAll(set);
            }
        }
        linkedSetOf.addAll(kotlin.collections.AbstractList.Companion.linkedSetOf(new TransferField[]{TransferField.recipient_name, TransferField.purpose, TransferField.besp, TransferField.amount}));
        RemittanceOutgoing remittanceOutgoing3 = this.data;
        if (remittanceOutgoing3 != null) {
            map = remittanceOutgoing3.getMap();
            if (map != null) {
                Map linkedHashMap = new LinkedHashMap();
                for (Entry entry : map.entrySet()) {
                    Bundle bundle2;
                    if (this.editMode) {
                        if (this.editModeIgnoreList.contains(entry.getKey())) {
                            bundle2 = null;
                            if (bundle2 != null) {
                                linkedHashMap.put(entry.getKey(), entry.getValue());
                            }
                        }
                    }
                    bundle2 = 1;
                    if (bundle2 != null) {
                        linkedHashMap.put(entry.getKey(), entry.getValue());
                    }
                }
                int size = linkedHashMap.size();
                size = size < 3 ? size + 1 : size < 1073741824 ? size + (size / 3) : ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
                Map map3 = (Map) new LinkedHashMap(size);
                for (Entry entry2 : linkedHashMap.entrySet()) {
                    Object key = entry2.getKey();
                    obj = (String) entry2.getValue();
                    if (obj == null) {
                        obj = "";
                    }
                    map3.put(key, obj);
                }
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                for (Entry entry22 : map3.entrySet()) {
                    if ((StringsKt.isBlank((String) entry22.getValue()) ^ 1) != 0) {
                        linkedHashMap2.put(entry22.getKey(), entry22.getValue());
                    }
                }
                map = linkedHashMap2;
                if (linkedSetOf.contains(TransferField.custom_code) != null) {
                    linkedSetOf.remove(TransferField.tax_period);
                }
                collection = (Collection) new ArrayList();
                for (Object obj2 : linkedSetOf) {
                    if (map.containsKey(((TransferField) obj2).name())) {
                        collection.add(obj2);
                    }
                }
                iterable = (List) collection;
                arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault$251b5948(iterable));
                for (TransferField transferField : iterable) {
                    Integer valueOf = Integer.valueOf(transferField.getTitle());
                    str = (String) map.get(transferField.name());
                    if (str == null) {
                        str = "";
                    }
                    arrayList.add(new Triple(valueOf, format(transferField, str, map), transferField));
                }
                for (Triple triple : (List) arrayList) {
                    int intValue = ((Number) triple.component1()).intValue();
                    String str3 = (String) triple.component2();
                    TransferField transferField2 = (TransferField) triple.component3();
                    LinearLayout linearLayout = viewGroup.fields;
                    Intrinsics.checkExpressionValueIsNotNull(linearLayout, "rootView.fields");
                    createField(intValue, str3, layoutInflater, linearLayout, transferField2);
                }
                return viewGroup.getRoot();
            }
        }
        map = kotlin.collections.AbstractList.Companion.emptyMap();
        if (linkedSetOf.contains(TransferField.custom_code) != null) {
            linkedSetOf.remove(TransferField.tax_period);
        }
        collection = (Collection) new ArrayList();
        for (Object obj22 : linkedSetOf) {
            if (map.containsKey(((TransferField) obj22).name())) {
                collection.add(obj22);
            }
        }
        iterable = (List) collection;
        arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault$251b5948(iterable));
        for (TransferField transferField3 : iterable) {
            Integer valueOf2 = Integer.valueOf(transferField3.getTitle());
            str = (String) map.get(transferField3.name());
            if (str == null) {
                str = "";
            }
            arrayList.add(new Triple(valueOf2, format(transferField3, str, map), transferField3));
        }
        for (Triple triple2 : (List) arrayList) {
            int intValue2 = ((Number) triple2.component1()).intValue();
            String str32 = (String) triple2.component2();
            TransferField transferField22 = (TransferField) triple2.component3();
            LinearLayout linearLayout2 = viewGroup.fields;
            Intrinsics.checkExpressionValueIsNotNull(linearLayout2, "rootView.fields");
            createField(intValue2, str32, layoutInflater, linearLayout2, transferField22);
        }
        return viewGroup.getRoot();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.String format(ru.rocketbank.r2d2.fragments.transfers.TransferField r2, java.lang.String r3, java.util.Map<java.lang.String, java.lang.String> r4) {
        /*
        r1 = this;
        r0 = "field";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r2, r0);
        r0 = "value";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r3, r0);
        r0 = "values";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r4, r0);
        r0 = ru.rocketbank.r2d2.fragments.transfers.TransferField.amount;
        if (r2 != r0) goto L_0x0025;
    L_0x0013:
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r2.append(r3);
        r3 = " ₽";
        r2.append(r3);
        r2 = r2.toString();
        return r2;
    L_0x0025:
        r0 = "true";
        r0 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r0);
        if (r0 == 0) goto L_0x0030;
    L_0x002d:
        r2 = "Да";
        return r2;
    L_0x0030:
        r0 = "false";
        r0 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r0);
        if (r0 == 0) goto L_0x003b;
    L_0x0038:
        r2 = "Нет";
        return r2;
    L_0x003b:
        r0 = ru.rocketbank.r2d2.fragments.transfers.TransferField.tax_period;
        if (r2 != r0) goto L_0x0062;
    L_0x003f:
        r2 = ru.rocketbank.r2d2.fragments.transfers.BudgetDate.Companion;
        r3 = "tax_period";
        r3 = r4.get(r3);
        r3 = (java.lang.String) r3;
        if (r3 != 0) goto L_0x004d;
    L_0x004b:
        r3 = "";
    L_0x004d:
        r0 = "tax_period_kind";
        r4 = r4.get(r0);
        r4 = (java.lang.String) r4;
        if (r4 != 0) goto L_0x0059;
    L_0x0057:
        r4 = "";
    L_0x0059:
        r2 = r2.create(r3, r4);
        r2 = r2.toString();
        return r2;
    L_0x0062:
        r4 = ru.rocketbank.r2d2.fragments.transfers.TransferField.drawer_status;
        if (r2 != r4) goto L_0x0085;
    L_0x0066:
        r2 = new java.lang.StringBuilder;
        r4 = "\"";
        r2.<init>(r4);
        r2.append(r3);
        r4 = "\" — ";
        r2.append(r4);
        r4 = r1.statusesMap;
        r3 = r4.get(r3);
        r3 = (java.lang.String) r3;
        r2.append(r3);
        r2 = r2.toString();
        return r2;
    L_0x0085:
        r4 = ru.rocketbank.r2d2.fragments.transfers.TransferField.tax_basis;
        if (r2 != r4) goto L_0x00a8;
    L_0x0089:
        r2 = new java.lang.StringBuilder;
        r4 = "\"";
        r2.<init>(r4);
        r2.append(r3);
        r4 = "\" — ";
        r2.append(r4);
        r4 = r1.basisMap;
        r3 = r4.get(r3);
        r3 = (java.lang.String) r3;
        r2.append(r3);
        r2 = r2.toString();
        return r2;
    L_0x00a8:
        r2 = r2.getPattern();
        if (r2 == 0) goto L_0x00bd;
    L_0x00ae:
        r2 = ru.rocketbank.r2d2.utils.PatternFormatter.format(r3, r2);
        r4 = "PatternFormatter.format(value, it)";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r2, r4);
        r2 = r2.getFormatted();
        if (r2 != 0) goto L_0x00be;
    L_0x00bd:
        r2 = r3;
    L_0x00be:
        return r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.fragments.transfers.RemittanceCheckInfoFragment.format(ru.rocketbank.r2d2.fragments.transfers.TransferField, java.lang.String, java.util.Map):java.lang.String");
    }

    static /* bridge */ /* synthetic */ void createField$default(RemittanceCheckInfoFragment remittanceCheckInfoFragment, int i, String str, LayoutInflater layoutInflater, ViewGroup viewGroup, TransferField transferField, int i2, Object obj) {
        if ((i2 & 16) != 0) {
            transferField = null;
        }
        remittanceCheckInfoFragment.createField(i, str, layoutInflater, viewGroup, transferField);
    }

    private final void createField(int i, String str, LayoutInflater layoutInflater, ViewGroup viewGroup, TransferField transferField) {
        layoutInflater = layoutInflater.inflate(C0859R.layout.check_info_item, viewGroup, false);
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "checkInfoItem");
        ((RocketTextView) layoutInflater.findViewById(C0859R.id.title)).setText(i);
        RocketTextView rocketTextView = (RocketTextView) layoutInflater.findViewById(C0859R.id.value);
        Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "checkInfoItem.value");
        rocketTextView.setText(str);
        if (transferField == TransferField.bank_name) {
            rocketTextView = (RocketTextView) layoutInflater.findViewById(C0859R.id.value);
            Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "checkInfoItem.value");
            rocketTextView.setEnabled(false);
            rocketTextView = (RocketTextView) layoutInflater.findViewById(C0859R.id.value);
            Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "checkInfoItem.value");
            rocketTextView.setCursorVisible(false);
            rocketTextView = (RocketTextView) layoutInflater.findViewById(C0859R.id.value);
            Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "checkInfoItem.value");
            rocketTextView.setFocusable(false);
            rocketTextView = (RocketTextView) layoutInflater.findViewById(C0859R.id.value);
            Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "checkInfoItem.value");
            rocketTextView.setKeyListener(null);
        }
        viewGroup.addView(layoutInflater);
    }

    public final void onResume() {
        super.onResume();
        updateNextButton(this);
        Observable observeOn = this.checkInfoObservable.getValidObservable().observeOn(AndroidSchedulers.mainThread());
        Action1 remittanceCheckInfoFragment$onResume$1 = new RemittanceCheckInfoFragment$onResume$1(this);
        Function1 function1 = RemittanceCheckInfoFragment$onResume$2.INSTANCE;
        if (function1 != null) {
            function1 = new RemittanceCheckInfoFragment$sam$rx_functions_Action1$0(function1);
        }
        this.validSubscription = observeOn.subscribe(remittanceCheckInfoFragment$onResume$1, (Action1) function1);
    }

    public final void onPause() {
        unsubscribe(this.validSubscription);
        super.onPause();
    }

    public final void updateNextButton(Fragment fragment) {
        boolean z;
        Intrinsics.checkParameterIsNotNull(fragment, "fragment");
        String string = getResources().getString(this.editMode ? C0859R.string.done : C0859R.string.send_cap);
        EventBus eventBus = EventBus.getDefault();
        if (this.editMode) {
            if (!this.checkInfoObservable.isValid()) {
                z = false;
                eventBus.post(new NextButtonEvent(fragment, z, Integer.valueOf(0), string));
            }
        }
        z = true;
        eventBus.post(new NextButtonEvent(fragment, z, Integer.valueOf(0), string));
    }

    public final void onNextButtonClick() {
        RemittanceOutgoing remittanceOutgoing = this.data;
        if (remittanceOutgoing == null) {
            return;
        }
        if (this.editMode) {
            remittanceOutgoing.getMap().put("purpose", this.checkInfoObservable.getPurpose().getCleanValue());
            BankAmountActivity.startActivity(remittanceOutgoing, getContext());
            return;
        }
        remittanceOutgoing.getMap().remove("custom_code");
        remittanceOutgoing.getMap().remove("gkh_period");
        FragmentActivity activity = getActivity();
        if (activity == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.fragments.transfers.BankAmountActivity");
        }
        ((BankAmountActivity) activity).callRemittanceTransferLoader(remittanceOutgoing);
    }
}
