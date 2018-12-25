package ru.rocketbank.core.model.transfers.bank;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.facebook.internal.ServerProtocol;
import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import ru.rocketbank.core.model.transfers.Template.ProviderPayment.FieldPayment;
import ru.rocketbank.core.network.model.TransfersModelUrFiz.Remittance;
import ru.rocketbank.core.utils.CollectionUtilsKt;

/* compiled from: RemittanceOutgoing.kt */
public class RemittanceOutgoing implements Parcelable {
    static final /* synthetic */ KProperty[] $$delegatedProperties = new KProperty[]{Reflection.mutableProperty1(new MutablePropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(RemittanceOutgoing.class), "logo", "getLogo()Ljava/lang/String;")), Reflection.mutableProperty1(new MutablePropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(RemittanceOutgoing.class), "bik", "getBik()Ljava/lang/String;")), Reflection.mutableProperty1(new MutablePropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(RemittanceOutgoing.class), "amount", "getAmount()Ljava/lang/String;")), Reflection.mutableProperty1(new MutablePropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(RemittanceOutgoing.class), "corr_number", "getCorr_number()Ljava/lang/String;")), Reflection.mutableProperty1(new MutablePropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(RemittanceOutgoing.class), "corr_bank", "getCorr_bank()Ljava/lang/String;")), Reflection.mutableProperty1(new MutablePropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(RemittanceOutgoing.class), "purpose", "getPurpose()Ljava/lang/String;")), Reflection.mutableProperty1(new MutablePropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(RemittanceOutgoing.class), "recipient_name", "getRecipient_name()Ljava/lang/String;")), Reflection.mutableProperty1(new MutablePropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(RemittanceOutgoing.class), "bank_name", "getBank_name()Ljava/lang/String;")), Reflection.mutableProperty1(new MutablePropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(RemittanceOutgoing.class), "kpp", "getKpp()Ljava/lang/String;")), Reflection.mutableProperty1(new MutablePropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(RemittanceOutgoing.class), "inn", "getInn()Ljava/lang/String;"))};
    public static final Creator<RemittanceOutgoing> CREATOR = new RemittanceOutgoing$Companion$CREATOR$1();
    public static final Companion Companion = new Companion();
    private final Map amount$delegate;
    private final Map bank_name$delegate;
    private transient Boolean besp;
    private final Map bik$delegate;
    private transient String cardAccount;
    private final Map corr_bank$delegate;
    private final Map corr_number$delegate;
    private final Map inn$delegate;
    private boolean isGkh;
    private transient Boolean isVat;
    private final Map kpp$delegate;
    private final Map logo$delegate;
    private final Map<String, String> map;
    private final Map purpose$delegate;
    private final Map recipient_name$delegate;
    private transient String remittance_kind;

    /* compiled from: RemittanceOutgoing.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    /* compiled from: RemittanceOutgoing.kt */
    /* renamed from: ru.rocketbank.core.model.transfers.bank.RemittanceOutgoing$1 */
    static final class C14281 extends Lambda implements Function1 {
        public static final C14281 INSTANCE = new C14281();

        C14281() {
            super(1);
        }

        public final Void invoke(String str) {
            Intrinsics.checkParameterIsNotNull(str, "it");
            return null;
        }
    }

    public RemittanceOutgoing() {
        this(null, 1, null);
    }

    public int describeContents() {
        return 0;
    }

    public final String getAmount() {
        return (String) kotlin.collections.AbstractList.Companion.getOrImplicitDefaultNullable(this.amount$delegate, $$delegatedProperties[2].getName());
    }

    public final String getBank_name() {
        return (String) kotlin.collections.AbstractList.Companion.getOrImplicitDefaultNullable(this.bank_name$delegate, $$delegatedProperties[7].getName());
    }

    public final String getBik() {
        return (String) kotlin.collections.AbstractList.Companion.getOrImplicitDefaultNullable(this.bik$delegate, $$delegatedProperties[1].getName());
    }

    public final String getCorr_bank() {
        return (String) kotlin.collections.AbstractList.Companion.getOrImplicitDefaultNullable(this.corr_bank$delegate, $$delegatedProperties[4].getName());
    }

    public final String getCorr_number() {
        return (String) kotlin.collections.AbstractList.Companion.getOrImplicitDefaultNullable(this.corr_number$delegate, $$delegatedProperties[3].getName());
    }

    public final String getInn() {
        return (String) kotlin.collections.AbstractList.Companion.getOrImplicitDefaultNullable(this.inn$delegate, $$delegatedProperties[9].getName());
    }

    public final String getKpp() {
        return (String) kotlin.collections.AbstractList.Companion.getOrImplicitDefaultNullable(this.kpp$delegate, $$delegatedProperties[8].getName());
    }

    public final String getLogo() {
        return (String) kotlin.collections.AbstractList.Companion.getOrImplicitDefaultNullable(this.logo$delegate, $$delegatedProperties[0].getName());
    }

    public final String getPurpose() {
        return (String) kotlin.collections.AbstractList.Companion.getOrImplicitDefaultNullable(this.purpose$delegate, $$delegatedProperties[5].getName());
    }

    public final String getRecipient_name() {
        return (String) kotlin.collections.AbstractList.Companion.getOrImplicitDefaultNullable(this.recipient_name$delegate, $$delegatedProperties[6].getName());
    }

    public final void setAmount(String str) {
        this.amount$delegate.put($$delegatedProperties[2].getName(), str);
    }

    public final void setBank_name(String str) {
        this.bank_name$delegate.put($$delegatedProperties[7].getName(), str);
    }

    public final void setBik(String str) {
        this.bik$delegate.put($$delegatedProperties[1].getName(), str);
    }

    public final void setCorr_bank(String str) {
        this.corr_bank$delegate.put($$delegatedProperties[4].getName(), str);
    }

    public final void setCorr_number(String str) {
        this.corr_number$delegate.put($$delegatedProperties[3].getName(), str);
    }

    public final void setInn(String str) {
        this.inn$delegate.put($$delegatedProperties[9].getName(), str);
    }

    public final void setKpp(String str) {
        this.kpp$delegate.put($$delegatedProperties[8].getName(), str);
    }

    public final void setLogo(String str) {
        this.logo$delegate.put($$delegatedProperties[0].getName(), str);
    }

    public final void setPurpose(String str) {
        this.purpose$delegate.put($$delegatedProperties[5].getName(), str);
    }

    public final void setRecipient_name(String str) {
        this.recipient_name$delegate.put($$delegatedProperties[6].getName(), str);
    }

    public RemittanceOutgoing(Map<String, String> map) {
        Intrinsics.checkParameterIsNotNull(map, "map");
        this.map = map;
        this.logo$delegate = this.map;
        this.bik$delegate = this.map;
        this.amount$delegate = this.map;
        this.corr_number$delegate = this.map;
        this.corr_bank$delegate = this.map;
        this.purpose$delegate = this.map;
        this.recipient_name$delegate = this.map;
        this.bank_name$delegate = this.map;
        this.kpp$delegate = this.map;
        this.inn$delegate = this.map;
        this.isVat = Boolean.FALSE;
    }

    public /* synthetic */ RemittanceOutgoing(Map map, int i, Ref ref) {
        if ((i & 1) != 0) {
            map = kotlin.collections.AbstractList.Companion.withDefaultMutable(new HashMap(), (Function1) C14281.INSTANCE);
        }
        this(map);
    }

    public final Map<String, String> getMap() {
        return this.map;
    }

    public final String get(String str) {
        Intrinsics.checkParameterIsNotNull(str, "name");
        return (String) this.map.get(str);
    }

    public final void put(FieldPayment fieldPayment) {
        Intrinsics.checkParameterIsNotNull(fieldPayment, "field");
        Map map = this.map;
        String name = fieldPayment.getName();
        Intrinsics.checkExpressionValueIsNotNull(name, "field.name");
        map.put(name, fieldPayment.getValue());
    }

    public final boolean isGkh() {
        return this.isGkh;
    }

    public final void setGkh(boolean z) {
        this.isGkh = z;
    }

    public final String getCardAccount() {
        return this.cardAccount;
    }

    public final void setCardAccount(String str) {
        this.cardAccount = str;
    }

    public final String getRemittance_kind() {
        return this.remittance_kind;
    }

    public final void setRemittance_kind(String str) {
        this.remittance_kind = str;
    }

    public final Boolean isVat() {
        return this.isVat;
    }

    public final void setVat(Boolean bool) {
        this.isVat = bool;
        this.map.put("nds", String.valueOf(bool));
    }

    public final Boolean getBesp() {
        return this.besp;
    }

    public final void setBesp(Boolean bool) {
        this.besp = bool;
        this.map.put("besp", String.valueOf(bool));
    }

    public RemittanceOutgoing(Remittance remittance) {
        Intrinsics.checkParameterIsNotNull(remittance, "remittance");
        this(null, 1, null);
        setBik(remittance.getBik());
        setLogo(remittance.getIcon_url());
        setCorr_bank(remittance.getCorr_bank());
        setCorr_number(remittance.getCorr_number());
        setPurpose(remittance.getPurpose());
        setRecipient_name(remittance.getRecipient_name());
        setBank_name(remittance.getBank_name());
        setKpp(remittance.getKpp());
        setInn(remittance.getInn());
        setVat(Boolean.valueOf(Intrinsics.areEqual(ServerProtocol.DIALOG_RETURN_SCOPES_TRUE, remittance.getNds())));
        this.isGkh = remittance.isGkh();
    }

    public void writeToParcel(Parcel parcel, int i) {
        Intrinsics.checkParameterIsNotNull(parcel, "parcel");
        parcel.writeBundle(CollectionUtilsKt.toBundle(this.map));
        parcel.writeString(this.cardAccount);
        parcel.writeString(this.remittance_kind);
        parcel.writeByte(this.isGkh);
    }
}
