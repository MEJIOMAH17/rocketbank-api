package ru.rocketbank.r2d2.activities.c2c;

import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KDeclarationContainer;

/* compiled from: Enter3dSecActivity.kt */
/* renamed from: ru.rocketbank.r2d2.activities.c2c.Enter3dSecActivity$SecurityCodeWebViewClient$onReceivedSslError$2 */
final class C1493xb41e7464 extends FunctionReference implements Function2<Enter3dSecActivity, Throwable, Unit> {
    public static final C1493xb41e7464 INSTANCE = new C1493xb41e7464();

    C1493xb41e7464() {
        super(2);
    }

    public final String getName() {
        return "onLocalSslError";
    }

    public final KDeclarationContainer getOwner() {
        return Reflection.getOrCreateKotlinClass$4641416c(Enter3dSecActivity.class);
    }

    public final String getSignature() {
        return "onLocalSslError(Ljava/lang/Throwable;)V";
    }

    public final void invoke(Enter3dSecActivity enter3dSecActivity, Throwable th) {
        Intrinsics.checkParameterIsNotNull(enter3dSecActivity, "p1");
        Intrinsics.checkParameterIsNotNull(th, "p2");
        enter3dSecActivity.onLocalSslError(th);
    }
}
