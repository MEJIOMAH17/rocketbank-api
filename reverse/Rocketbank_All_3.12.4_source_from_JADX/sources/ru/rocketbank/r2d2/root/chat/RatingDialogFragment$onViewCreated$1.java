package ru.rocketbank.r2d2.root.chat;

import android.widget.Toast;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.dto.ResponseData;
import ru.rocketbank.core.network.api.AgentsApi;
import ru.rocketbank.core.network.model.Rating;
import ru.rocketbank.r2d2.C0859R;
import rx.Subscriber;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Action1;

/* compiled from: RatingDialogFragment.kt */
final class RatingDialogFragment$onViewCreated$1<T> implements Action1<Void> {
    final /* synthetic */ RatingDialogFragment this$0;

    RatingDialogFragment$onViewCreated$1(RatingDialogFragment ratingDialogFragment) {
        this.this$0 = ratingDialogFragment;
    }

    public final void call(Void voidR) {
        voidR = RatingDialogFragment.access$getCommentView$p(this.this$0).getText().toString();
        if (RatingDialogFragment.access$getRatingBar$p(this.this$0).getNumStars() > 0) {
            this.this$0.showProgressExecution();
            final int numStars = RatingDialogFragment.access$getRatingBar$p(this.this$0).getNumStars();
            RatingDialogFragment ratingDialogFragment = this.this$0;
            AgentsApi agentApi = this.this$0.getAgentApi();
            Rating access$getRating$p = this.this$0.rating;
            if (access$getRating$p == null) {
                Intrinsics.throwNpe();
            }
            ratingDialogFragment.ratingSubscription = agentApi.rate(access$getRating$p.getPermalink(), numStars, voidR).observeOn(AndroidSchedulers.mainThread()).subscribe((Subscriber) new Subscriber<ResponseData>() {
                public final void onCompleted() {
                }

                public final void onError(Throwable th) {
                    Intrinsics.checkParameterIsNotNull(th, "e");
                    this.this$0.hideProgress();
                    Toast.makeText(this.this$0.getContext(), C0859R.string.not_able_to_send_rating, 1).show();
                }

                public final void onNext(ResponseData responseData) {
                    Intrinsics.checkParameterIsNotNull(responseData, "responseData");
                    this.this$0.hideProgress();
                    this.this$0.dismiss();
                    responseData = this.this$0.refreshListener;
                    if (responseData != null) {
                        responseData.refresh(numStars, voidR);
                    }
                }
            });
        }
    }
}
