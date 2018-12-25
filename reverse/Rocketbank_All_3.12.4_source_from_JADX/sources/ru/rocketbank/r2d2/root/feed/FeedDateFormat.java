package ru.rocketbank.r2d2.root.feed;

import java.text.SimpleDateFormat;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Lazy;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: FeedDateFormat.kt */
public final class FeedDateFormat {
    static final /* synthetic */ KProperty[] $$delegatedProperties = new KProperty[]{Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(FeedDateFormat.class), "yesterdayDateFormat", "getYesterdayDateFormat()Ljava/text/SimpleDateFormat;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(FeedDateFormat.class), "dayDateFormat", "getDayDateFormat()Ljava/text/SimpleDateFormat;"))};
    public static final FeedDateFormat INSTANCE = new FeedDateFormat();
    private static final Lazy dayDateFormat$delegate = ExceptionsKt__ExceptionsKt.lazy(FeedDateFormat$dayDateFormat$2.INSTANCE);
    private static final Lazy yesterdayDateFormat$delegate = ExceptionsKt__ExceptionsKt.lazy(FeedDateFormat$yesterdayDateFormat$2.INSTANCE);

    public final SimpleDateFormat getDayDateFormat() {
        return (SimpleDateFormat) dayDateFormat$delegate.getValue();
    }

    public final SimpleDateFormat getYesterdayDateFormat() {
        return (SimpleDateFormat) yesterdayDateFormat$delegate.getValue();
    }

    private FeedDateFormat() {
    }
}
