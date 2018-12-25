package ru.rocketbank.r2d2.root.chat;

import com.bumptech.glide.Glide;
import com.bumptech.glide.load.Transformation;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.model.AgentResponse;
import ru.rocketbank.r2d2.C0859R;
import rx.Subscriber;

/* compiled from: RatingDialogFragment.kt */
public final class RatingDialogFragment$onViewCreated$3 extends Subscriber<AgentResponse> {
    final /* synthetic */ RatingDialogFragment this$0;

    public final void onCompleted() {
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
    }

    RatingDialogFragment$onViewCreated$3(RatingDialogFragment ratingDialogFragment) {
        this.this$0 = ratingDialogFragment;
    }

    public final void onNext(AgentResponse agentResponse) {
        Intrinsics.checkParameterIsNotNull(agentResponse, "agentResponse");
        int dimensionPixelSize = this.this$0.getResources().getDimensionPixelSize(C0859R.dimen.dialog_avatar_size);
        agentResponse = agentResponse.getAgent();
        if (agentResponse == null) {
            Intrinsics.throwNpe();
        }
        agentResponse = agentResponse.getAvatarUrl();
        if (agentResponse != null) {
            Glide.with(this.this$0).load(agentResponse).override(dimensionPixelSize, dimensionPixelSize).centerCrop().crossFade().bitmapTransform(new Transformation[]{RatingDialogFragment.access$getCropCircleTransformation$p(this.this$0)}).into(RatingDialogFragment.access$getImageView$p(this.this$0));
        }
    }
}
