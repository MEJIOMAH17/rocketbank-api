package ru.rocketbank.core.pay.google;

import android.app.Activity;
import android.util.Base64;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.identity.intents.model.UserAddress;
import com.google.android.gms.tapandpay.issuer.PushTokenizeRequest.Builder;
import java.nio.charset.Charset;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import rx.Observable;
import rx.Observable.OnSubscribe;
import rx.Subscriber;
import rx.functions.Func1;

/* compiled from: UiTapAndPay.kt */
final class UiTapAndPay$addCard$1<T, R> implements Func1<T, Observable<? extends R>> {
    final /* synthetic */ Activity $activity;
    final /* synthetic */ String $address;
    final /* synthetic */ String $cardText;
    final /* synthetic */ String $lastDigits;
    final /* synthetic */ String $opc;
    final /* synthetic */ String $phone;
    final /* synthetic */ String $postalCode;
    final /* synthetic */ int $requestCode = 10239;
    final /* synthetic */ UiTapAndPay this$0;

    UiTapAndPay$addCard$1(UiTapAndPay uiTapAndPay, String str, String str2, String str3, String str4, String str5, String str6, Activity activity) {
        this.this$0 = uiTapAndPay;
        this.$address = str;
        this.$phone = str2;
        this.$postalCode = str3;
        this.$opc = str4;
        this.$lastDigits = str5;
        this.$cardText = str6;
        this.$activity = activity;
    }

    public final /* bridge */ /* synthetic */ Object call(Object obj) {
        final GoogleApiClient googleApiClient = (GoogleApiClient) obj;
        return Observable.create(new OnSubscribe<T>() {
            public final /* bridge */ /* synthetic */ void call(Object obj) {
                Subscriber subscriber = (Subscriber) obj;
                try {
                    UserAddress build = UserAddress.newBuilder().setAddress1(this.$address).setPhoneNumber(this.$phone).setPostalCode(this.$postalCode).build();
                    String str = this.$opc;
                    Charset charset = Charsets.UTF_8;
                    if (str == null) {
                        throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                    }
                    Object bytes = str.getBytes(charset);
                    Intrinsics.checkExpressionValueIsNotNull(bytes, "(this as java.lang.String).getBytes(charset)");
                    this.this$0.getTapAndPay().pushTokenize(googleApiClient, this.$activity, new Builder().setOpaquePaymentCard(Base64.encode(bytes, 2)).setTokenServiceProvider(3).setNetwork(3).setUserAddress(build).setLastDigits(this.$lastDigits).setDisplayName(this.$cardText).build(), 10239);
                    subscriber.onNext(Unit.INSTANCE);
                    subscriber.onCompleted();
                } catch (Throwable th) {
                    subscriber.onError(th);
                }
            }
        });
    }
}
