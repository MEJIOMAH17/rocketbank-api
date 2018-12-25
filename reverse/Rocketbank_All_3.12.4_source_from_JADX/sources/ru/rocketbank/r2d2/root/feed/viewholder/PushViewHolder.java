package ru.rocketbank.r2d2.root.feed.viewholder;

import android.app.Activity;
import android.content.Context;
import android.support.v7.widget.CardView;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.Transformation;
import com.facebook.share.internal.ShareConstants;
import jp.wasabeef.glide.transformations.CropCircleTransformation;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import ru.rocketbank.core.model.provider.ProviderField;
import ru.rocketbank.core.network.model.FeedItem;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.databinding.FeedItemPushBinding;
import ru.rocketbank.r2d2.root.feed.Actions;
import ru.rocketbank.r2d2.root.feed.FeedAdapter;
import ru.rocketbank.r2d2.widgets.swipe.SwipeDismissTouchListener;

/* compiled from: PushViewHolder.kt */
public class PushViewHolder extends FeedViewHolder implements OnClickListener {
    private final CropCircleTransformation cropCircleTransformation;
    private final FeedAdapter feedAdapter;
    private String mainAction;
    private Runnable onCancelAction;
    private Runnable onOkAction;
    private final FeedItemPushBinding pushBinding;

    protected final FeedItemPushBinding getPushBinding() {
        return this.pushBinding;
    }

    public PushViewHolder(CropCircleTransformation cropCircleTransformation, FeedAdapter feedAdapter, FeedItemPushBinding feedItemPushBinding) {
        Intrinsics.checkParameterIsNotNull(cropCircleTransformation, "cropCircleTransformation");
        Intrinsics.checkParameterIsNotNull(feedAdapter, "feedAdapter");
        Intrinsics.checkParameterIsNotNull(feedItemPushBinding, "pushBinding");
        LinearLayout linearLayout = feedItemPushBinding.root;
        Intrinsics.checkExpressionValueIsNotNull(linearLayout, "pushBinding.root");
        super(linearLayout);
        this.cropCircleTransformation = cropCircleTransformation;
        this.feedAdapter = feedAdapter;
        this.pushBinding = feedItemPushBinding;
        this.pushBinding.mainAction.setOnClickListener(this);
    }

    public final void setFeedItem(FeedItem feedItem) {
        Intrinsics.checkParameterIsNotNull(feedItem, "feedItem");
        this.pushBinding.cardBody.setOnTouchListener(new SwipeDismissTouchListener(this.pushBinding.cardBody, feedItem, this.feedAdapter));
    }

