package ru.rocketbank.r2d2.fragments.transfers;

import android.databinding.Bindable;
import java.util.HashMap;
import java.util.Map;
import kotlin.collections.AbstractList.Companion;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import ru.rocketbank.core.model.transfers.bank.RemittanceKindResponseData.Kind;
import ru.rocketbank.core.model.transfers.bank.RemittanceOutgoing;
import ru.rocketbank.r2d2.fragments.transfers.ToMap.DefaultImpls;
import ru.rocketbank.r2d2.utils.ViewModelObservable;
import ru.rocketbank.r2d2.utils.ViewModelObservable.ViewField;
import rx.Subscription;
import rx.subjects.PublishSubject;

/* compiled from: TransferBankFragment.kt */
public final class TransferObservable extends ViewModelObservable implements ToMap {
    static final /* synthetic */ KProperty[] $$delegatedProperties = new KProperty[]{Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(TransferObservable.class), "bik", "getBik()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(TransferObservable.class), "corr_bank", "getCorr_bank()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(TransferObservable.class), "bank_name", "getBank_name()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(TransferObservable.class), "corr_number", "getCorr_number()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(TransferObservable.class), "card_number", "getCard_number()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;")), Reflection.mutableProperty1(new MutablePropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(TransferObservable.class), "logo", "getLogo()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;"))};
    private ViewModelObservable additionalViewModel;
    private final HashMap bank_name$delegate = getFields();
    private final HashMap bik$delegate = getFields();
    private final HashMap card_number$delegate = getFields();
    private boolean card_number_visible;
    private final PublishSubject<String> corrNumberChange;
    private final HashMap corr_bank$delegate = getFields();
    private final HashMap corr_number$delegate = getFields();
    private final PublishSubject<Boolean> fullValidSubject;
    private Subscription fullValidSubscription;
    private final HashMap logo$delegate = getFields();

    /* compiled from: TransferBankFragment.kt */
    /* renamed from: ru.rocketbank.r2d2.fragments.transfers.TransferObservable$1 */
    static final class C17901 extends Lambda implements Function1<String, Boolean> {
        public static final C17901 INSTANCE = new C17901();

        C17901() {
            super(1);
        }

        public final boolean invoke(String str) {
            Intrinsics.checkParameterIsNotNull(str, "it");
            return str.length() == 9 ? true : null;
        }
    }

    /* compiled from: TransferBankFragment.kt */
    /* renamed from: ru.rocketbank.r2d2.fragments.transfers.TransferObservable$2 */
    static final class C17912 extends Lambda implements Function1<String, Boolean> {
        public static final C17912 INSTANCE = new C17912();

        C17912() {
            super(1);
        }

        public final boolean invoke(String str) {
            Intrinsics.checkParameterIsNotNull(str, "it");
            return true;
        }
    }

    /* compiled from: TransferBankFragment.kt */
    /* renamed from: ru.rocketbank.r2d2.fragments.transfers.TransferObservable$3 */
    static final class C17923 extends Lambda implements Function1<String, String> {
        public static final C17923 INSTANCE = new C17923();

        C17923() {
            super(1);
        }

        public final String invoke(String str) {
            return str == null ? "" : str;
        }
    }

    /* compiled from: TransferBankFragment.kt */
    /* renamed from: ru.rocketbank.r2d2.fragments.transfers.TransferObservable$4 */
    static final class C17934 extends Lambda implements Function1<String, Boolean> {
        public static final C17934 INSTANCE = new C17934();

        C17934() {
            super(1);
        }

        public final boolean invoke(String str) {
            Intrinsics.checkParameterIsNotNull(str, "it");
            return str.length() == 20 ? true : null;
        }
    }

    /* compiled from: TransferBankFragment.kt */
    /* renamed from: ru.rocketbank.r2d2.fragments.transfers.TransferObservable$6 */
    static final class C17956 extends Lambda implements Function1<String, Boolean> {
        public static final C17956 INSTANCE = new C17956();

        C17956() {
            super(1);
        }

        public final boolean invoke(String str) {
            Intrinsics.checkParameterIsNotNull(str, "it");
            return true;
        }
    }

    /* compiled from: TransferBankFragment.kt */
    /* renamed from: ru.rocketbank.r2d2.fragments.transfers.TransferObservable$7 */
    static final class C17967 extends Lambda implements Function1<String, String> {
        public static final C17967 INSTANCE = new C17967();

        C17967() {
            super(1);
        }

        public final String invoke(String str) {
            return str == null ? "" : str;
        }
    }

    @Bindable
    public final ViewField getBank_name() {
        return (ViewField) Companion.getOrImplicitDefaultNullable(this.bank_name$delegate, $$delegatedProperties[2].getName());
    }

    @Bindable
    public final ViewField getBik() {
        return (ViewField) Companion.getOrImplicitDefaultNullable(this.bik$delegate, $$delegatedProperties[0].getName());
    }

    @Bindable
    public final ViewField getCard_number() {
        return (ViewField) Companion.getOrImplicitDefaultNullable(this.card_number$delegate, $$delegatedProperties[4].getName());
    }

    @Bindable
    public final ViewField getCorr_bank() {
        return (ViewField) Companion.getOrImplicitDefaultNullable(this.corr_bank$delegate, $$delegatedProperties[1].getName());
    }

    @Bindable
    public final ViewField getCorr_number() {
        return (ViewField) Companion.getOrImplicitDefaultNullable(this.corr_number$delegate, $$delegatedProperties[3].getName());
    }

    public final ViewField getLogo() {
        return (ViewField) Companion.getOrImplicitDefaultNullable(this.logo$delegate, $$delegatedProperties[5].getName());
    }

    public final void setLogo(ViewField viewField) {
        Intrinsics.checkParameterIsNotNull(viewField, "<set-?>");
        this.logo$delegate.put($$delegatedProperties[5].getName(), viewField);
    }

    public TransferObservable() {
        PublishSubject create = PublishSubject.create();
        Intrinsics.checkExpressionValueIsNotNull(create, "PublishSubject.create<Boolean>()");
        this.fullValidSubject = create;
        create = PublishSubject.create();
        Intrinsics.checkExpressionValueIsNotNull(create, "PublishSubject.create()");
        this.corrNumberChange = create;
        ViewModelObservable.putField$default(this, "bik", 9, null, C17901.INSTANCE, 4, null);
        ViewModelObservable.putField$default(this, "corr_bank", 21, null, C17912.INSTANCE, 4, null);
        ViewModelObservable.putField$default(this, "bank_name", 8, C17923.INSTANCE, null, 8, null);
        ViewModelObservable.putField$default(this, "corr_number", 22, null, C17934.INSTANCE, 4, null);
        ViewModelObservable.putField$default(this, "card_number", 12, null, new Function1<String, Boolean>() {
            public final boolean invoke(String str) {
                Intrinsics.checkParameterIsNotNull(str, "it");
                if (this.getCard_number_visible() && str.length() != 16) {
                    if (str.length() != 19) {
                        return null;
                    }
                }
                return true;
            }
        }, 4, null);
        putField("logo", 8, C17967.INSTANCE, C17956.INSTANCE);
    }

    public final Map<String, String> toMap() {
        return DefaultImpls.toMap(this);
    }

    public final PublishSubject<Boolean> getFullValidSubject() {
        return this.fullValidSubject;
    }

    public final ViewModelObservable getAdditionalViewModel() {
        return this.additionalViewModel;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void setAdditionalViewModel(ru.rocketbank.r2d2.utils.ViewModelObservable r3) {
        /*
        r2 = this;
        r2.additionalViewModel = r3;
        r0 = r2.fullValidSubscription;
        if (r0 == 0) goto L_0x0015;
    L_0x0006:
        r1 = r0.isUnsubscribed();
        r1 = r1 ^ 1;
        if (r1 == 0) goto L_0x000f;
    L_0x000e:
        goto L_0x0010;
    L_0x000f:
        r0 = 0;
    L_0x0010:
        if (r0 == 0) goto L_0x0015;
    L_0x0012:
        r0.unsubscribe();
    L_0x0015:
        if (r3 == 0) goto L_0x001d;
    L_0x0017:
        r3 = r3.getValidObservable();
        if (r3 != 0) goto L_0x0023;
    L_0x001d:
        r3 = java.lang.Boolean.FALSE;
        r3 = rx.Observable.just(r3);
    L_0x0023:
        r0 = r2.getValidObservable();
        r1 = ru.rocketbank.r2d2.fragments.transfers.TransferObservable$additionalViewModel$2.INSTANCE;
        r1 = (rx.functions.Func2) r1;
        r3 = rx.Observable.combineLatest(r0, r3, r1);
        r0 = r2.fullValidSubject;
        r0 = (rx.Observer) r0;
        r3 = r3.subscribe(r0);
        r2.fullValidSubscription = r3;
        r2.check();
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.fragments.transfers.TransferObservable.setAdditionalViewModel(ru.rocketbank.r2d2.utils.ViewModelObservable):void");
    }

    public final boolean isFullValid() {
        if (isValid()) {
            ViewModelObservable viewModelObservable = this.additionalViewModel;
            if (viewModelObservable != null && viewModelObservable.isValid()) {
                return true;
            }
        }
        return false;
    }

    public final PublishSubject<String> getCorrNumberChange() {
        return this.corrNumberChange;
    }

    public final RemittanceOutgoing toRemittanceOutgoing(Kind kind, boolean z) {
        Intrinsics.checkParameterIsNotNull(kind, "remittanceKind");
        RemittanceOutgoing remittanceOutgoing = new RemittanceOutgoing(null, 1, null);
        remittanceOutgoing.setRemittance_kind(kind.name());
        remittanceOutgoing.setGkh(z);
        remittanceOutgoing.getMap().putAll(toMap());
        remittanceOutgoing.getMap().remove("logo");
        remittanceOutgoing.getMap().remove("card_number");
        if (!(this.card_number_visible == null || remittanceOutgoing.getMap().containsKey("purpose") == null)) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append((String) remittanceOutgoing.getMap().get("purpose"));
            stringBuilder.append(" номер карты получателя: ");
            stringBuilder.append(getCard_number().getCleanValue());
            remittanceOutgoing.getMap().put("purpose", stringBuilder.toString());
        }
        kind = this.additionalViewModel;
        if (!(kind instanceof ToMap)) {
            kind = null;
        }
        ToMap toMap = (ToMap) kind;
        if (toMap != null) {
            remittanceOutgoing.getMap().putAll(toMap.toMap());
        }
        return remittanceOutgoing;
    }

    @Bindable
    public final boolean getCard_number_visible() {
        return this.card_number_visible;
    }

    public final void setCard_number_visible(boolean z) {
        this.card_number_visible = z;
        notifyPropertyChanged(true);
    }

    public final void check() {
        super.check();
        ViewModelObservable viewModelObservable = this.additionalViewModel;
        if (viewModelObservable != null) {
            viewModelObservable.check();
        }
    }

    public final void notifyPropertyChanged(int i) {
        super.notifyPropertyChanged(i);
        if (i == 13) {
            super.notifyPropertyChanged(12);
        } else if (i == 22) {
            this.corrNumberChange.onNext(getCorr_number().getValue());
        }
    }
}
