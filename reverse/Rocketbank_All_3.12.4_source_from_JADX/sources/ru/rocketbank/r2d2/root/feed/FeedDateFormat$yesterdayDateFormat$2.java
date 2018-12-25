package ru.rocketbank.r2d2.root.feed;

import java.text.SimpleDateFormat;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: FeedDateFormat.kt */
final class FeedDateFormat$yesterdayDateFormat$2 extends Lambda implements Function0<SimpleDateFormat> {
    public static final FeedDateFormat$yesterdayDateFormat$2 INSTANCE = new FeedDateFormat$yesterdayDateFormat$2();

    FeedDateFormat$yesterdayDateFormat$2() {
        super(0);
    }

    public final SimpleDateFormat invoke() {
        return new SimpleDateFormat("dd MMM");
    }
}
