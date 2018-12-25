package ru.rocketbank.core.manager;

import java.security.MessageDigest;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: HeaderManager.kt */
final class HeaderManager$md5$2 extends Lambda implements Function0<MessageDigest> {
    public static final HeaderManager$md5$2 INSTANCE = new HeaderManager$md5$2();

    HeaderManager$md5$2() {
        super(0);
    }

    public final MessageDigest invoke() {
        return MessageDigest.getInstance("MD5");
    }
}
