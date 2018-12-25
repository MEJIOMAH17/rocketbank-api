package ru.rocketbank.core.user;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.utils.SoundNotification;
import rx.functions.Func1;

/* compiled from: Authorization.kt */
final class Authorization$setUserModel$1<T, R> implements Func1<T, R> {
    public static final Authorization$setUserModel$1 INSTANCE = new Authorization$setUserModel$1();

    Authorization$setUserModel$1() {
    }

    public final /* bridge */ /* synthetic */ Object call(Object obj) {
        Integer num = (Integer) obj;
        SoundNotification soundNotification = SoundNotification.INSTANCE;
        Intrinsics.checkExpressionValueIsNotNull(num, "mode");
        soundNotification.setSelectedMode(num.intValue());
        SoundNotification.INSTANCE.recreate();
        return null;
    }
}
