package ru.rocketbank.r2d2.root.chat.outgoing;

import java.text.SimpleDateFormat;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: OutgoingViewHolder.kt */
final class OutgoingViewHolder$formatTime$2 extends Lambda implements Function0<SimpleDateFormat> {
    public static final OutgoingViewHolder$formatTime$2 INSTANCE = new OutgoingViewHolder$formatTime$2();

    OutgoingViewHolder$formatTime$2() {
        super(0);
    }

    public final SimpleDateFormat invoke() {
        return new SimpleDateFormat("ccc HH:mm");
    }
}
