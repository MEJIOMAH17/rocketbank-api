package ru.rocketbank.r2d2.root.chat.incoming;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.jakewharton.rxbinding.view.RxView;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.message.DocumentAttachment;
import ru.rocketbank.core.model.message.MessageIn;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.activities.DownloadActivity;
import rx.functions.Action1;

/* compiled from: IncomingDocument.kt */
public final class IncomingDocument extends IncomingViewHolder {
    private MessageIn chatMessage;
    private final ImageView imageView;

    public IncomingDocument(final Context context, View view) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(view, "itemView");
        super(context, view);
        View findViewById = view.findViewById(C0859R.id.image);
        if (findViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.ImageView");
        }
        this.imageView = (ImageView) findViewById;
        RxView.clicks(view).subscribe((Action1) new Action1<Void>() {
            public final void call(Void voidR) {
                voidR = this.chatMessage;
                DocumentAttachment documentAttachment = (DocumentAttachment) (voidR != null ? voidR.getAttachment() : null);
                if (documentAttachment != null) {
                    voidR = documentAttachment.getDocument();
                    if (voidR != null) {
                        DownloadActivity.Companion.startDownload(context, voidR);
                    }
                }
            }
        });
    }

    public final void bind(String str, MessageIn messageIn) {
        Intrinsics.checkParameterIsNotNull(messageIn, "chatMessage");
        this.chatMessage = messageIn;
        this.imageView.setImageDrawable(null);
        if (str != null) {
            Glide.with(getContext()).load(str).centerCrop().into(this.imageView);
        }
    }
}
