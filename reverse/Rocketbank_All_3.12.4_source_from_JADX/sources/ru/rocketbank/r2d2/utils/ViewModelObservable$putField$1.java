package ru.rocketbank.r2d2.utils;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt;

/* compiled from: ViewModelObservable.kt */
final class ViewModelObservable$putField$1 extends Lambda implements Function1<String, String> {
    public static final ViewModelObservable$putField$1 INSTANCE = new ViewModelObservable$putField$1();

    ViewModelObservable$putField$1() {
        super(1);
    }

    public final String invoke(String str) {
        if (str != null) {
            str = StringsKt.replace$default(str, " ", "", false, 4, null);
            if (str != null) {
                return str;
            }
        }
        return "";
    }
}
