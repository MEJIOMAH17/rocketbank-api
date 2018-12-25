package com.samsung.android.sdk.samsungpay.v2.payment;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.samsung.android.sdk.samsungpay.v2.SpaySdk;
import com.samsung.android.sdk.samsungpay.v2.SpaySdk.Brand;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Provider;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.CurrencyManager;
import ru.rocketbank.core.manager.DataManager;
import ru.rocketbank.core.manager.KeyManager;
import ru.rocketbank.core.manager.security.KeyManagerImpl;
import ru.rocketbank.core.network.api.ProvidersApi;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.core.utils.MoneyFormatter;

public class PaymentInfo implements Parcelable {
    public static final Creator<PaymentInfo> CREATOR = new C07101();
    private AddressInPaymentSheet addressInPaymentSheet;
    private List<Brand> allowedCardBrand;
    private Amount amount;
    private Address billingAddress;
    private Brand cardBrand;
    private Bundle extraPaymentInfo;
    private boolean isCardHolderNameRequired;
    private boolean isGiftCardPurchase;
    private boolean isRecurring;
    private String merchantCountryCode;
    private String merchantId;
    private String merchantName;
    private String orderNumber;
    private PaymentProtocol paymentProtocol;
    private Address shippingAddress;
    private String version;

    /* renamed from: com.samsung.android.sdk.samsungpay.v2.payment.PaymentInfo$1 */
    static class C07101 implements Creator<PaymentInfo> {
        C07101() {
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new PaymentInfo[i];
        }

