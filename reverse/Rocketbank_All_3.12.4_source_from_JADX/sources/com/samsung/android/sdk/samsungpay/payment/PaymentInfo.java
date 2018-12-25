package com.samsung.android.sdk.samsungpay.payment;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.samsung.android.sdk.samsungpay.SSamsungPay;
import com.samsung.android.sdk.samsungpay.payment.CardInfo.Brand;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Provider;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.AppInfoManager;
import ru.rocketbank.core.manager.GeolocationManager;
import ru.rocketbank.core.manager.HeaderManager;
import ru.rocketbank.core.user.AuthorizationStorage;
import ru.rocketbank.core.utils.AppConfig;
import ru.rocketbank.core.utils.fs.FileManager;

@Deprecated
public class PaymentInfo implements Parcelable {
    public static final Creator<PaymentInfo> CREATOR = new C06891();
    private AddressInPaymentSheet addressInPaymentSheet;
    private List<Brand> allowedCardBrand;
    private Amount amount;
    private Brand cardBrand;
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

    /* renamed from: com.samsung.android.sdk.samsungpay.payment.PaymentInfo$1 */
    static class C06891 implements Creator<PaymentInfo> {
        C06891() {
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new PaymentInfo[i];
        }

        public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new PaymentInfo(parcel);
        }
    }

    @Deprecated
    public static class Address implements Parcelable {
        public static final Creator<Address> CREATOR = new C06901();
        private String addressLine1;
        private String addressLine2;
        private String addressee;
        private String city;
        private String countryCode;
        private String postalCode;
        private String state;
        private String version;

        /* renamed from: com.samsung.android.sdk.samsungpay.payment.PaymentInfo$Address$1 */
        static class C06901 implements Creator<Address> {
            C06901() {
            }

            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return new Address[i];
            }

            public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
                return new Address(parcel);
            }
        }

        @Deprecated
        public static class Builder implements Provider<AppConfig> {
            private final com.samsung.android.sdk.samsungpay.payment.CardInfo.Builder module$7fc98512;

            public Builder(com.samsung.android.sdk.samsungpay.payment.CardInfo.Builder builder) {
                this.module$7fc98512 = builder;
            }

            public final /* bridge */ /* synthetic */ Object get() {
                return new AppConfig();
            }
        }

        public int describeContents() {
            return 0;
        }

        private Address() {
        }

        private Address(Builder builder) {
            builder = new SSamsungPay();
            this.version = SSamsungPay.getVersionName();
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

    @Deprecated
    public enum AddressInPaymentSheet implements Parcelable {
        DO_NOT_SHOW,
        NEED_BILLING_SPAY,
        NEED_SHIPPING_SPAY,
        SEND_SHIPPING,
        NEED_BILLING_SEND_SHIPPING,
        NEED_BILLING_AND_SHIPPING;
        
        public static final Creator<AddressInPaymentSheet> CREATOR = null;

        /* renamed from: com.samsung.android.sdk.samsungpay.payment.PaymentInfo$AddressInPaymentSheet$1 */
        static class C06911 implements Creator<AddressInPaymentSheet> {
            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return null;
            }

            C06911() {
            }

            public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
                return AddressInPaymentSheet.values()[parcel.readInt()];
            }
        }

        public final int describeContents() {
            return 0;
        }

        static {
            CREATOR = new C06911();
        }

        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(ordinal());
        }
    }

    @Deprecated
    public static class Amount implements Parcelable {
        public static final Creator<Amount> CREATOR = new C06921();
        private String currencyCode;
        private String itemTotalPrice;
        private String shippingPrice;
        private String tax;
        private String totalPrice;
        private String version;

        /* renamed from: com.samsung.android.sdk.samsungpay.payment.PaymentInfo$Amount$1 */
        static class C06921 implements Creator<Amount> {
            C06921() {
            }

            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return new Amount[i];
            }

            public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
                return new Amount(parcel);
            }
        }

        @Deprecated
        public static class Builder implements Provider<FileManager> {
            private final Provider<AppConfig> appConfigProvider;
            private final Provider<Context> contextProvider;
            private final com.samsung.android.sdk.samsungpay.payment.CardInfo.Builder module$7fc98512;

            public Builder(com.samsung.android.sdk.samsungpay.payment.CardInfo.Builder builder, Provider<Context> provider, Provider<AppConfig> provider2) {
                this.module$7fc98512 = builder;
                this.contextProvider = provider;
                this.appConfigProvider = provider2;
            }

            public final /* bridge */ /* synthetic */ Object get() {
                Context context = (Context) this.contextProvider.get();
                AppConfig appConfig = (AppConfig) this.appConfigProvider.get();
                Intrinsics.checkParameterIsNotNull(context, "context");
                Intrinsics.checkParameterIsNotNull(appConfig, "appConfig");
                return new FileManager(context, appConfig);
            }
        }

        public int describeContents() {
            return 0;
        }

        private Amount() {
        }

        private Amount(Builder builder) {
            builder = new SSamsungPay();
            this.version = SSamsungPay.getVersionName();
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
            throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.sdk.samsungpay.payment.PaymentInfo.Amount.isValid(java.lang.String):boolean");
        }
    }

    @Deprecated
    public enum PaymentProtocol implements Parcelable {
        PROTOCOL_3DS,
        PROTOCOL_EMV,
        PROTOCOL_COF,
        PROTOCOL_OTHER;
        
        public static final Creator<PaymentProtocol> CREATOR = null;

        /* renamed from: com.samsung.android.sdk.samsungpay.payment.PaymentInfo$PaymentProtocol$1 */
        static class C06931 implements Creator<PaymentProtocol> {
            C06931() {
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
            CREATOR = new C06931();
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

    @Deprecated
    public static class Builder implements Provider<HeaderManager> {
        private final Provider<AppInfoManager> appInfoManagerProvider;
        private final Provider<AuthorizationStorage> authStorageProvider;
        private final Provider<GeolocationManager> geolocationManagerProvider;
        private final com.samsung.android.sdk.samsungpay.payment.CardInfo.Builder module$7fc98512;

        public Builder(com.samsung.android.sdk.samsungpay.payment.CardInfo.Builder builder, Provider<GeolocationManager> provider, Provider<AppInfoManager> provider2, Provider<AuthorizationStorage> provider3) {
            this.module$7fc98512 = builder;
            this.geolocationManagerProvider = provider;
            this.appInfoManagerProvider = provider2;
            this.authStorageProvider = provider3;
        }

        public final /* bridge */ /* synthetic */ Object get() {
            GeolocationManager geolocationManager = (GeolocationManager) this.geolocationManagerProvider.get();
            AppInfoManager appInfoManager = (AppInfoManager) this.appInfoManagerProvider.get();
            AuthorizationStorage authorizationStorage = (AuthorizationStorage) this.authStorageProvider.get();
            Intrinsics.checkParameterIsNotNull(geolocationManager, "geolocationManager");
            Intrinsics.checkParameterIsNotNull(appInfoManager, "appInfoManager");
            Intrinsics.checkParameterIsNotNull(authorizationStorage, "authStorage");
            return new HeaderManager(authorizationStorage, appInfoManager, geolocationManager);
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
        SSamsungPay sSamsungPay = new SSamsungPay();
        this.version = SSamsungPay.getVersionName();
        this.amount = null;
        this.shippingAddress = null;
        this.merchantId = null;
        this.merchantName = null;
        this.orderNumber = null;
        this.paymentProtocol = null;
        this.addressInPaymentSheet = null;
        this.allowedCardBrand = null;
        this.isGiftCardPurchase = false;
        this.cardBrand = null;
        this.isCardHolderNameRequired = false;
        this.isRecurring = false;
        this.merchantCountryCode = null;
    }

    public PaymentInfo(Parcel parcel) {
        this.addressInPaymentSheet = AddressInPaymentSheet.DO_NOT_SHOW;
        this.isGiftCardPurchase = false;
        this.isCardHolderNameRequired = false;
        this.isRecurring = false;
        this.version = (String) parcel.readValue(String.class.getClassLoader());
        this.amount = (Amount) parcel.readParcelable(Amount.class.getClassLoader());
        this.shippingAddress = (Address) parcel.readParcelable(Address.class.getClassLoader());
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
    }

    public Amount getAmount() {
        return this.amount;
    }

    public Address getShippingAddress() {
        return this.shippingAddress;
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

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeValue(this.version);
        parcel.writeParcelable(this.amount, 0);
        parcel.writeParcelable(this.shippingAddress, 0);
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
    }
}
