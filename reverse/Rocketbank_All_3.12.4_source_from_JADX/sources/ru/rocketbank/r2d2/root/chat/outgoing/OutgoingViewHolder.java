package ru.rocketbank.r2d2.root.chat.outgoing;

import android.content.Context;
import android.support.v4.content.ContextCompat;
import android.view.View;
import java.text.SimpleDateFormat;
import java.util.Date;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Lazy;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.root.chat.MessageViewHolder;
import ru.rocketbank.r2d2.root.chat.base.TextMessageData;

/* compiled from: OutgoingViewHolder.kt */
public class OutgoingViewHolder extends MessageViewHolder {
    static final /* synthetic */ KProperty[] $$delegatedProperties = new KProperty[]{Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(OutgoingViewHolder.class), "formatTime", "getFormatTime()Ljava/text/SimpleDateFormat;"))};
    private final TextMessageData data = new TextMessageData();
    private final Lazy formatTime$delegate = ExceptionsKt__ExceptionsKt.lazy((Function0) OutgoingViewHolder$formatTime$2.INSTANCE);
    private final RetryMessageListener retryMessageListener;

    private final SimpleDateFormat getFormatTime() {
        return (SimpleDateFormat) this.formatTime$delegate.getValue();
    }

    public OutgoingViewHolder(Context context, View view, RetryMessageListener retryMessageListener) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(view, "itemView");
        Intrinsics.checkParameterIsNotNull(retryMessageListener, "retryMessageListener");
        super(context, view);
        this.retryMessageListener = retryMessageListener;
    }

    public final TextMessageData getData() {
        return this.data;
    }

    public final void showGrayBubble(boolean z) {
        this.data.getFirstMessage().set(z);
        this.data.getBackground().set(ContextCompat.getDrawable(getContext(), z ? true : true));
    }

    public final void showOrangeBubble(boolean z) {
        this.data.getFirstMessage().set(z);
        this.data.getBackground().set(ContextCompat.getDrawable(getContext(), z ? true : true));
    }

    public final void setRead(int i) {
        i = getFormatTime().format(new Date(((long) i) * 1000));
        this.data.getStatusText().set(getContext().getResources().getString(C0859R.string.message_read_at, new Object[]{i}));
        this.data.getStatusVisible().set(true);
    }

    public final void setSent(int i) {
        this.data.getStatusText().set(getContext().getResources().getString(C0859R.string.message_sent_at));
        this.data.getStatusVisible().set(true);
    }

    public final void setStatusInvisible() {
        this.data.getStatusVisible().set(false);
    }
}
