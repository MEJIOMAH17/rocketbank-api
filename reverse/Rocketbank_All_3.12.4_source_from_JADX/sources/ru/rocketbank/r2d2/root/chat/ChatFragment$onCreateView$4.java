package ru.rocketbank.r2d2.root.chat;

import android.widget.RatingBar;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.model.Rating;

/* compiled from: ChatFragment.kt */
public final class ChatFragment$onCreateView$4 implements OnRatingChangeListener {
    final /* synthetic */ ChatFragment this$0;

    ChatFragment$onCreateView$4(ChatFragment chatFragment) {
        this.this$0 = chatFragment;
    }

    public final void onRatingChanged(RatingBar ratingBar, float f, boolean z, Rating rating) {
        Intrinsics.checkParameterIsNotNull(ratingBar, "ratingBar");
        Intrinsics.checkParameterIsNotNull(rating, "ratingSource");
        if (z) {
            ratingBar = this.this$0;
            z = rating.getPermalink();
            if (!z) {
                Intrinsics.throwNpe();
            }
            ratingBar.sendRating(z, (int) f);
        }
    }
}
