package ru.rocketbank.r2d2.root.chat.incoming;

import android.content.Context;
import android.text.SpannableString;
import android.view.View;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: IncomingText.kt */
public final class IncomingText extends IncomingViewHolder {
    private RocketTextView messageTextView;

    public IncomingText(Context context, View view) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(view, "itemView");
        super(context, view);
        context = view.findViewById(C0859R.id.message);
        if (context == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.messageTextView = (RocketTextView) context;
    }

    public final void bind(String str) {
        Intrinsics.checkParameterIsNotNull(str, "messageText");
        RocketTextView rocketTextView = this.messageTextView;
        if (rocketTextView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("messageTextView");
        }
        rocketTextView.setText(replaceImage(str));
    }

    public final SpannableString replaceImage(String str) {
        return new SpannableString(str);
    }
}