    public final void setText(String str) {
        CardView cardView = this.pushBinding.cardBody;
        Intrinsics.checkExpressionValueIsNotNull(cardView, "pushBinding.cardBody");
        cardView.setVisibility(0);
        if (str != null) {
            RocketTextView rocketTextView = this.pushBinding.body;
            Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "pushBinding.body");
            rocketTextView.setText(StringsKt.replace$default(str, "ђ", "₽", false, 4, null));
            return;
        }
        str = this.pushBinding.body;
        Intrinsics.checkExpressionValueIsNotNull(str, "pushBinding.body");
        str.setText("");
    }

    public final void setTitle(String str) {
        int i;
        CharSequence charSequence = str;
        if (charSequence != null) {
            if (charSequence.length() != 0) {
                i = 0;
                if (i == 0) {
                    str = this.pushBinding.title;
                    Intrinsics.checkExpressionValueIsNotNull(str, "pushBinding.title");
                    str.setVisibility(8);
                }
                RocketTextView rocketTextView = this.pushBinding.title;
                Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "pushBinding.title");
                rocketTextView.setVisibility(0);
                RocketTextView rocketTextView2 = this.pushBinding.title;
                Intrinsics.checkExpressionValueIsNotNull(rocketTextView2, "pushBinding.title");
                rocketTextView2.setText(charSequence);
                return;
            }
        }
        i = 1;
        if (i == 0) {
            RocketTextView rocketTextView3 = this.pushBinding.title;
            Intrinsics.checkExpressionValueIsNotNull(rocketTextView3, "pushBinding.title");
            rocketTextView3.setVisibility(0);
            RocketTextView rocketTextView22 = this.pushBinding.title;
            Intrinsics.checkExpressionValueIsNotNull(rocketTextView22, "pushBinding.title");
            rocketTextView22.setText(charSequence);
            return;
        }
        str = this.pushBinding.title;
        Intrinsics.checkExpressionValueIsNotNull(str, "pushBinding.title");
        str.setVisibility(8);
    }

    public final void setImage(String str) {
        int i;
        CharSequence charSequence = str;
        if (charSequence != null) {
            if (charSequence.length() != 0) {
                i = 0;
                if (i == 0) {
                    str = this.pushBinding.image;
                    Intrinsics.checkExpressionValueIsNotNull(str, "pushBinding.image");
                    str.setVisibility(8);
                    Glide.clear((View) this.pushBinding.image);
                }
                ImageView imageView = this.pushBinding.image;
                Intrinsics.checkExpressionValueIsNotNull(imageView, "pushBinding.image");
                imageView.setVisibility(0);
                View view = this.itemView;
                Intrinsics.checkExpressionValueIsNotNull(view, "itemView");
                i = view.getResources().getDimensionPixelSize(C0859R.dimen.feed_push_image_size);
                View view2 = this.itemView;
                Intrinsics.checkExpressionValueIsNotNull(view2, "itemView");
                Glide.with(view2.getContext()).load(str).override(i, i).centerCrop().crossFade().bitmapTransform(new Transformation[]{this.cropCircleTransformation}).into(this.pushBinding.image);
                return;
            }
        }
        i = 1;
        if (i == 0) {
            ImageView imageView2 = this.pushBinding.image;
            Intrinsics.checkExpressionValueIsNotNull(imageView2, "pushBinding.image");
            imageView2.setVisibility(0);
            View view3 = this.itemView;
            Intrinsics.checkExpressionValueIsNotNull(view3, "itemView");
            i = view3.getResources().getDimensionPixelSize(C0859R.dimen.feed_push_image_size);
            View view22 = this.itemView;
            Intrinsics.checkExpressionValueIsNotNull(view22, "itemView");
            Glide.with(view22.getContext()).load(str).override(i, i).centerCrop().crossFade().bitmapTransform(new Transformation[]{this.cropCircleTransformation}).into(this.pushBinding.image);
            return;
        }
        str = this.pushBinding.image;
        Intrinsics.checkExpressionValueIsNotNull(str, "pushBinding.image");
        str.setVisibility(8);
        Glide.clear((View) this.pushBinding.image);
    }

    public final void setButtons(boolean z) {
        LinearLayout linearLayout = this.pushBinding.buttons;
        Intrinsics.checkExpressionValueIsNotNull(linearLayout, "pushBinding.buttons");
        linearLayout.setVisibility(z ? false : true);
    }

    public final void setMainAction(String str, String str2) {
        Intrinsics.checkParameterIsNotNull(str, ShareConstants.WEB_DIALOG_PARAM_TITLE);
        Intrinsics.checkParameterIsNotNull(str2, "ref");
        RocketTextView rocketTextView = this.pushBinding.mainAction;
        Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "pushBinding.mainAction");
        str = str.toUpperCase();
        Intrinsics.checkExpressionValueIsNotNull(str, "(this as java.lang.String).toUpperCase()");
        rocketTextView.setText(str);
        this.mainAction = str2;
    }

    public void onClick(View view) {
        Intrinsics.checkParameterIsNotNull(view, "v");
        view = view.getId();
        if (view != C0859R.id.additionalAction) {
            if (view == C0859R.id.mainAction) {
                if (this.onOkAction == null) {
                    view = Actions.INSTANCE;
                    View view2 = this.itemView;
                    Intrinsics.checkExpressionValueIsNotNull(view2, "itemView");
                    Context context = view2.getContext();
                    if (context == null) {
                        throw new TypeCastException("null cannot be cast to non-null type android.app.Activity");
                    }
                    Activity activity = (Activity) context;
                    String str = this.mainAction;
                    if (str == null) {
                        Intrinsics.throwNpe();
                    }
                    view.performAction(activity, str);
                    return;
                }
                this.pushBinding.mainAction.post(this.onOkAction);
            }
        } else if (this.onCancelAction != null) {
            this.pushBinding.additionalAction.post(this.onCancelAction);
        }
    }

    public final void setOkOnAction(String str, Runnable runnable) {
        Intrinsics.checkParameterIsNotNull(str, ProviderField.TEXT);
        Intrinsics.checkParameterIsNotNull(runnable, "runnable");
        RocketTextView rocketTextView = this.pushBinding.mainAction;
        Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "pushBinding.mainAction");
        rocketTextView.setText(str);
        this.onOkAction = runnable;
    }

    public final void setCancelAction(String str, Runnable runnable) {
        Intrinsics.checkParameterIsNotNull(str, ProviderField.TEXT);
        Intrinsics.checkParameterIsNotNull(runnable, "runnable");
        this.onCancelAction = runnable;
        runnable = this.pushBinding.additionalAction;
        Intrinsics.checkExpressionValueIsNotNull(runnable, "pushBinding.additionalAction");
        runnable.setText(str);
        this.pushBinding.additionalAction.setOnClickListener(this);
        str = this.pushBinding.additionalAction;
        Intrinsics.checkExpressionValueIsNotNull(str, "pushBinding.additionalAction");
        str.setVisibility(null);
    }
}
