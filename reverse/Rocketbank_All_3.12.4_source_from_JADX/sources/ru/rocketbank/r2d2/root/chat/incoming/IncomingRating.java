package ru.rocketbank.r2d2.root.chat.incoming;

import android.content.Context;
import android.support.v4.app.FragmentManager;
import android.view.View;
import android.widget.RatingBar;
import android.widget.RatingBar.OnRatingBarChangeListener;
import com.jakewharton.rxbinding.view.RxView;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.model.Rating;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.root.chat.MessageManager;
import ru.rocketbank.r2d2.root.chat.OnRatingChangeListener;
import ru.rocketbank.r2d2.root.chat.RatingDialogFragment;
import ru.rocketbank.r2d2.root.chat.RatingDialogFragment.RefreshListener;
import rx.functions.Action1;

/* compiled from: IncomingRating.kt */
public final class IncomingRating extends IncomingViewHolder implements RefreshListener {
    private final RocketTextView commentView;
    private final MessageManager messageManager;
    private OnRatingChangeListener onRatingChangeListener;
    private Rating rating;
    private final RatingBar ratingView;
    private final RocketTextView textView;

    public IncomingRating(Context context, View view, final FragmentManager fragmentManager, MessageManager messageManager) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(view, "itemView");
        Intrinsics.checkParameterIsNotNull(fragmentManager, "fragmentManager");
        super(context, view);
        this.messageManager = messageManager;
        context = view.findViewById(C0859R.id.rating);
        if (context == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.RatingBar");
        }
        this.ratingView = (RatingBar) context;
        context = view.findViewById(C0859R.id.text);
        if (context == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.textView = (RocketTextView) context;
        context = view.findViewById(C0859R.id.comment);
        if (context == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.commentView = (RocketTextView) context;
        RxView.clicks((View) this.commentView).subscribe((Action1) new Action1<Void>() {
            public final void call(Void voidR) {
                voidR = this.rating;
                if (voidR != null) {
                    voidR = RatingDialogFragment.Companion.getInstance(voidR);
                    voidR.setRefreshListener(this);
                    voidR.show(fragmentManager, null);
                }
            }
        });
        this.ratingView.setOnRatingBarChangeListener((OnRatingBarChangeListener) new OnRatingBarChangeListener() {
            public final void onRatingChanged(RatingBar ratingBar, float f, boolean z) {
                OnRatingChangeListener access$getOnRatingChangeListener$p = this.onRatingChangeListener;
                if (access$getOnRatingChangeListener$p != null) {
                    Rating access$getRating$p = this.rating;
                    if (access$getRating$p == null) {
                        Intrinsics.throwNpe();
                    }
                    access$getRating$p.setRate(f);
                    Intrinsics.checkExpressionValueIsNotNull(ratingBar, "ratingBar");
                    access$getRating$p = this.rating;
                    if (access$getRating$p == null) {
                        Intrinsics.throwNpe();
                    }
                    access$getOnRatingChangeListener$p.onRatingChanged(ratingBar, f, z, access$getRating$p);
                }
            }
        });
    }

    public final void bind(Rating rating, OnRatingChangeListener onRatingChangeListener) {
        Intrinsics.checkParameterIsNotNull(onRatingChangeListener, "changeListener");
        if (rating != null) {
            this.textView.setText(rating.getText());
            this.ratingView.setRating(rating.getRate());
            this.rating = rating;
            this.onRatingChangeListener = onRatingChangeListener;
        }
    }

    public final void refresh(int i, String str) {
        Intrinsics.checkParameterIsNotNull(str, "comment");
        i = (float) i;
        this.ratingView.setRating(i);
        Rating rating = this.rating;
        if (rating == null) {
            Intrinsics.throwNpe();
        }
        rating.setRate(i);
        i = this.rating;
        if (i == 0) {
            Intrinsics.throwNpe();
        }
        i.setComment(str);
        i = this.messageManager;
        if (i != 0) {
            i.refresh();
        }
    }
}
