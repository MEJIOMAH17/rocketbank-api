package ru.rocketbank.r2d2.root.chat.incoming;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.message.StickerAttachment;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: IncomingSticker.kt */
public final class IncomingSticker extends IncomingViewHolder {
    private final ImageView stickerView;

    public IncomingSticker(Context context, View view) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(view, "itemView");
        super(context, view);
        context = view.findViewById(C0859R.id.sticker);
        if (context == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.ImageView");
        }
        this.stickerView = (ImageView) context;
    }

    public final void clear() {
        super.clear();
        Glide.clear(this.stickerView);
        this.stickerView.setImageDrawable(null);
    }

    public final void bind(StickerAttachment stickerAttachment) {
        clear();
        if (stickerAttachment != null) {
            stickerAttachment = stickerAttachment.getSticker();
            if (stickerAttachment != null) {
                load(stickerAttachment.getUrl());
            }
        }
    }

    public final void load(String str) {
        if (str != null) {
            Glide.with(getContext()).load(str).error(new ColorDrawable(-65536)).fitCenter().crossFade().into(new IncomingSticker$load$1(this, this.stickerView));
        }
    }
}
