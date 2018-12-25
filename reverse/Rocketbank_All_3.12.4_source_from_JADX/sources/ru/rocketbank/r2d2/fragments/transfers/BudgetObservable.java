package ru.rocketbank.r2d2.fragments.transfers;

import android.databinding.Bindable;
import android.databinding.ObservableBoolean;
import com.facebook.appevents.AppEventsConstants;
import java.util.HashMap;
import java.util.Map;
import kotlin.collections.AbstractList.Companion;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.text.StringsKt;
import ru.rocketbank.r2d2.fragments.transfers.ToMap.DefaultImpls;
import ru.rocketbank.r2d2.utils.ViewModelObservable;
import ru.rocketbank.r2d2.utils.ViewModelObservable.ViewField;

/* compiled from: TransferBankFragment.kt */
public final class BudgetObservable extends RequisitesObservable implements InnKpp, ToMap {
    static final /* synthetic */ KProperty[] $$delegatedProperties = new KProperty[]{Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(BudgetObservable.class), "inn", "getInn()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(BudgetObservable.class), "inn_from", "getInn_from()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(BudgetObservable.class), "kbk", "getKbk()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(BudgetObservable.class), "kpp", "getKpp()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(BudgetObservable.class), "from", "getFrom()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(BudgetObservable.class), "uin", "getUin()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(BudgetObservable.class), "oktmo", "getOktmo()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(BudgetObservable.class), "recipient_name", "getRecipient_name()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(BudgetObservable.class), "drawer_status", "getDrawer_status()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(BudgetObservable.class), "tax_basis", "getTax_basis()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(BudgetObservable.class), "tax_inn", "getTax_inn()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(BudgetObservable.class), "tax_period", "getTax_period()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(BudgetObservable.class), "purpose", "getPurpose()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(BudgetObservable.class), "taxUinInnControl", "getTaxUinInnControl()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;"))};
    private final HashMap drawer_status$delegate = getFields();
    private final HashMap from$delegate = getFields();
    private final HashMap inn$delegate = getFields();
    private final ObservableBoolean innNecessary = new ObservableBoolean(true);
    private final HashMap inn_from$delegate = getFields();
    private final ObservableBoolean isCustom = new ObservableBoolean();
    private final HashMap kbk$delegate = getFields();
    private final HashMap kpp$delegate = getFields();
    private final HashMap oktmo$delegate = getFields();
    private final HashMap purpose$delegate = getFields();
    private final HashMap recipient_name$delegate = getFields();
    private CodeNameOption selectedStatus;
    private CodeNameOption selectedTaxBasis;
    private final ObservableBoolean showTax = new ObservableBoolean();
    private boolean tax;
    private final HashMap taxUinInnControl$delegate = getFields();
    private final HashMap tax_basis$delegate = getFields();
    private final HashMap tax_inn$delegate = getFields();
    private final HashMap tax_period$delegate = getFields();
    private BudgetDate tax_period_date;
    private final HashMap uin$delegate = getFields();

    /* compiled from: TransferBankFragment.kt */
    /* renamed from: ru.rocketbank.r2d2.fragments.transfers.BudgetObservable$1 */
    static final class C17611 extends Lambda implements Function1<String, Boolean> {
        public static final C17611 INSTANCE = new C17611();

        C17611() {
            super(1);
        }

        public final boolean invoke(String str) {
            Intrinsics.checkParameterIsNotNull(str, "it");
            return str.length() == 10 ? true : null;
        }
    }

    /* compiled from: TransferBankFragment.kt */
    /* renamed from: ru.rocketbank.r2d2.fragments.transfers.BudgetObservable$3 */
    static final class C17633 extends Lambda implements Function1<String, Boolean> {
        public static final C17633 INSTANCE = new C17633();

        C17633() {
            super(1);
        }

        public final boolean invoke(String str) {
            Intrinsics.checkParameterIsNotNull(str, "it");
            return str.length() == 20 ? true : null;
        }
    }

    /* compiled from: TransferBankFragment.kt */
    /* renamed from: ru.rocketbank.r2d2.fragments.transfers.BudgetObservable$4 */
    static final class C17644 extends Lambda implements Function1<String, Boolean> {
        public static final C17644 INSTANCE = new C17644();

        C17644() {
            super(1);
        }

        public final boolean invoke(String str) {
            Intrinsics.checkParameterIsNotNull(str, "it");
            return str.length() == 9 ? true : null;
        }
    }

    /* compiled from: TransferBankFragment.kt */
    /* renamed from: ru.rocketbank.r2d2.fragments.transfers.BudgetObservable$5 */
    static final class C17655 extends Lambda implements Function1<String, String> {
        public static final C17655 INSTANCE = new C17655();

        C17655() {
            super(1);
        }

        public final String invoke(String str) {
            return str == null ? "" : str;
        }
    }

    /* compiled from: TransferBankFragment.kt */
    /* renamed from: ru.rocketbank.r2d2.fragments.transfers.BudgetObservable$7 */
    static final class C17677 extends Lambda implements Function1<String, Boolean> {
        public static final C17677 INSTANCE = new C17677();

        C17677() {
            super(1);
        }

        public final boolean invoke(String str) {
            Intrinsics.checkParameterIsNotNull(str, "it");
            if (str.length() != 8) {
                if (str.length() != 11) {
                    return null;
                }
            }
            return true;
        }
    }

    /* compiled from: TransferBankFragment.kt */
    /* renamed from: ru.rocketbank.r2d2.fragments.transfers.BudgetObservable$8 */
    static final class C17688 extends Lambda implements Function1<String, String> {
        public static final C17688 INSTANCE = new C17688();

        C17688() {
            super(1);
        }

        public final String invoke(String str) {
            return str == null ? "" : str;
        }
    }

    /* compiled from: TransferBankFragment.kt */
    /* renamed from: ru.rocketbank.r2d2.fragments.transfers.BudgetObservable$9 */
    static final class C17699 extends Lambda implements Function1<String, String> {
        public static final C17699 INSTANCE = new C17699();

        C17699() {
            super(1);
        }

        public final String invoke(String str) {
            return str == null ? "" : str;
        }
    }

    public final boolean checkTaxOrCustom(boolean z, boolean z2) {
        if (!z) {
            if (!z2) {
                return false;
            }
        }
        return true;
    }

    @Bindable
    public final ViewField getDrawer_status() {
        return (ViewField) Companion.getOrImplicitDefaultNullable(this.drawer_status$delegate, $$delegatedProperties[8].getName());
    }

    @Bindable
    public final ViewField getFrom() {
        return (ViewField) Companion.getOrImplicitDefaultNullable(this.from$delegate, $$delegatedProperties[4].getName());
    }

    @Bindable
    public final ViewField getInn() {
        return (ViewField) Companion.getOrImplicitDefaultNullable(this.inn$delegate, $$delegatedProperties[0].getName());
    }

    @Bindable
    public final ViewField getInn_from() {
        return (ViewField) Companion.getOrImplicitDefaultNullable(this.inn_from$delegate, $$delegatedProperties[1].getName());
    }

    @Bindable
    public final ViewField getKbk() {
        return (ViewField) Companion.getOrImplicitDefaultNullable(this.kbk$delegate, $$delegatedProperties[2].getName());
    }

    @Bindable
    public final ViewField getKpp() {
        return (ViewField) Companion.getOrImplicitDefaultNullable(this.kpp$delegate, $$delegatedProperties[3].getName());
    }

    @Bindable
    public final ViewField getOktmo() {
        return (ViewField) Companion.getOrImplicitDefaultNullable(this.oktmo$delegate, $$delegatedProperties[6].getName());
    }

    @Bindable
    public final ViewField getPurpose() {
        return (ViewField) Companion.getOrImplicitDefaultNullable(this.purpose$delegate, $$delegatedProperties[12].getName());
    }

    @Bindable
    public final ViewField getRecipient_name() {
        return (ViewField) Companion.getOrImplicitDefaultNullable(this.recipient_name$delegate, $$delegatedProperties[7].getName());
    }

    @Bindable
    public final ViewField getTaxUinInnControl() {
        return (ViewField) Companion.getOrImplicitDefaultNullable(this.taxUinInnControl$delegate, $$delegatedProperties[13].getName());
    }

    @Bindable
    public final ViewField getTax_basis() {
        return (ViewField) Companion.getOrImplicitDefaultNullable(this.tax_basis$delegate, $$delegatedProperties[9].getName());
    }

    @Bindable
    public final ViewField getTax_inn() {
        return (ViewField) Companion.getOrImplicitDefaultNullable(this.tax_inn$delegate, $$delegatedProperties[10].getName());
    }

    @Bindable
    public final ViewField getTax_period() {
        return (ViewField) Companion.getOrImplicitDefaultNullable(this.tax_period$delegate, $$delegatedProperties[11].getName());
    }

    @Bindable
    public final ViewField getUin() {
        return (ViewField) Companion.getOrImplicitDefaultNullable(this.uin$delegate, $$delegatedProperties[5].getName());
    }

    public BudgetObservable(CodeNameOption codeNameOption, CodeNameOption codeNameOption2) {
        Intrinsics.checkParameterIsNotNull(codeNameOption, "selectedTaxBasis");
        Intrinsics.checkParameterIsNotNull(codeNameOption2, "selectedStatus");
        ViewModelObservable.putField$default(this, "inn", 46, null, C17611.INSTANCE, 4, null);
        ViewModelObservable.putField$default(this, "inn_from", 47, null, new Function1<String, Boolean>() {
            public final boolean invoke(String str) {
                Intrinsics.checkParameterIsNotNull(str, "it");
                if (str.length() != 12) {
                    if (this.checkUinAndInn(this.getUin().getValue(), str) == null) {
                        return null;
                    }
                }
                return true;
            }
        }, 4, null);
        ViewModelObservable.putField$default(this, "kbk", 51, null, C17633.INSTANCE, 4, null);
        ViewModelObservable.putField$default(this, "kpp", 53, null, C17644.INSTANCE, 4, null);
        ViewModelObservable.putField$default(this, "from", 32, C17655.INSTANCE, null, 8, null);
        ViewModelObservable.putField$default(this, "uin", 87, null, new Function1<String, Boolean>() {
            public final boolean invoke(String str) {
                Intrinsics.checkParameterIsNotNull(str, "it");
                return ((((CharSequence) str).length() == 0) || Intrinsics.areEqual(str, AppEventsConstants.EVENT_PARAM_VALUE_NO) || str.length() == 20 || str.length() == 25) && this.checkUinAndInn(str, this.getInn_from().getValue()) != null;
            }
        }, 4, null);
        ViewModelObservable.putField$default(this, "oktmo", 59, null, C17677.INSTANCE, 4, null);
        ViewModelObservable.putField$default(this, "recipient_name", 70, C17688.INSTANCE, null, 8, null);
        ViewModelObservable.putField$default(this, "drawer_status", 28, C17699.INSTANCE, null, 8, null);
        putField("tax_basis", 80, AnonymousClass11.INSTANCE, new Function1<String, Boolean>() {
            public final boolean invoke(String str) {
                Intrinsics.checkParameterIsNotNull(str, "it");
                if (this.getTax()) {
                    if ((((CharSequence) str).length() > null ? 1 : null) == null) {
                        return false;
                    }
                }
                return true;
            }
        });
        ViewModelObservable.putField$default(this, "tax_inn", 81, null, new Function1<String, Boolean>() {
            public final boolean invoke(String str) {
                Intrinsics.checkParameterIsNotNull(str, "it");
                if (this.getTax()) {
                    if (str.length() != 12) {
                        return null;
                    }
                }
                return true;
            }
        }, 4, null);
        ViewModelObservable.putField$default(this, "tax_period", 82, null, new Function1<String, Boolean>() {
            public final boolean invoke(String str) {
                Intrinsics.checkParameterIsNotNull(str, "it");
                return this.checkTaxPeriod(str);
            }
        }, 4, null);
        ViewModelObservable.putField$default(this, "purpose", 67, AnonymousClass14.INSTANCE, null, 8, null);
        ViewModelObservable.putField$default(this, "taxUinInnControl", 79, null, new Function1<String, Boolean>() {
            public final boolean invoke(String str) {
                Intrinsics.checkParameterIsNotNull(str, "it");
                return this.checkUinAndInn(this.getUin().getValue(), this.getInn_from().getValue());
            }
        }, 4, null);
        this.selectedTaxBasis = codeNameOption;
        this.selectedStatus = codeNameOption2;
    }

    @Bindable
    public final boolean getTax() {
        return this.tax;
    }

    public final void setTax(boolean z) {
        this.tax = z;
        notifyPropertyChanged(77);
        notifyPropertyChanged(80);
        notifyPropertyChanged(81);
        notifyPropertyChanged(82);
        String value = getKbk().getValue();
        if (value != null && StringsKt.indexOf$default(value, "182", 0, false, 6, null) == 0 && z) {
            getTax_inn().setValue(getInn_from().getValue());
        } else {
            getTax_inn().setValue(null);
        }
    }

    public final ObservableBoolean isCustom() {
        return this.isCustom;
    }

    public final ObservableBoolean getShowTax() {
        return this.showTax;
    }

    public final ObservableBoolean getInnNecessary() {
        return this.innNecessary;
    }

    public final boolean checkTaxPeriod(String str) {
        if (this.tax) {
            CharSequence charSequence = str;
            if (charSequence != null) {
                if (charSequence.length() != null) {
                    str = null;
                    return (str == null || this.tax_period_date == null) ? false : true;
                }
            }
            str = 1;
            if (str == null) {
            }
        } else if (this.isCustom.get()) {
            return str != null && str.length() == 8;
        } else {
            return true;
        }
    }

    public final void notifyPropertyChanged(int i) {
        if (i == 47) {
            super.notifyPropertyChanged(79);
            getTax_inn().setValue(getInn_from().getValue());
            super.notifyPropertyChanged(81);
        } else if (i == 87) {
            super.notifyPropertyChanged(79);
            this.innNecessary.set(isInnNecessary(getUin().getValue()));
        }
        super.notifyPropertyChanged(i);
    }

    @Bindable
    public final CodeNameOption getSelectedTaxBasis() {
        return this.selectedTaxBasis;
    }

    public final void setSelectedTaxBasis(CodeNameOption codeNameOption) {
        Intrinsics.checkParameterIsNotNull(codeNameOption, "value");
        getTax_basis().setValue(codeNameOption.toString());
        this.selectedTaxBasis = codeNameOption;
        notifyPropertyChanged(73);
    }

    @Bindable
    public final CodeNameOption getSelectedStatus() {
        return this.selectedStatus;
    }

    public final void setSelectedStatus(CodeNameOption codeNameOption) {
        Intrinsics.checkParameterIsNotNull(codeNameOption, "value");
        getDrawer_status().setValue(codeNameOption.toString());
        this.selectedStatus = codeNameOption;
        notifyPropertyChanged(72);
    }

    public final BudgetDate getTax_period_date() {
        return this.tax_period_date;
    }

    public final void setTax_period_date(BudgetDate budgetDate) {
        this.tax_period_date = budgetDate;
        getTax_period().setValue(budgetDate != null ? budgetDate.toString() : null);
    }

    private final boolean isInnNecessary(String str) {
        String value = getKbk().getValue();
        if (value == null || StringsKt.indexOf$default(value, "182", 0, false, 6, null) != 0) {
            return true;
        }
        boolean z;
        CharSequence charSequence = str;
        if (charSequence != null) {
            if (charSequence.length() != 0) {
                z = false;
                if (!z) {
                    if (Intrinsics.areEqual(str, AppEventsConstants.EVENT_PARAM_VALUE_NO) != null) {
                        return false;
                    }
                }
                return true;
            }
        }
        z = true;
        if (z) {
            if (Intrinsics.areEqual(str, AppEventsConstants.EVENT_PARAM_VALUE_NO) != null) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean checkUinAndInn(java.lang.String r9, java.lang.String r10) {
        /*
        r8 = this;
        r0 = r8.getKbk();
        r0 = r0.getValue();
        r1 = 1;
        if (r0 == 0) goto L_0x0073;
    L_0x000b:
        r2 = r0;
        r2 = (java.lang.CharSequence) r2;
        r3 = "182";
        r4 = 0;
        r5 = 0;
        r6 = 6;
        r7 = 0;
        r0 = kotlin.text.StringsKt.indexOf$default(r2, r3, r4, r5, r6, r7);
        if (r0 != 0) goto L_0x0073;
    L_0x001a:
        r0 = r9;
        r0 = (java.lang.CharSequence) r0;
        r2 = 0;
        if (r0 == 0) goto L_0x0029;
    L_0x0020:
        r0 = r0.length();
        if (r0 != 0) goto L_0x0027;
    L_0x0026:
        goto L_0x0029;
    L_0x0027:
        r0 = r2;
        goto L_0x002a;
    L_0x0029:
        r0 = r1;
    L_0x002a:
        if (r0 != 0) goto L_0x0034;
    L_0x002c:
        r0 = "0";
        r0 = kotlin.jvm.internal.Intrinsics.areEqual(r9, r0);
        if (r0 == 0) goto L_0x003f;
    L_0x0034:
        if (r10 == 0) goto L_0x003f;
    L_0x0036:
        r0 = r10.length();
        r3 = 12;
        if (r0 != r3) goto L_0x003f;
    L_0x003e:
        return r1;
    L_0x003f:
        if (r9 == 0) goto L_0x004a;
    L_0x0041:
        r9 = r9.length();
        r9 = java.lang.Integer.valueOf(r9);
        goto L_0x004b;
    L_0x004a:
        r9 = 0;
    L_0x004b:
        if (r9 != 0) goto L_0x004e;
    L_0x004d:
        goto L_0x0056;
    L_0x004e:
        r0 = r9.intValue();
        r3 = 20;
        if (r0 == r3) goto L_0x0061;
    L_0x0056:
        if (r9 != 0) goto L_0x0059;
    L_0x0058:
        goto L_0x0072;
    L_0x0059:
        r9 = r9.intValue();
        r0 = 25;
        if (r9 != r0) goto L_0x0072;
    L_0x0061:
        r10 = (java.lang.CharSequence) r10;
        if (r10 == 0) goto L_0x006e;
    L_0x0065:
        r9 = r10.length();
        if (r9 != 0) goto L_0x006c;
    L_0x006b:
        goto L_0x006e;
    L_0x006c:
        r9 = r2;
        goto L_0x006f;
    L_0x006e:
        r9 = r1;
    L_0x006f:
        if (r9 == 0) goto L_0x0072;
    L_0x0071:
        return r1;
    L_0x0072:
        return r2;
    L_0x0073:
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.fragments.transfers.BudgetObservable.checkUinAndInn(java.lang.String, java.lang.String):boolean");
    }

    public final Map<String, String> toMap() {
        Map<String, String> toMap = DefaultImpls.toMap(this);
        toMap.put("drawer_status", this.selectedStatus.getCode());
        if (this.tax) {
            toMap.put("tax_basis", this.selectedTaxBasis.getCode());
            BudgetDate budgetDate = this.tax_period_date;
            if (budgetDate != null) {
                toMap.put("tax_period", StringsKt.replace$default(budgetDate.value(), ":", ".", false, 4, null));
                toMap.put("tax_period_kind", budgetDate.kind());
            }
        } else {
            toMap.remove("tax_inn");
            toMap.remove("tax_basis");
            String value = getKbk().getValue();
            if (value == null || StringsKt.indexOf$default(value, "153", 0, false, 6, null) != 0) {
                toMap.remove("tax_period");
            }
            toMap.put("custom_code", getTax_period().getCleanValue());
        }
        toMap.remove("taxUinInnControl");
        return toMap;
    }
}
