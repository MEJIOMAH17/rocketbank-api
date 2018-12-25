package ru.rocketbank.r2d2.root.chat.outgoing;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.resource.drawable.GlideDrawable;
import com.bumptech.glide.request.animation.GlideAnimation;
import com.bumptech.glide.request.target.GlideDrawableImageViewTarget;
import com.jakewharton.rxbinding.view.RxView;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.message.MessageIn;
import ru.rocketbank.core.model.message.StickerAttachment;
import ru.rocketbank.core.widgets.RocketHeartBeatlLoader;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import rx.functions.Action1;

/* compiled from: OutgoingSticker.kt */
public final class OutgoingSticker extends OutgoingViewHolder {
    private MessageIn chatMessage;
    private final RocketHeartBeatlLoader heatBeatLoader;
    private final RocketTextView retryView;
    private final ImageView stickerView;
    private final GlideDrawableImageViewTarget target;

    public OutgoingSticker(Context context, View view, final RetryMessageListener retryMessageListener) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(view, "itemView");
        Intrinsics.checkParameterIsNotNull(retryMessageListener, "retryMessageListener");
        super(context, view, retryMessageListener);
        context = view.findViewById(C0859R.id.sticker);
        if (context == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.ImageView");
        }
        this.stickerView = (ImageView) context;
        context = view.findViewById(C0859R.id.loader);
        if (context == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketHeartBeatlLoader");
        }
        this.heatBeatLoader = (RocketHeartBeatlLoader) context;
        context = view.findViewById(C0859R.id.retry);
        if (context == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.retryView = (RocketTextView) context;
        RxView.clicks((View) this.retryView).subscribe((Action1) new Action1<Void>() {
            public final void call(Void voidR) {
                this.getRetryView().setVisibility(8);
                voidR = retryMessageListener;
                MessageIn chatMessage = this.getChatMessage();
                if (chatMessage == null) {
                    Intrinsics.throwNpe();
                }
                voidR.retry(chatMessage);
            }
        });
        this.target = (GlideDrawableImageViewTarget) new GlideDrawableImageViewTarget(this.stickerView) {
            public final void onResourceReady(GlideDrawable glideDrawable, GlideAnimation<? super GlideDrawable> glideAnimation) {
                super.onResourceReady(glideDrawable, glideAnimation);
                this.getStickerView().invalidate();
                this.getStickerView().setVisibility(null);
                this.getHeatBeatLoader().setVisibility(8);
            }

            public final void onLoadFailed(Exception exception, Drawable drawable) {
                super.onLoadFailed(exception, drawable);
                this.getRetryView().setVisibility(null);
            }
        };
    }

    public final ImageView getStickerView() {
        return this.stickerView;
    }

    public final MessageIn getChatMessage() {
        return this.chatMessage;
    }

    public final void setChatMessage(MessageIn messageIn) {
        this.chatMessage = messageIn;
    }

    public final RocketHeartBeatlLoader getHeatBeatLoader() {
        return this.heatBeatLoader;
    }

    public final RocketTextView getRetryView() {
        return this.retryView;
    }

    public final GlideDrawableImageViewTarget getTarget() {
        return this.target;
    }

    public final void clear() {
        super.clear();
        Glide.clear(this.stickerView);
        this.stickerView.setImageDrawable(null);
    }

    public final void bind(MessageIn messageIn) {
        Intrinsics.checkParameterIsNotNull(messageIn, "chatMessage");
        this.chatMessage = messageIn;
        String str = null;
        this.stickerView.setImageDrawable(null);
        int i = 0;
        this.heatBeatLoader.setVisibility(0);
        this.stickerView.setVisibility(8);
        if (messageIn.isFailed()) {
            this.retryView.setVisibility(0);
        } else {
            this.retryView.setVisibility(8);
        }
        StickerAttachment stickerAttachment = (StickerAttachment) messageIn.getAttachment();
        if (stickerAttachment != null) {
            messageIn = stickerAttachment.getSticker();
            if (messageIn != null) {
                str = messageIn.getUrl();
            }
            if (str != null) {
                if (str.length() > null) {
                    i = 1;
                }
                if (i != 0) {
                    Glide.with(getContext()).load(str).fitCenter().into(this.target);
                }
            }
        }
    }
}
