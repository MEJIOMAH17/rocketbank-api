package ru.rocketbank.core.manager.security;

import android.util.Log;
import com.facebook.share.internal.ShareConstants;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.security.TouchManagerImpl.Companion;
import ru.rocketbank.core.model.TouchResponse;
import ru.rocketbank.core.model.dto.GenericRequestResponseData;
import ru.rocketbank.core.model.dto.ResponseData;
import ru.rocketbank.core.network.exception.RocketResponseException;
import ru.rocketbank.r2d2.C0859R;
import rx.Subscriber;

/* compiled from: TouchManagerImpl.kt */
public final class TouchManagerImpl$makeTouchRequest$1 extends Subscriber<TouchResponse> {
    final /* synthetic */ TouchManagerImpl this$0;

    public final void onCompleted() {
    }

    TouchManagerImpl$makeTouchRequest$1(TouchManagerImpl touchManagerImpl) {
        this.this$0 = touchManagerImpl;
    }

    public final /* bridge */ /* synthetic */ void onNext(Object obj) {
        TouchResponse touchResponse = (TouchResponse) obj;
        Intrinsics.checkParameterIsNotNull(touchResponse, "response");
        this.this$0.touchIdInProgress.set(false);
        TouchManagerImpl touchManagerImpl = this.this$0;
        String str = touchResponse.device.touch_id_token;
        Intrinsics.checkExpressionValueIsNotNull(str, "response.device.touch_id_token");
        touchManagerImpl.setToken(str);
        RocketFingerPrintListener rocketFingerPrintListener = (RocketFingerPrintListener) this.this$0.touchListener.get();
        if (rocketFingerPrintListener != null) {
            rocketFingerPrintListener.onAuthenticationSucceeded(touchResponse.device.touch_id_token);
        }
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        Companion companion = TouchManagerImpl.Companion;
        Log.e(TouchManagerImpl.TAG, "Touch error", th);
        this.this$0.touchIdInProgress.set(false);
        RocketFingerPrintListener rocketFingerPrintListener = (RocketFingerPrintListener) this.this$0.touchListener.get();
        if (rocketFingerPrintListener != null) {
            if (th instanceof RocketResponseException) {
                RocketResponseException rocketResponseException = (RocketResponseException) th;
                GenericRequestResponseData genericRequestResponseData = rocketResponseException.getGenericRequestResponseData();
                if (genericRequestResponseData != null) {
                    ResponseData response = genericRequestResponseData.getResponse();
                    if (response != null && response.getShowIt()) {
                        th = rocketResponseException.getDescription();
                        if (th == null) {
                            th = this.this$0.getContext().getString(C0859R.string.error_occur);
                        }
                    }
                }
                th = this.this$0.getContext().getString(C0859R.string.error_occur);
            } else {
                th = "Ошибка сети";
            }
            Intrinsics.checkExpressionValueIsNotNull(th, ShareConstants.WEB_DIALOG_PARAM_MESSAGE);
            rocketFingerPrintListener.onAuthenticationError(4012, th);
        }
    }
}
