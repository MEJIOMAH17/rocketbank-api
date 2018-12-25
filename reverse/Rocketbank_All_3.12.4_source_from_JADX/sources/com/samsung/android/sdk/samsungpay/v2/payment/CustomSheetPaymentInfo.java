package com.samsung.android.sdk.samsungpay.v2.payment;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.samsung.android.sdk.samsungpay.v2.SpaySdk;
import com.samsung.android.sdk.samsungpay.v2.SpaySdk.Brand;
import com.samsung.android.sdk.samsungpay.v2.payment.sheet.AddressControl;
import com.samsung.android.sdk.samsungpay.v2.payment.sheet.AmountBoxControl;
import com.samsung.android.sdk.samsungpay.v2.payment.sheet.CustomSheet;
import com.samsung.android.sdk.samsungpay.v2.payment.sheet.SheetControl;
import com.samsung.android.sdk.samsungpay.v2.payment.sheet.SheetControl.Controltype;
import com.samsung.android.sdk.samsungpay.v2.payment.sheet.SheetItemType;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Provider;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.ContactManager;
import ru.rocketbank.core.manager.RocketShortcutManager;
import ru.rocketbank.core.network.api.RocketAPI;
import ru.rocketbank.core.user.Authorization;

public class CustomSheetPaymentInfo implements Parcelable {
    public static final Creator<CustomSheetPaymentInfo> CREATOR = new C07061();
    private AddressInPaymentSheet addressInPaymentSheet;
    private List<Brand> allowedCardBrand;
    private CardInfo cardInfo;
    private CustomSheet customSheet;
    private Bundle extraPaymentInfo;
    private boolean isCardHolderNameRequired;
    private boolean isRecurring;
    private String merchantCountryCode;
    private String merchantId;
    private String merchantName;
    private String orderNumber;
    private PaymentProtocol paymentProtocol;
    private String version;

    /* renamed from: com.samsung.android.sdk.samsungpay.v2.payment.CustomSheetPaymentInfo$1 */
    static class C07061 implements Creator<CustomSheetPaymentInfo> {
        C07061() {
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new CustomSheetPaymentInfo[i];
        }

