package ru.rocketbank.core.pay.google;

import android.app.Activity;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.tapandpay.TapAndPay;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import rx.Observable;

/* compiled from: UiTapAndPay.kt */
public final class UiTapAndPay extends BaseTapAndPay {
    public static final Companion Companion = new Companion();

    /* compiled from: UiTapAndPay.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public UiTapAndPay(GoogleApiClient googleApiClient, TapAndPay tapAndPay) {
        Intrinsics.checkParameterIsNotNull(googleApiClient, "googleApiClient");
        Intrinsics.checkParameterIsNotNull(tapAndPay, "tapAndPay");
        super(googleApiClient, tapAndPay);
    }

    public final Observable<Unit> createWallet$d556c41(Activity activity) {
        Intrinsics.checkParameterIsNotNull(activity, "activity");
        activity = connectObservable().flatMap(new UiTapAndPay$createWallet$1(this, activity));
        Intrinsics.checkExpressionValueIsNotNull(activity, "connectObservable().flat…}\n            }\n        }");
        return activity;
    }

    public final Observable<Unit> addCard$56205205(Activity activity, String str, String str2, String str3, String str4, String str5, String str6) {
        Activity activity2 = activity;
        Intrinsics.checkParameterIsNotNull(activity2, "activity");
        String str7 = str;
        Intrinsics.checkParameterIsNotNull(str7, "cardText");
        String str8 = str2;
        Intrinsics.checkParameterIsNotNull(str8, "opc");
        String str9 = str3;
        Intrinsics.checkParameterIsNotNull(str9, "lastDigits");
        String str10 = str4;
        Intrinsics.checkParameterIsNotNull(str10, "phone");
        String str11 = str5;
        Intrinsics.checkParameterIsNotNull(str11, "address");
        String str12 = str6;
        Intrinsics.checkParameterIsNotNull(str12, "postalCode");
        Observable<Unit> flatMap = connectObservable().flatMap(new UiTapAndPay$addCard$1(this, str11, str10, str12, str8, str9, str7, activity2));
        Intrinsics.checkExpressionValueIsNotNull(flatMap, "connectObservable().flat…}\n            }\n        }");
        return flatMap;
    }

    public final Observable<Unit> deleteCard$2e873f09(Activity activity, String str) {
        Intrinsics.checkParameterIsNotNull(activity, "activity");
        Intrinsics.checkParameterIsNotNull(str, "token");
        activity = connectObservable().flatMap(new UiTapAndPay$deleteCard$1(this, activity, str));
        Intrinsics.checkExpressionValueIsNotNull(activity, "connectObservable().flat…}\n            }\n        }");
        return activity;
    }

    public final Observable<Unit> selectDefault$2e873f09(Activity activity, String str) {
        Intrinsics.checkParameterIsNotNull(activity, "activity");
        Intrinsics.checkParameterIsNotNull(str, "token");
        activity = connectObservable().flatMap(new UiTapAndPay$selectDefault$1(this, activity, str));
        Intrinsics.checkExpressionValueIsNotNull(activity, "connectObservable().flat…}\n            }\n        }");
        return activity;
    }
}
