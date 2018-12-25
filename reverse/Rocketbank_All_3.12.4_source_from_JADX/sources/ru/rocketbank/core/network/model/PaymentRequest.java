package ru.rocketbank.core.network.model;

import java.util.HashMap;
import kotlin.collections.AbstractList.Companion;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import ru.rocketbank.core.model.transfers.Template.ProviderPayment.FieldPayment;

/* compiled from: PaymentRequest.kt */
public final class PaymentRequest {
    static final /* synthetic */ KProperty[] $$delegatedProperties = new KProperty[]{Reflection.mutableProperty1(new MutablePropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(PaymentRequest.class), "amount", "getAmount()Ljava/lang/String;")), Reflection.mutableProperty1(new MutablePropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(PaymentRequest.class), "provider_id", "getProvider_id()Ljava/lang/String;")), Reflection.mutableProperty1(new MutablePropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(PaymentRequest.class), "card_token", "getCard_token()Ljava/lang/String;"))};
    private final HashMap amount$delegate = this.map;
    private final HashMap card_token$delegate = this.map;
    private final HashMap<String, String> map = new HashMap();
    private final HashMap provider_id$delegate = this.map;

    public final String getAmount() {
        return (String) Companion.getOrImplicitDefaultNullable(this.amount$delegate, $$delegatedProperties[0].getName());
    }

    public final String getCard_token() {
        return (String) Companion.getOrImplicitDefaultNullable(this.card_token$delegate, $$delegatedProperties[2].getName());
    }

    public final String getProvider_id() {
        return (String) Companion.getOrImplicitDefaultNullable(this.provider_id$delegate, $$delegatedProperties[1].getName());
    }

    public final void setAmount(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.amount$delegate.put($$delegatedProperties[0].getName(), str);
    }

    public final void setCard_token(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.card_token$delegate.put($$delegatedProperties[2].getName(), str);
    }

    public final void setProvider_id(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.provider_id$delegate.put($$delegatedProperties[1].getName(), str);
    }

    public final HashMap<String, String> getMap() {
        return this.map;
    }

    public final String get(String str) {
        Intrinsics.checkParameterIsNotNull(str, "name");
        return (String) this.map.get(str);
    }

    public final void put(FieldPayment fieldPayment) {
        Intrinsics.checkParameterIsNotNull(fieldPayment, "field");
        this.map.put(fieldPayment.getName(), fieldPayment.getValue());
    }
}
