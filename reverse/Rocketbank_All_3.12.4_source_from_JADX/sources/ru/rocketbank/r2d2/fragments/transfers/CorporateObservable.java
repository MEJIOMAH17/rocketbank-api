package ru.rocketbank.r2d2.fragments.transfers;

import android.databinding.Bindable;
import android.databinding.Observable;
import android.databinding.Observable.OnPropertyChangedCallback;
import android.databinding.ObservableBoolean;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import kotlin.Pair;
import kotlin.collections.AbstractList.Companion;
import kotlin.collections.CollectionsKt;
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
public final class CorporateObservable extends RequisitesObservable implements InnKpp, ToMap {
    static final /* synthetic */ KProperty[] $$delegatedProperties = new KProperty[]{Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(CorporateObservable.class), "inn", "getInn()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(CorporateObservable.class), "kpp", "getKpp()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(CorporateObservable.class), "recipient_name", "getRecipient_name()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(CorporateObservable.class), "purpose", "getPurpose()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(CorporateObservable.class), "gkh_account_number", "getGkh_account_number()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(CorporateObservable.class), "gkh_period", "getGkh_period()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(CorporateObservable.class), "gkh_els", "getGkh_els()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(CorporateObservable.class), "gkh_payment_document_id", "getGkh_payment_document_id()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(CorporateObservable.class), "gkh_payment_document_number", "getGkh_payment_document_number()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(CorporateObservable.class), "gkh_mc_service_id", "getGkh_mc_service_id()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;"))};
    private final Pattern accountPattern;
    private final Pattern documentIdPattern;
    private final Pattern elsPattern;
    private final Map<String, Pattern> gkhFields;
    private BudgetDate gkhPeriod;
    private final ObservableBoolean gkhVisible = new ObservableBoolean(false);
    private final HashMap gkh_account_number$delegate;
    private final HashMap gkh_els$delegate;
    private final HashMap gkh_mc_service_id$delegate;
    private final HashMap gkh_payment_document_id$delegate;
    private final HashMap gkh_payment_document_number$delegate;
    private final HashMap gkh_period$delegate;
    private final HashMap inn$delegate;
    private final HashMap kpp$delegate;
    private final Pattern paymentDocumentNumberPattern;
    private final HashMap purpose$delegate;
    private final HashMap recipient_name$delegate;
    private final Pattern serviceIdPattern;

    /* compiled from: TransferBankFragment.kt */
    /* renamed from: ru.rocketbank.r2d2.fragments.transfers.CorporateObservable$1 */
    static final class C17701 extends Lambda implements Function1<String, Boolean> {
        public static final C17701 INSTANCE = new C17701();

        C17701() {
            super(1);
        }

        public final boolean invoke(String str) {
            Intrinsics.checkParameterIsNotNull(str, "it");
            if (str.length() != 10) {
                if (str.length() != 12) {
                    return null;
                }
            }
            return true;
        }
    }

    /* compiled from: TransferBankFragment.kt */
    /* renamed from: ru.rocketbank.r2d2.fragments.transfers.CorporateObservable$2 */
    static final class C17712 extends Lambda implements Function1<String, Boolean> {
        public static final C17712 INSTANCE = new C17712();

        C17712() {
            super(1);
        }

        public final boolean invoke(String str) {
            Intrinsics.checkParameterIsNotNull(str, "it");
            if (!(((CharSequence) str).length() == 0)) {
                if (str.length() != 9) {
                    return false;
                }
            }
            return true;
        }
    }

    /* compiled from: TransferBankFragment.kt */
    /* renamed from: ru.rocketbank.r2d2.fragments.transfers.CorporateObservable$3 */
    static final class C17723 extends Lambda implements Function1<String, String> {
        public static final C17723 INSTANCE = new C17723();

        C17723() {
            super(1);
        }

        public final String invoke(String str) {
            return str == null ? "" : str;
        }
    }

    /* compiled from: TransferBankFragment.kt */
    /* renamed from: ru.rocketbank.r2d2.fragments.transfers.CorporateObservable$4 */
    static final class C17734 extends Lambda implements Function1<String, String> {
        public static final C17734 INSTANCE = new C17734();

        C17734() {
            super(1);
        }

        public final String invoke(String str) {
            return str == null ? "" : str;
        }
    }

    /* compiled from: TransferBankFragment.kt */
    /* renamed from: ru.rocketbank.r2d2.fragments.transfers.CorporateObservable$7 */
    static final class C17767 extends Lambda implements Function1<String, String> {
        public static final C17767 INSTANCE = new C17767();

        C17767() {
            super(1);
        }

        public final String invoke(String str) {
            return str == null ? "" : str;
        }
    }

    @Bindable
    public final ViewField getGkh_account_number() {
        return (ViewField) Companion.getOrImplicitDefaultNullable(this.gkh_account_number$delegate, $$delegatedProperties[4].getName());
    }

    @Bindable
    public final ViewField getGkh_els() {
        return (ViewField) Companion.getOrImplicitDefaultNullable(this.gkh_els$delegate, $$delegatedProperties[6].getName());
    }

    @Bindable
    public final ViewField getGkh_mc_service_id() {
        return (ViewField) Companion.getOrImplicitDefaultNullable(this.gkh_mc_service_id$delegate, $$delegatedProperties[9].getName());
    }

    @Bindable
    public final ViewField getGkh_payment_document_id() {
        return (ViewField) Companion.getOrImplicitDefaultNullable(this.gkh_payment_document_id$delegate, $$delegatedProperties[7].getName());
    }

    @Bindable
    public final ViewField getGkh_payment_document_number() {
        return (ViewField) Companion.getOrImplicitDefaultNullable(this.gkh_payment_document_number$delegate, $$delegatedProperties[8].getName());
    }

    @Bindable
    public final ViewField getGkh_period() {
        return (ViewField) Companion.getOrImplicitDefaultNullable(this.gkh_period$delegate, $$delegatedProperties[5].getName());
    }

    @Bindable
    public final ViewField getInn() {
        return (ViewField) Companion.getOrImplicitDefaultNullable(this.inn$delegate, $$delegatedProperties[0].getName());
    }

    @Bindable
    public final ViewField getKpp() {
        return (ViewField) Companion.getOrImplicitDefaultNullable(this.kpp$delegate, $$delegatedProperties[1].getName());
    }

    @Bindable
    public final ViewField getPurpose() {
        return (ViewField) Companion.getOrImplicitDefaultNullable(this.purpose$delegate, $$delegatedProperties[3].getName());
    }

    @Bindable
    public final ViewField getRecipient_name() {
        return (ViewField) Companion.getOrImplicitDefaultNullable(this.recipient_name$delegate, $$delegatedProperties[2].getName());
    }

    public CorporateObservable() {
        ViewModelObservable.putField$default(this, "inn", 46, null, C17701.INSTANCE, 4, null);
        ViewModelObservable.putField$default(this, "kpp", 53, null, C17712.INSTANCE, 4, null);
        ViewModelObservable.putField$default(this, "recipient_name", 70, C17723.INSTANCE, null, 8, null);
        ViewModelObservable.putField$default(this, "purpose", 67, C17734.INSTANCE, null, 8, null);
        ViewModelObservable.putField$default(this, "gkh_account_number", 34, null, new Function1<String, Boolean>() {
            public final boolean invoke(String str) {
                Intrinsics.checkParameterIsNotNull(str, "it");
                return this.getGkhVisible().get() ? this.checkGkhField(str, "gkh_account_number") : true;
            }
        }, 4, null);
        putField("gkh_period", 39, C17767.INSTANCE, new Function1<String, Boolean>() {
            public final boolean invoke(String str) {
                Intrinsics.checkParameterIsNotNull(str, "it");
                return this.getGkhVisible().get() ? this.validatePeriod(str) : true;
            }
        });
        ViewModelObservable.putField$default(this, "gkh_payment_document_id", 37, null, new Function1<String, Boolean>() {
            public final boolean invoke(String str) {
                Intrinsics.checkParameterIsNotNull(str, "it");
                return this.getGkhVisible().get() ? this.checkGkhField(str, "gkh_payment_document_id") : true;
            }
        }, 4, null);
        ViewModelObservable.putField$default(this, "gkh_payment_document_number", 38, null, new Function1<String, Boolean>() {
            public final boolean invoke(String str) {
                Intrinsics.checkParameterIsNotNull(str, "it");
                return this.getGkhVisible().get() ? this.checkGkhField(str, "gkh_payment_document_number") : true;
            }
        }, 4, null);
        ViewModelObservable.putField$default(this, "gkh_mc_service_id", 36, null, new Function1<String, Boolean>() {
            public final boolean invoke(String str) {
                Intrinsics.checkParameterIsNotNull(str, "it");
                return this.getGkhVisible().get() ? this.checkGkhField(str, "gkh_mc_service_id") : true;
            }
        }, 4, null);
        ViewModelObservable.putField$default(this, "gkh_els", 35, null, new Function1<String, Boolean>() {
            public final boolean invoke(String str) {
                Intrinsics.checkParameterIsNotNull(str, "it");
                return this.getGkhVisible().get() ? this.checkGkhField(str, "gkh_els") : true;
            }
        }, 4, null);
        this.gkhVisible.addOnPropertyChangedCallback(new OnPropertyChangedCallback() {
            public final void onPropertyChanged(Observable observable, int i) {
                this.notifyPropertyChanged(34);
                this.notifyPropertyChanged(39);
                this.notifyPropertyChanged(37);
                this.notifyPropertyChanged(38);
                this.notifyPropertyChanged(36);
                this.notifyPropertyChanged(35);
            }
        });
        this.inn$delegate = getFields();
        this.kpp$delegate = getFields();
        this.recipient_name$delegate = getFields();
        this.purpose$delegate = getFields();
        this.gkh_account_number$delegate = getFields();
        this.gkh_period$delegate = getFields();
        this.gkh_els$delegate = getFields();
        this.gkh_payment_document_id$delegate = getFields();
        this.gkh_payment_document_number$delegate = getFields();
        this.gkh_mc_service_id$delegate = getFields();
        this.accountPattern = Pattern.compile("(.*)([0-9а-яА-Яa-zA-Z]+)(.*)");
        this.documentIdPattern = Pattern.compile("\\d{2}[а-яА-Яa-zA-Z]{2}\\d{6}-\\d{2}-\\d{4}");
        this.serviceIdPattern = Pattern.compile("\\d{2}[а-яА-Яa-zA-Z]{2}\\d{6}-\\d{2}");
        this.elsPattern = Pattern.compile("\\d{2}[а-яА-Яa-zA-Z]{2}\\d{6}");
        this.paymentDocumentNumberPattern = this.accountPattern;
        this.gkhFields = Companion.mapOf(new Pair[]{new Pair("gkh_account_number", this.accountPattern), new Pair("gkh_payment_document_id", this.documentIdPattern), new Pair("gkh_mc_service_id", this.serviceIdPattern), new Pair("gkh_els", this.elsPattern), new Pair("gkh_payment_document_number", this.paymentDocumentNumberPattern)});
    }

    public final ObservableBoolean getGkhVisible() {
        return this.gkhVisible;
    }

    public final BudgetDate getGkhPeriod() {
        return this.gkhPeriod;
    }

    public final void setGkhPeriod(BudgetDate budgetDate) {
        this.gkhPeriod = budgetDate;
    }

    private final boolean checkGkhField(String str, String str2) {
        boolean z;
        Pattern pattern;
        Collection collection;
        CharSequence value;
        int i;
        CharSequence charSequence = str;
        if (charSequence != null) {
            if (charSequence.length() != 0) {
                z = false;
                if (z) {
                    pattern = (Pattern) this.gkhFields.get(str2);
                    if (pattern != null) {
                        str = pattern.matcher(charSequence);
                        return str == null && str.matches() == 1;
                    }
                }
                collection = (Collection) new ArrayList();
                for (Object next : this.gkhFields.keySet()) {
                    Object obj;
                    obj = getFields().get((String) next);
                    if (obj == null) {
                        Intrinsics.throwNpe();
                    }
                    value = ((ViewField) obj).getValue();
                    if (value != null) {
                        if (value.length() == 0) {
                            i = 0;
                            if ((i ^ 1) == 0) {
                                collection.add(next);
                            }
                        }
                    }
                    i = 1;
                    if ((i ^ 1) == 0) {
                        collection.add(next);
                    }
                }
                return ((Collection) ((List) collection)).size() <= null;
            }
        }
        z = true;
        if (z) {
            collection = (Collection) new ArrayList();
            for (Object next2 : this.gkhFields.keySet()) {
                obj = getFields().get((String) next2);
                if (obj == null) {
                    Intrinsics.throwNpe();
                }
                value = ((ViewField) obj).getValue();
                if (value != null) {
                    if (value.length() == 0) {
                        i = 0;
                        if ((i ^ 1) == 0) {
                            collection.add(next2);
                        }
                    }
                }
                i = 1;
                if ((i ^ 1) == 0) {
                    collection.add(next2);
                }
            }
            if (((Collection) ((List) collection)).size() <= null) {
            }
        }
        pattern = (Pattern) this.gkhFields.get(str2);
        if (pattern != null) {
            str = pattern.matcher(charSequence);
            if (str == null) {
            }
        }
    }

    private final boolean validatePeriod(String str) {
        CharSequence charSequence = str;
        if (charSequence != null) {
            if (charSequence.length() != null) {
                str = null;
                return str != null;
            }
        }
        str = 1;
        if (str != null) {
        }
    }

    public final Map<String, String> toMap() {
        Map<String, String> toMap = DefaultImpls.toMap(this);
        if (this.gkhVisible.get()) {
            BudgetDate budgetDate = this.gkhPeriod;
            if (budgetDate != null) {
                List split$default = StringsKt.split$default(budgetDate.value(), new String[]{".", ":"}, false, 0, 6, null);
                toMap.put("gkh_month", CollectionsKt.first(split$default));
                toMap.put("gkh_year", split$default.get(1));
            }
        } else {
            toMap.remove("gkh_account_number");
            toMap.remove("gkh_payment_document_id");
            toMap.remove("gkh_mc_service_id");
            toMap.remove("gkh_els");
            toMap.remove("gkh_payment_document_number");
            toMap.remove("gkh_year");
            toMap.remove("gkh_month");
        }
        return toMap;
    }
}
