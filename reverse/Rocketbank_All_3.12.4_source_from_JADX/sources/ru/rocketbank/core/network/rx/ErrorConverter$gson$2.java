package ru.rocketbank.core.network.rx;

import com.google.gson.Gson;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: ErrorConverter.kt */
final class ErrorConverter$gson$2 extends Lambda implements Function0<Gson> {
    public static final ErrorConverter$gson$2 INSTANCE = new ErrorConverter$gson$2();

    ErrorConverter$gson$2() {
        super(0);
    }

    public final Gson invoke() {
        return new Gson();
    }
}
