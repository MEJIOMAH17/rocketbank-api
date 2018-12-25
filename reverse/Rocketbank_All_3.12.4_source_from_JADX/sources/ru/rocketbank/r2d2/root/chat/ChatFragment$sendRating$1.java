package ru.rocketbank.r2d2.root.chat;

import android.widget.Toast;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.dto.ResponseData;
import ru.rocketbank.r2d2.C0859R;
import rx.Subscriber;

/* compiled from: ChatFragment.kt */
public final class ChatFragment$sendRating$1 extends Subscriber<ResponseData> {
    final /* synthetic */ ChatFragment this$0;

    public final void onCompleted() {
    }

    ChatFragment$sendRating$1(ChatFragment chatFragment) {
        this.this$0 = chatFragment;
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        this.this$0.hideProgress();
        Toast.makeText(this.this$0.getContext(), C0859R.string.not_able_to_send_rating, 1).show();
    }

    public final void onNext(ResponseData responseData) {
        Intrinsics.checkParameterIsNotNull(responseData, "responseData");
        this.this$0.hideProgress();
        responseData = this.this$0.getMessageManager();
        if (responseData != null) {
            responseData.refresh();
        }
    }
}
