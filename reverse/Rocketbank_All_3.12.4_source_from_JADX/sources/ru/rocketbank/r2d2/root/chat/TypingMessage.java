package ru.rocketbank.r2d2.root.chat;

import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.Transformation;
import jp.wasabeef.glide.transformations.CropCircleTransformation;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.widgets.RocketAutofitTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.root.chat.sync.notification.NotificationUserInfo;

/* compiled from: TypingMessage.kt */
public final class TypingMessage extends MessageViewHolder {
    private final ImageView animation;
    private final CropCircleTransformation cropCircleTransformation;
    private final ImageView iconView;
    private final RocketAutofitTextView whoView;

    public final CropCircleTransformation getCropCircleTransformation() {
        return this.cropCircleTransformation;
    }

    public TypingMessage(CropCircleTransformation cropCircleTransformation, View view) {
        Intrinsics.checkParameterIsNotNull(cropCircleTransformation, "cropCircleTransformation");
        Intrinsics.checkParameterIsNotNull(view, "itemView");
        Context context = view.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "itemView.context");
        super(context, view);
        this.cropCircleTransformation = cropCircleTransformation;
        cropCircleTransformation = view.findViewById(C0859R.id.animation);
        if (cropCircleTransformation == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.ImageView");
        }
        this.animation = (ImageView) cropCircleTransformation;
        cropCircleTransformation = view.findViewById(C0859R.id.icon);
        if (cropCircleTransformation == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.ImageView");
        }
        this.iconView = (ImageView) cropCircleTransformation;
        cropCircleTransformation = view.findViewById(C0859R.id.who);
        if (cropCircleTransformation == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketAutofitTextView");
        }
        this.whoView = (RocketAutofitTextView) cropCircleTransformation;
    }

    public final void binding(NotificationUserInfo notificationUserInfo) {
        Intrinsics.checkParameterIsNotNull(notificationUserInfo, "userInfo");
        Drawable drawable = this.animation.getDrawable();
        if (drawable == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.graphics.drawable.AnimationDrawable");
        }
        ((AnimationDrawable) drawable).start();
        setWho(notificationUserInfo.getName());
        setIcon(notificationUserInfo.getAvatar());
    }

    public final void setWho(String str) {
        if (str == null) {
            this.whoView.setVisibility(4);
            return;
        }
        this.whoView.setVisibility(0);
        this.whoView.setText(str);
    }

    public final void setIcon(String str) {
        if (str == null) {
            this.iconView.setVisibility(8);
            Glide.clear((View) this.iconView);
            return;
        }
        this.iconView.setVisibility(0);
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(C0859R.dimen.dimen_icon_size);
        Glide.with(getContext()).load(str).override(dimensionPixelSize, dimensionPixelSize).centerCrop().bitmapTransform(new Transformation[]{this.cropCircleTransformation}).into(this.iconView);
    }
}
