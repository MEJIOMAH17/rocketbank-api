package ru.rocketbank.core.pay.samsung;

import android.content.Context;
import android.os.Bundle;
import com.samsung.android.sdk.samsungpay.v2.PartnerInfo;
import com.samsung.android.sdk.samsungpay.v2.SamsungPay;
import com.samsung.android.sdk.samsungpay.v2.SpaySdk.ServiceType;
import com.samsung.android.sdk.samsungpay.v2.card.AddCardInfo;
import com.samsung.android.sdk.samsungpay.v2.card.Card;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.C0859R;
import rx.Completable;
import rx.Observable;

/* compiled from: RxSPay.kt */
public final class RxSPay {
    public static final Companion Companion = new Companion();
    private final String cardType = Card.CARD_TYPE_DEBIT;
    private final Context context;
    private final String issuerName = this.context.getString(C0859R.string.issuer_name);
    private final PartnerInfo partnerInfo;
    private final SamsungPay samsungPay;
    private final String serviceId = this.context.getString(C0859R.string.spay_service_id);
    private final String tsp = AddCardInfo.PROVIDER_MASTERCARD;

    /* compiled from: RxSPay.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    /* compiled from: RxSPay.kt */
    public enum Status {
    }

    public RxSPay(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.context = context;
        context = new Bundle();
        context.putString("PartnerServiceType", ServiceType.APP2APP.toString());
        this.partnerInfo = new PartnerInfo(this.serviceId, context);
        this.samsungPay = new SamsungPay(this.context, this.partnerInfo);
    }

    public final Observable<AddCardResult> addCard(String str) {
        Intrinsics.checkParameterIsNotNull(str, "payload");
        str = Observable.create(new RxSPay$addCard$1(this, str)).timeout(60, TimeUnit.SECONDS);
        Intrinsics.checkExpressionValueIsNotNull(str, "Observable.create<AddCar…out(60, TimeUnit.SECONDS)");
        return str;
    }

    public final Completable updateApp() {
        Completable create = Completable.create(new RxSPay$updateApp$1(this));
        Intrinsics.checkExpressionValueIsNotNull(create, "Completable.create {\n   …   it.onCompleted()\n    }");
        return create;
    }

    public final Completable activateApp() {
        Completable create = Completable.create(new RxSPay$activateApp$1(this));
        Intrinsics.checkExpressionValueIsNotNull(create, "Completable.create {\n   …   it.onCompleted()\n    }");
        return create;
    }

    public final Observable<Status> checkCard(String str) {
        Intrinsics.checkParameterIsNotNull(str, "maskedPan");
        Observable create = Observable.create(new RxSPay$getSPayStatus$1(this));
        Intrinsics.checkExpressionValueIsNotNull(create, "Observable.create { subs…      }\n\n        })\n    }");
        str = create.flatMap(new RxSPay$checkCard$1(this, str)).timeout(60, TimeUnit.SECONDS);
        Intrinsics.checkExpressionValueIsNotNull(str, "getSPayStatus().flatMap …out(60, TimeUnit.SECONDS)");
        return str;
    }

    public static final /* synthetic */ Observable access$getCards(RxSPay rxSPay) {
        rxSPay = Observable.create(new RxSPay$getCards$1(rxSPay));
        Intrinsics.checkExpressionValueIsNotNull(rxSPay, "Observable.create { subs…      }\n\n        })\n    }");
        return rxSPay;
    }
}
