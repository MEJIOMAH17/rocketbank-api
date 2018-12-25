package ru.rocketbank.core.pay.samsung;

import android.os.Bundle;
import android.util.Base64;
import android.util.Log;
import com.samsung.android.sdk.samsungpay.v2.card.AddCardInfo;
import com.samsung.android.sdk.samsungpay.v2.card.AddCardListener;
import com.samsung.android.sdk.samsungpay.v2.card.Card;
import com.samsung.android.sdk.samsungpay.v2.card.CardManager;
import java.nio.charset.Charset;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import rx.Observable.OnSubscribe;
import rx.Subscriber;

/* compiled from: RxSPay.kt */
final class RxSPay$addCard$1<T> implements OnSubscribe<T> {
    final /* synthetic */ String $payload;
    final /* synthetic */ RxSPay this$0;

    RxSPay$addCard$1(RxSPay rxSPay, String str) {
        this.this$0 = rxSPay;
        this.$payload = str;
    }

    public final /* bridge */ /* synthetic */ void call(Object obj) {
        final Subscriber subscriber = (Subscriber) obj;
        String str = this.$payload;
        Charset charset = Charsets.UTF_8;
        if (str == null) {
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        }
        Object bytes = str.getBytes(charset);
        Intrinsics.checkExpressionValueIsNotNull(bytes, "(this as java.lang.String).getBytes(charset)");
        bytes = Base64.encode(bytes, 2);
        Intrinsics.checkExpressionValueIsNotNull(bytes, "base64Bytes");
        String str2 = new String(bytes, Charsets.UTF_8);
        Bundle bundle = new Bundle();
        bundle.putString(AddCardInfo.EXTRA_PROVISION_PAYLOAD, str2);
        new CardManager(this.this$0.context, this.this$0.partnerInfo).addCard(new AddCardInfo(this.this$0.cardType, this.this$0.tsp, bundle), new AddCardListener() {
            public final void onSuccess(int i, Card card) {
                Intrinsics.checkParameterIsNotNull(card, "card");
                subscriber.onNext(new AddCardResult(i, card));
                subscriber.onCompleted();
            }

            public final void onFail(int i, Bundle bundle) {
                StringBuilder stringBuilder = new StringBuilder("spay error ");
                SPayErrorCode sPayErrorCode = SPayErrorCode.INSTANCE;
                stringBuilder.append(SPayErrorCode.getErrorCodeName(i));
                Log.e("RxSPay", stringBuilder.toString());
                subscriber.onError(new SamsungPayException(i, bundle));
            }
        });
    }
}
