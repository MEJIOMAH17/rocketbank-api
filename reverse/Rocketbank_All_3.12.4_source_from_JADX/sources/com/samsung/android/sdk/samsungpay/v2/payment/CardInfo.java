package com.samsung.android.sdk.samsungpay.v2.payment;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.facebook.appevents.AppEventsLogger;
import com.samsung.android.sdk.samsungpay.v2.SpaySdk.Brand;
import javax.inject.Provider;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.manager.AppInfoManager;

public class CardInfo implements Parcelable {
    public static final Creator<CardInfo> CREATOR = new C07051();
    private Brand brand;
    private String cardId;
    private Bundle cardMetaData;

    /* renamed from: com.samsung.android.sdk.samsungpay.v2.payment.CardInfo$1 */
    static class C07051 implements Creator<CardInfo> {
        C07051() {
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new CardInfo[i];
        }

        public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new CardInfo(parcel);
        }
    }

    public static class Builder implements Provider<AnalyticsManager> {
        private final Provider<AppInfoManager> appInfoManagerProvider;
        private final Provider<Context> contextProvider;
        private final Provider<AppEventsLogger> fbLoggerProvider;
        private final com.samsung.android.sdk.samsungpay.payment.CardInfo.Builder module$7fc98512;

        public Builder(com.samsung.android.sdk.samsungpay.payment.CardInfo.Builder builder, Provider<Context> provider, Provider<AppInfoManager> provider2, Provider<AppEventsLogger> provider3) {
            this.module$7fc98512 = builder;
            this.contextProvider = provider;
            this.appInfoManagerProvider = provider2;
            this.fbLoggerProvider = provider3;
        }

        public final /* bridge */ /* synthetic */ Object get() {
            Context context = (Context) this.contextProvider.get();
            AppInfoManager appInfoManager = (AppInfoManager) this.appInfoManagerProvider.get();
            AppEventsLogger appEventsLogger = (AppEventsLogger) this.fbLoggerProvider.get();
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(appInfoManager, "appInfoManager");
            Intrinsics.checkParameterIsNotNull(appEventsLogger, "fbLogger");
            return new AnalyticsManager(context, appInfoManager, appEventsLogger);
        }
    }

    public int describeContents() {
        return 0;
    }

    private CardInfo() {
    }

    private CardInfo(Builder builder) {
        this.brand = null;
        this.cardId = null;
        this.cardMetaData = null;
    }

    public CardInfo(Parcel parcel) {
        this.brand = (Brand) parcel.readValue(Brand.class.getClassLoader());
        this.cardId = parcel.readString();
        this.cardMetaData = parcel.readBundle();
    }

    public Brand getBrand() {
        return this.brand;
    }

    public String getCardId() {
        return this.cardId;
    }

    public Bundle getCardMetaData() {
        return this.cardMetaData;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeValue(this.brand);
        parcel.writeString(this.cardId);
        parcel.writeBundle(this.cardMetaData);
    }
}
