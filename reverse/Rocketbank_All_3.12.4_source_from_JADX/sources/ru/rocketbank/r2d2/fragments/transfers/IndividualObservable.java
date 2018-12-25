package ru.rocketbank.r2d2.fragments.transfers;

import android.databinding.Bindable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.text.StringsKt;
import ru.rocketbank.r2d2.fragments.transfers.ToMap.DefaultImpls;
import ru.rocketbank.r2d2.utils.ViewModelObservable;
import ru.rocketbank.r2d2.utils.ViewModelObservable.DelegateObservable;
import ru.rocketbank.r2d2.utils.ViewModelObservable.ViewField;

/* compiled from: TransferBankFragment.kt */
public final class IndividualObservable extends RequisitesObservable implements ToMap {
    static final /* synthetic */ KProperty[] $$delegatedProperties = new KProperty[]{Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(IndividualObservable.class), "recipient_name", "getRecipient_name()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(IndividualObservable.class), "purpose", "getPurpose()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;")), Reflection.mutableProperty1(new MutablePropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(IndividualObservable.class), "materialAssistance", "getMaterialAssistance()Ljava/lang/Boolean;"))};
    public static final Companion Companion = new Companion();
    private final DelegateObservable materialAssistance$delegate = new DelegateObservable(56, this);
    private String materialAssistanceType;
    private final HashMap purpose$delegate = getFields();
    private final HashMap recipient_name$delegate = getFields();

    /* compiled from: TransferBankFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public final boolean checkFio(String str) {
            Intrinsics.checkParameterIsNotNull(str, "name");
            List<String> split$default = StringsKt.split$default(str, new String[]{" "}, false, 0, 6, null);
            if (split$default.size() < 3) {
                return false;
            }
            for (String length : split$default) {
                if (length.length() < 3) {
                    return false;
                }
            }
            return true;
        }
    }

    /* compiled from: TransferBankFragment.kt */
    /* renamed from: ru.rocketbank.r2d2.fragments.transfers.IndividualObservable$1 */
    static final class C17791 extends Lambda implements Function1<String, String> {
        public static final C17791 INSTANCE = new C17791();

        C17791() {
            super(1);
        }

        public final String invoke(String str) {
            return str == null ? "" : str;
        }
    }

    /* compiled from: TransferBankFragment.kt */
    /* renamed from: ru.rocketbank.r2d2.fragments.transfers.IndividualObservable$2 */
    static final class C17802 extends Lambda implements Function1<String, String> {
        public static final C17802 INSTANCE = new C17802();

        C17802() {
            super(1);
        }

        public final String invoke(String str) {
            return str == null ? "" : str;
        }
    }

    public static final boolean checkFio(String str) {
        return Companion.checkFio(str);
    }

    @Bindable
    public final Boolean getMaterialAssistance() {
        return (Boolean) this.materialAssistance$delegate.getValue(this, $$delegatedProperties[2]);
    }

    @Bindable
    public final ViewField getPurpose() {
        return (ViewField) kotlin.collections.AbstractList.Companion.getOrImplicitDefaultNullable(this.purpose$delegate, $$delegatedProperties[1].getName());
    }

    @Bindable
    public final ViewField getRecipient_name() {
        return (ViewField) kotlin.collections.AbstractList.Companion.getOrImplicitDefaultNullable(this.recipient_name$delegate, $$delegatedProperties[0].getName());
    }

    public final void setMaterialAssistance(Boolean bool) {
        this.materialAssistance$delegate.setValue(this, $$delegatedProperties[2], bool);
    }

    public IndividualObservable(String str) {
        Intrinsics.checkParameterIsNotNull(str, "materialAssist");
        ViewModelObservable.putField$default(this, "recipient_name", 70, C17791.INSTANCE, null, 8, null);
        putField("purpose", 67, C17802.INSTANCE, new Function1<String, Boolean>() {
            public final boolean invoke(String str) {
                Intrinsics.checkParameterIsNotNull(str, "it");
                return (!Intrinsics.areEqual(this.getMaterialAssistance(), Boolean.TRUE) && str.length() <= null) ? null : true;
            }
        });
        this.materialAssistanceType = str;
    }

    @Bindable
    public final String getMaterialAssistanceType() {
        return this.materialAssistanceType;
    }

    public final void setMaterialAssistanceType(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.materialAssistanceType = str;
    }

    public final Map<String, String> toMap() {
        Map<String, String> toMap = DefaultImpls.toMap(this);
        if (Intrinsics.areEqual(getMaterialAssistance(), Boolean.TRUE)) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(getPurpose().getValue());
            stringBuilder.append(" .");
            stringBuilder.append(this.materialAssistanceType);
            toMap.put("purpose", stringBuilder.toString());
        }
        return toMap;
    }
}
