package ru.rocketbank.core.widgets;

import android.util.Log;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.dto.BinResponseData;
import rx.Subscriber;

/* compiled from: CreditCardView.kt */
public final class CreditCardView$binReady$1 extends Subscriber<BinResponseData> {
    final /* synthetic */ CreditCardView this$0;

    public final void onCompleted() {
    }

    CreditCardView$binReady$1(CreditCardView creditCardView) {
        this.this$0 = creditCardView;
    }

    public final /* bridge */ /* synthetic */ void onNext(Object obj) {
        BinResponseData binResponseData = (BinResponseData) obj;
        Intrinsics.checkParameterIsNotNull(binResponseData, "responseData");
        String cardImageUrl = binResponseData.getCardImageUrl();
        String color = binResponseData.getColor();
        String logoImageUrl = binResponseData.getLogoImageUrl();
        String str = binResponseData.iconUrl;
        if (str != null && !this.this$0.ignorePanImage) {
            this.this$0.setBackground(null, str);
        } else if (!this.this$0.ignorePanImage) {
            this.this$0.setBackground(color, cardImageUrl);
            this.this$0.logoUrl = logoImageUrl;
            if (logoImageUrl != null) {
                if ((((CharSequence) logoImageUrl).length() == 0 ? 1 : 0) == 0) {
                    Glide.with(this.this$0.getContext()).load(logoImageUrl).diskCacheStrategy(DiskCacheStrategy.ALL).into(CreditCardView.access$getLogo$p(this.this$0));
                }
            }
        }
        if (this.this$0.isRefillMode) {
            this.this$0.isCardWorks = binResponseData.isRefillWorks();
            if (binResponseData.isRefillWorks()) {
                CreditCardView.access$getErrorMessage$p(this.this$0).setVisibility(8);
                return;
            }
            CreditCardView.access$getErrorMessage$p(this.this$0).setVisibility(0);
            CreditCardView.access$getErrorMessage$p(this.this$0).setText(binResponseData.getRefillAdvice());
            return;
        }
        if (this.this$0.isTransferMode) {
            this.this$0.isCardWorks = binResponseData.isTransferWorks();
            if (binResponseData.isRefillWorks()) {
                CreditCardView.access$getErrorMessage$p(this.this$0).setVisibility(8);
            } else {
                CreditCardView.access$getErrorMessage$p(this.this$0).setVisibility(0);
                CreditCardView.access$getErrorMessage$p(this.this$0).setText(binResponseData.getTransferAdvice());
            }
        }
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        th = CreditCardView.Companion;
        Log.e(CreditCardView.TAG, "Bin reqest has failed");
    }
}