        public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new PaymentInfo(parcel);
        }
    }

    public static class Address implements Parcelable {
        public static final Creator<Address> CREATOR = new C07111();
        private String addressLine1;
        private String addressLine2;
        private String addressee;
        private String city;
        private String countryCode;
        private String postalCode;
        private String state;
        private String version;

        /* renamed from: com.samsung.android.sdk.samsungpay.v2.payment.PaymentInfo$Address$1 */
        static class C07111 implements Creator<Address> {
            C07111() {
            }

            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return new Address[i];
            }

            public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
                return new Address(parcel);
            }
        }

        public static class Builder implements Provider<DataManager> {
            private final Provider<CurrencyManager> currencyManagerProvider;
            private final com.samsung.android.sdk.samsungpay.payment.CardInfo.Builder module$7fc98512;
            private final Provider<ProvidersApi> providersApiProvider;

            public Builder(com.samsung.android.sdk.samsungpay.payment.CardInfo.Builder builder, Provider<CurrencyManager> provider, Provider<ProvidersApi> provider2) {
                this.module$7fc98512 = builder;
                this.currencyManagerProvider = provider;
                this.providersApiProvider = provider2;
            }

            public final /* bridge */ /* synthetic */ Object get() {
                CurrencyManager currencyManager = (CurrencyManager) this.currencyManagerProvider.get();
                ProvidersApi providersApi = (ProvidersApi) this.providersApiProvider.get();
                Intrinsics.checkParameterIsNotNull(currencyManager, "currencyManager");
                Intrinsics.checkParameterIsNotNull(providersApi, "providersApi");
                return new DataManager(currencyManager, providersApi);
            }
        }

        public int describeContents() {
            return 0;
        }

        private Address() {
        }

        private Address(Builder builder) {
            this.version = SpaySdk.getVersionName();
            this.addressee = null;
            this.addressLine1 = null;
            this.addressLine2 = null;
            this.city = null;
            this.state = null;
            this.countryCode = null;
            this.postalCode = null;
        }

        public Address(Parcel parcel) {
            this.version = (String) parcel.readValue(String.class.getClassLoader());
            this.addressee = (String) parcel.readValue(String.class.getClassLoader());
            this.addressLine1 = (String) parcel.readValue(String.class.getClassLoader());
            this.addressLine2 = (String) parcel.readValue(String.class.getClassLoader());
            this.city = (String) parcel.readValue(String.class.getClassLoader());
            this.state = (String) parcel.readValue(String.class.getClassLoader());
            this.countryCode = (String) parcel.readValue(String.class.getClassLoader());
            this.postalCode = (String) parcel.readValue(String.class.getClassLoader());
        }

        public String getAddressee() {
            return this.addressee;
        }

        public String getAddressLine1() {
            return this.addressLine1;
        }

        public String getAddressLine2() {
            return this.addressLine2;
        }

        public String getCity() {
            return this.city;
        }

        public String getState() {
            return this.state;
        }

        public String getCountryCode() {
            return this.countryCode;
        }

        public String getPostalCode() {
            return this.postalCode;
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeValue(this.version);
            parcel.writeValue(this.addressee);
            parcel.writeValue(this.addressLine1);
            parcel.writeValue(this.addressLine2);
            parcel.writeValue(this.city);
            parcel.writeValue(this.state);
            parcel.writeValue(this.countryCode);
            parcel.writeValue(this.postalCode);
        }
    }

    public enum AddressInPaymentSheet implements Parcelable {
        DO_NOT_SHOW,
        NEED_BILLING_SPAY,
        NEED_SHIPPING_SPAY,
        SEND_SHIPPING,
        NEED_BILLING_SEND_SHIPPING,
        NEED_BILLING_AND_SHIPPING;
        
        public static final Creator<AddressInPaymentSheet> CREATOR = null;

        /* renamed from: com.samsung.android.sdk.samsungpay.v2.payment.PaymentInfo$AddressInPaymentSheet$1 */
        static class C07121 implements Creator<AddressInPaymentSheet> {
            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return null;
            }

            C07121() {
            }

            public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
                return AddressInPaymentSheet.values()[parcel.readInt()];
            }
        }

        public final int describeContents() {
            return 0;
        }

        static {
            CREATOR = new C07121();
        }

        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(ordinal());
        }
    }

    public static class Amount implements Parcelable {
        public static final Creator<Amount> CREATOR = new C07131();
        private String currencyCode;
        private String itemTotalPrice;
        private String shippingPrice;
        private String tax;
        private String totalPrice;
        private String version;

        /* renamed from: com.samsung.android.sdk.samsungpay.v2.payment.PaymentInfo$Amount$1 */
        static class C07131 implements Creator<Amount> {
            C07131() {
            }

            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return new Amount[i];
            }

            public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
                return new Amount(parcel);
            }
        }

        public static class Builder implements Provider<MoneyFormatter> {
            private final Provider<Authorization> authorizationProvider;
            private final Provider<Context> contextProvider;
            private final Provider<CurrencyManager> currencyManagerProvider;
            private final com.samsung.android.sdk.samsungpay.payment.CardInfo.Builder module$7fc98512;

            public Builder(com.samsung.android.sdk.samsungpay.payment.CardInfo.Builder builder, Provider<Context> provider, Provider<Authorization> provider2, Provider<CurrencyManager> provider3) {
                this.module$7fc98512 = builder;
                this.contextProvider = provider;
                this.authorizationProvider = provider2;
                this.currencyManagerProvider = provider3;
            }

            public final /* bridge */ /* synthetic */ Object get() {
                Context context = (Context) this.contextProvider.get();
                Authorization authorization = (Authorization) this.authorizationProvider.get();
                CurrencyManager currencyManager = (CurrencyManager) this.currencyManagerProvider.get();
                Intrinsics.checkParameterIsNotNull(context, "context");
                Intrinsics.checkParameterIsNotNull(authorization, "authorization");
                Intrinsics.checkParameterIsNotNull(currencyManager, "currencyManager");
                return new MoneyFormatter(context, authorization, currencyManager);
            }
        }

        public int describeContents() {
            return 0;
        }

        private Amount() {
        }

        private Amount(Builder builder) {
            this.version = SpaySdk.getVersionName();
            this.currencyCode = null;
            this.itemTotalPrice = null;
            this.tax = null;
            this.shippingPrice = null;
            this.totalPrice = null;
        }

        public Amount(Parcel parcel) {
            this.version = (String) parcel.readValue(String.class.getClassLoader());
            this.currencyCode = (String) parcel.readValue(String.class.getClassLoader());
            this.itemTotalPrice = (String) parcel.readValue(String.class.getClassLoader());
            this.tax = (String) parcel.readValue(String.class.getClassLoader());
            this.shippingPrice = (String) parcel.readValue(String.class.getClassLoader());
            this.totalPrice = (String) parcel.readValue(String.class.getClassLoader());
        }

        public String getCurrencyCode() {
            return this.currencyCode;
        }

        public String getItemTotalPrice() {
            return this.itemTotalPrice;
        }

        public String getTax() {
            return this.tax;
        }

        public String getShippingPrice() {
            return this.shippingPrice;
        }

        public String getTotalPrice() {
            return this.totalPrice;
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeValue(this.version);
            parcel.writeValue(this.currencyCode);
            parcel.writeValue(this.itemTotalPrice);
            parcel.writeValue(this.tax);
            parcel.writeValue(this.shippingPrice);
            parcel.writeValue(this.totalPrice);
        }

        private static boolean isValid(java.lang.String r5) {
            /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
            /*
            r0 = 0;
            if (r5 != 0) goto L_0x0004;
        L_0x0003:
            return r0;
        L_0x0004:
            r1 = java.lang.Double.parseDouble(r5);	 Catch:{ NumberFormatException -> 0x0011 }
            r3 = 0;
            r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1));
            if (r5 < 0) goto L_0x0010;
        L_0x000e:
            r5 = 1;
            return r5;
        L_0x0010:
            return r0;
        L_0x0011:
            return r0;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.sdk.samsungpay.v2.payment.PaymentInfo.Amount.isValid(java.lang.String):boolean");
        }
    }

    public enum PaymentProtocol implements Parcelable {
        PROTOCOL_3DS,
        PROTOCOL_EMV,
        PROTOCOL_COF,
        PROTOCOL_OTHER;
        
        public static final Creator<PaymentProtocol> CREATOR = null;

        /* renamed from: com.samsung.android.sdk.samsungpay.v2.payment.PaymentInfo$PaymentProtocol$1 */
        static class C07141 implements Creator<PaymentProtocol> {
            C07141() {
            }

            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return new PaymentProtocol[i];
            }

            public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
                return PaymentProtocol.values()[parcel.readInt()];
            }
        }

        public final int describeContents() {
            return 0;
        }

        static {
            CREATOR = new C07141();
        }

        public static PaymentProtocol convert(String str) {
            str = str.toUpperCase();
            if (str.contains("3DS")) {
                return PROTOCOL_3DS;
            }
            if (str.contains("EMV")) {
                return PROTOCOL_EMV;
            }
            if (str.contains("COF") != null) {
                return PROTOCOL_COF;
            }
            return PROTOCOL_OTHER;
        }

        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(ordinal());
        }
    }

    public static class Builder implements Provider<KeyManager> {
        private final Provider<Context> contextProvider;
        private final com.samsung.android.sdk.samsungpay.payment.CardInfo.Builder module$7fc98512;

        public Builder(com.samsung.android.sdk.samsungpay.payment.CardInfo.Builder builder, Provider<Context> provider) {
            this.module$7fc98512 = builder;
            this.contextProvider = provider;
        }

        public final /* bridge */ /* synthetic */ Object get() {
            Context context = (Context) this.contextProvider.get();
            Intrinsics.checkParameterIsNotNull(context, "context");
            return new KeyManagerImpl(context);
        }
    }

    public int describeContents() {
        return 0;
    }

    private PaymentInfo() {
        this.addressInPaymentSheet = AddressInPaymentSheet.DO_NOT_SHOW;
        this.isGiftCardPurchase = false;
        this.isCardHolderNameRequired = false;
        this.isRecurring = false;
    }

    private PaymentInfo(Builder builder) {
        this.addressInPaymentSheet = AddressInPaymentSheet.DO_NOT_SHOW;
        this.isGiftCardPurchase = false;
        this.isCardHolderNameRequired = false;
        this.isRecurring = false;
        this.version = SpaySdk.getVersionName();
        this.amount = null;
        this.shippingAddress = null;
        this.billingAddress = null;
        this.merchantId = null;
        this.merchantName = null;
        this.orderNumber = null;
        this.paymentProtocol = null;
        this.addressInPaymentSheet = AddressInPaymentSheet.DO_NOT_SHOW;
        this.allowedCardBrand = null;
        this.isGiftCardPurchase = false;
        this.cardBrand = null;
        this.isCardHolderNameRequired = false;
        this.isRecurring = false;
        this.merchantCountryCode = null;
        this.extraPaymentInfo = null;
    }

    public PaymentInfo(Parcel parcel) {
        this.addressInPaymentSheet = AddressInPaymentSheet.DO_NOT_SHOW;
        this.isGiftCardPurchase = false;
        this.isCardHolderNameRequired = false;
        this.isRecurring = false;
        readFromParcel(parcel);
    }

    public void readFromParcel(Parcel parcel) {
        this.version = (String) parcel.readValue(String.class.getClassLoader());
        this.amount = (Amount) parcel.readParcelable(Amount.class.getClassLoader());
        this.shippingAddress = (Address) parcel.readParcelable(Address.class.getClassLoader());
        this.billingAddress = (Address) parcel.readParcelable(Address.class.getClassLoader());
        this.merchantId = (String) parcel.readValue(String.class.getClassLoader());
        this.merchantName = (String) parcel.readValue(String.class.getClassLoader());
        this.orderNumber = (String) parcel.readValue(String.class.getClassLoader());
        this.paymentProtocol = (PaymentProtocol) parcel.readValue(PaymentProtocol.class.getClassLoader());
        this.addressInPaymentSheet = (AddressInPaymentSheet) parcel.readValue(AddressInPaymentSheet.class.getClassLoader());
        this.allowedCardBrand = new ArrayList();
        parcel.readTypedList(this.allowedCardBrand, Brand.CREATOR);
        this.isGiftCardPurchase = ((Boolean) parcel.readValue(Boolean.class.getClassLoader())).booleanValue();
        this.cardBrand = (Brand) parcel.readValue(Brand.class.getClassLoader());
        this.isCardHolderNameRequired = ((Boolean) parcel.readValue(Boolean.class.getClassLoader())).booleanValue();
        this.isRecurring = ((Boolean) parcel.readValue(Boolean.class.getClassLoader())).booleanValue();
        this.merchantCountryCode = (String) parcel.readValue(String.class.getClassLoader());
        this.extraPaymentInfo = parcel.readBundle();
    }

    public Amount getAmount() {
        return this.amount;
    }

    public Address getShippingAddress() {
        return this.shippingAddress;
    }

    public Address getBillingAddress() {
        return this.billingAddress;
    }

    public String getVersion() {
        return this.version;
    }

    public String getMerchantId() {
        return this.merchantId;
    }

    public String getMerchantName() {
        return this.merchantName;
    }

    public String getOrderNumber() {
        return this.orderNumber;
    }

    public PaymentProtocol getPaymentProtocol() {
        return this.paymentProtocol;
    }

    public AddressInPaymentSheet getAddressInPaymentSheet() {
        return this.addressInPaymentSheet;
    }

    public List<Brand> getAllowedCardBrands() {
        return this.allowedCardBrand;
    }

    @Deprecated
    public Brand getCardBrand() {
        return this.cardBrand;
    }

    public boolean getIsGiftCardPurchase() {
        return this.isGiftCardPurchase;
    }

    public boolean getIsCardHolderNameRequired() {
        return this.isCardHolderNameRequired;
    }

    public boolean getIsRecurring() {
        return this.isRecurring;
    }

    public String getMerchantCountryCode() {
        return this.merchantCountryCode;
    }

    public Bundle getExtraPaymentInfo() {
        return this.extraPaymentInfo;
    }

    public boolean isEnableEnforcePaymentSheet() {
        nullCheckExtraPaymentInfo();
        return this.extraPaymentInfo.getBoolean("enforcePaymentSheet", false);
    }

    public boolean isFastCheckout() {
        nullCheckExtraPaymentInfo();
        return this.extraPaymentInfo.getBoolean("fastCheckOutStatus", false);
    }

    public String getPaymentCardLast4DPAN() {
        nullCheckExtraPaymentInfo();
        return this.extraPaymentInfo.getString("last4Dpan", "");
    }

    public String getPaymentCardLast4FPAN() {
        nullCheckExtraPaymentInfo();
        return this.extraPaymentInfo.getString("last4Fpan", "");
    }

    public Brand getPaymentCardBrand() {
        nullCheckExtraPaymentInfo();
        return Brand.valueOf(this.extraPaymentInfo.getString("cardBrand", "UNKNOWN_CARD"));
    }

    public String getPaymentCurrencyCode() {
        return this.amount.currencyCode;
    }

    public Address getPaymentShippingAddress() {
        return this.shippingAddress;
    }

    private void nullCheckExtraPaymentInfo() {
        if (this.extraPaymentInfo == null) {
            this.extraPaymentInfo = new Bundle();
        }
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeValue(this.version);
        parcel.writeParcelable(this.amount, 0);
        parcel.writeParcelable(this.shippingAddress, 0);
        parcel.writeParcelable(this.billingAddress, 0);
        parcel.writeValue(this.merchantId);
        parcel.writeValue(this.merchantName);
        parcel.writeValue(this.orderNumber);
        parcel.writeValue(this.paymentProtocol);
        parcel.writeValue(this.addressInPaymentSheet);
        parcel.writeTypedList(this.allowedCardBrand);
        parcel.writeValue(Boolean.valueOf(this.isGiftCardPurchase));
        parcel.writeValue(this.cardBrand);
        parcel.writeValue(Boolean.valueOf(this.isCardHolderNameRequired));
        parcel.writeValue(Boolean.valueOf(this.isRecurring));
        parcel.writeValue(this.merchantCountryCode);
        parcel.writeBundle(this.extraPaymentInfo);
    }
}