        public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new CustomSheetPaymentInfo(parcel);
        }
    }

    public static class Address implements Parcelable {
        public static final Creator<Address> CREATOR = new C07071();
        private static final String EXTRA_EMAIL_ADDRESS = "emailAddress";
        private String addressLine1;
        private String addressLine2;
        private String addressee;
        private String city;
        private String countryCode;
        private String email;
        private Bundle extraAddressInfo;
        private String phoneNumber;
        private String postalCode;
        private String state;
        private String version;

        /* renamed from: com.samsung.android.sdk.samsungpay.v2.payment.CustomSheetPaymentInfo$Address$1 */
        static class C07071 implements Creator<Address> {
            C07071() {
            }

            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return new Address[i];
            }

            public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
                return new Address(parcel);
            }
        }

        public static class Builder {
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
            this.phoneNumber = null;
            this.extraAddressInfo = null;
            this.email = null;
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
            this.phoneNumber = (String) parcel.readValue(String.class.getClassLoader());
            this.extraAddressInfo = parcel.readBundle();
            if (this.extraAddressInfo != null) {
                this.email = this.extraAddressInfo.getString(EXTRA_EMAIL_ADDRESS);
            }
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

        public String getPhoneNumber() {
            return this.phoneNumber;
        }

        public Bundle getExtraAddressInfo() {
            return this.extraAddressInfo;
        }

        public String getEmail() {
            return this.email;
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
            parcel.writeValue(this.phoneNumber);
            parcel.writeBundle(this.extraAddressInfo);
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

        /* renamed from: com.samsung.android.sdk.samsungpay.v2.payment.CustomSheetPaymentInfo$AddressInPaymentSheet$1 */
        static class C07081 implements Creator<AddressInPaymentSheet> {
            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return null;
            }

            C07081() {
            }

            public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
                return AddressInPaymentSheet.values()[parcel.readInt()];
            }
        }

        public final int describeContents() {
            return 0;
        }

        static {
            CREATOR = new C07081();
        }

        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(ordinal());
        }
    }

    public enum PaymentProtocol implements Parcelable {
        PROTOCOL_3DS,
        PROTOCOL_EMV,
        PROTOCOL_COF,
        PROTOCOL_OTHER;
        
        public static final Creator<PaymentProtocol> CREATOR = null;

        /* renamed from: com.samsung.android.sdk.samsungpay.v2.payment.CustomSheetPaymentInfo$PaymentProtocol$1 */
        static class C07091 implements Creator<PaymentProtocol> {
            C07091() {
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
            CREATOR = new C07091();
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

    public static class Builder implements Provider<ContactManager> {
        private final Provider<Authorization> authorizationProvider;
        private final Provider<Context> contextProvider;
        private final com.samsung.android.sdk.samsungpay.payment.CardInfo.Builder module$7fc98512;
        private final Provider<RocketAPI> rocketAPIProvider;
        private final Provider<RocketShortcutManager> rocketShortcutManagerProvider;

        public Builder(com.samsung.android.sdk.samsungpay.payment.CardInfo.Builder builder, Provider<Context> provider, Provider<RocketAPI> provider2, Provider<Authorization> provider3, Provider<RocketShortcutManager> provider4) {
            this.module$7fc98512 = builder;
            this.contextProvider = provider;
            this.rocketAPIProvider = provider2;
            this.authorizationProvider = provider3;
            this.rocketShortcutManagerProvider = provider4;
        }

        public final /* bridge */ /* synthetic */ Object get() {
            Context context = (Context) this.contextProvider.get();
            RocketAPI rocketAPI = (RocketAPI) this.rocketAPIProvider.get();
            Authorization authorization = (Authorization) this.authorizationProvider.get();
            RocketShortcutManager rocketShortcutManager = (RocketShortcutManager) this.rocketShortcutManagerProvider.get();
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(rocketAPI, "rocketAPI");
            Intrinsics.checkParameterIsNotNull(authorization, "authorization");
            Intrinsics.checkParameterIsNotNull(rocketShortcutManager, "rocketShortcutManager");
            return new ContactManager(context, rocketAPI, authorization, rocketShortcutManager);
        }
    }

    public int describeContents() {
        return 0;
    }

    private CustomSheetPaymentInfo() {
        this.addressInPaymentSheet = AddressInPaymentSheet.DO_NOT_SHOW;
        this.isCardHolderNameRequired = false;
        this.isRecurring = false;
    }

    private CustomSheetPaymentInfo(Builder builder) {
        this.addressInPaymentSheet = AddressInPaymentSheet.DO_NOT_SHOW;
        this.isCardHolderNameRequired = false;
        this.isRecurring = false;
        this.version = SpaySdk.getVersionName();
        this.merchantId = null;
        this.merchantName = null;
        this.orderNumber = null;
        this.paymentProtocol = null;
        this.addressInPaymentSheet = AddressInPaymentSheet.DO_NOT_SHOW;
        this.allowedCardBrand = null;
        this.cardInfo = null;
        this.isCardHolderNameRequired = false;
        this.isRecurring = false;
        this.merchantCountryCode = null;
        this.customSheet = null;
        this.extraPaymentInfo = null;
    }

    public CustomSheetPaymentInfo(Parcel parcel) {
        this.addressInPaymentSheet = AddressInPaymentSheet.DO_NOT_SHOW;
        this.isCardHolderNameRequired = false;
        this.isRecurring = false;
        readFromParcel(parcel);
    }

    public void readFromParcel(Parcel parcel) {
        this.version = (String) parcel.readValue(String.class.getClassLoader());
        this.merchantId = (String) parcel.readValue(String.class.getClassLoader());
        this.merchantName = (String) parcel.readValue(String.class.getClassLoader());
        this.orderNumber = (String) parcel.readValue(String.class.getClassLoader());
        this.paymentProtocol = (PaymentProtocol) parcel.readValue(PaymentProtocol.class.getClassLoader());
        this.addressInPaymentSheet = (AddressInPaymentSheet) parcel.readValue(AddressInPaymentSheet.class.getClassLoader());
        this.allowedCardBrand = new ArrayList();
        parcel.readTypedList(this.allowedCardBrand, Brand.CREATOR);
        this.cardInfo = (CardInfo) parcel.readValue(CardInfo.class.getClassLoader());
        this.isCardHolderNameRequired = ((Boolean) parcel.readValue(Boolean.class.getClassLoader())).booleanValue();
        this.isRecurring = ((Boolean) parcel.readValue(Boolean.class.getClassLoader())).booleanValue();
        this.merchantCountryCode = (String) parcel.readValue(String.class.getClassLoader());
        this.customSheet = (CustomSheet) parcel.readParcelable(CustomSheet.class.getClassLoader());
        this.extraPaymentInfo = parcel.readBundle();
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

    public CardInfo getCardInfo() {
        return this.cardInfo;
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

    public CustomSheet getCustomSheet() {
        return this.customSheet;
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
        if (this.customSheet != null) {
            for (SheetControl sheetControl : this.customSheet.getSheetControls()) {
                if (sheetControl.getControltype() == Controltype.AMOUNTBOX) {
                    return ((AmountBoxControl) sheetControl).getCurrencyCode();
                }
            }
        }
        return "";
    }

    public Address getPaymentShippingAddress() {
        if (this.customSheet != null) {
            for (SheetControl sheetControl : this.customSheet.getSheetControls()) {
                if (sheetControl.getControltype() == Controltype.ADDRESS) {
                    AddressControl addressControl = (AddressControl) sheetControl;
                    if (addressControl.getAddressType() == SheetItemType.SHIPPING_ADDRESS) {
                        return addressControl.getAddress();
                    }
                }
            }
        }
        return new Address(new Builder());
    }

    public String getPaymentShippingMethod() {
        nullCheckExtraPaymentInfo();
        return this.extraPaymentInfo.getString("shippingMethod", "");
    }

    private void nullCheckExtraPaymentInfo() {
        if (this.extraPaymentInfo == null) {
            this.extraPaymentInfo = new Bundle();
        }
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeValue(this.version);
        parcel.writeValue(this.merchantId);
        parcel.writeValue(this.merchantName);
        parcel.writeValue(this.orderNumber);
        parcel.writeValue(this.paymentProtocol);
        parcel.writeValue(this.addressInPaymentSheet);
        parcel.writeTypedList(this.allowedCardBrand);
        parcel.writeValue(this.cardInfo);
        parcel.writeValue(Boolean.valueOf(this.isCardHolderNameRequired));
        parcel.writeValue(Boolean.valueOf(this.isRecurring));
        parcel.writeValue(this.merchantCountryCode);
        parcel.writeParcelable(this.customSheet, i);
        parcel.writeBundle(this.extraPaymentInfo);
    }
}
