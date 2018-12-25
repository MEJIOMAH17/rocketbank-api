package ru.rocketbank.r2d2.root.chat.outgoing;

import android.content.Context;
import android.view.View;
import com.jakewharton.rxbinding.view.RxView;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.message.MessageIn;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.databinding.LayoutMessageOutTextBinding;
import rx.functions.Action1;

/* compiled from: OutgoingText.kt */
public final class OutgoingText extends OutgoingViewHolder {
    private final LayoutMessageOutTextBinding binding;
    private MessageIn chatMessage;
    private final RocketTextView retryView;

    public OutgoingText(Context context, View view, final RetryMessageListener retryMessageListener) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(view, "itemView");
        Intrinsics.checkParameterIsNotNull(retryMessageListener, "retryMessageListener");
        super(context, view, retryMessageListener);
        context = LayoutMessageOutTextBinding.bind(view);
        Intrinsics.checkExpressionValueIsNotNull(context, "LayoutMessageOutTextBinding.bind(itemView)");
        this.binding = context;
        this.binding.setData(getData());
        context = view.findViewById(C0859R.id.retry);
        if (context == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.retryView = (RocketTextView) context;
        RxView.clicks((View) this.retryView).subscribe((Action1) new Action1<Void>() {
            public final void call(Void voidR) {
                this.getRetryView().setVisibility(8);
                voidR = this.getChatMessage();
                if (voidR != null) {
                    retryMessageListener.retry(voidR);
                }
            }
        });
    }

    public final RocketTextView getRetryView() {
        return this.retryView;
    }

    public final MessageIn getChatMessage() {
        return this.chatMessage;
    }

    public final void setChatMessage(MessageIn messageIn) {
        this.chatMessage = messageIn;
    }

    public final LayoutMessageOutTextBinding getBinding() {
        return this.binding;
    }

    public final void bind(String str, MessageIn messageIn) {
        Intrinsics.checkParameterIsNotNull(str, "messageText");
        Intrinsics.checkParameterIsNotNull(messageIn, "chatMessage");
        this.chatMessage = messageIn;
        getData().getMessage().set(str);
        getData().getRetryVisible().set(messageIn.isFailed());
    }
}
