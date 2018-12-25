package ru.rocketbank.r2d2.activities.c2c;

import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KDeclarationContainer;

/* compiled from: Enter3dSecActivity.kt */
/* renamed from: ru.rocketbank.r2d2.activities.c2c.Enter3dSecActivity$SecurityCodeWebViewClient$onReceivedSslError$1 */
final class C1492xb41e7463 extends FunctionReference implements Function2<Enter3dSecActivity, Boolean, Unit> {
    public static final C1492xb41e7463 INSTANCE = new C1492xb41e7463();

    C1492xb41e7463() {
        super(2);
    }

    public final String getName() {
        return "onLocalSslResult";
    }

    public final KDeclarationContainer getOwner() {
        return Reflection.getOrCreateKotlinClass$4641416c(Enter3dSecActivity.class);
    }

    public final String getSignature() {
        return "onLocalSslResult(Z)V";
    }

    public final void invoke(Enter3dSecActivity enter3dSecActivity, boolean z) {
        Intrinsics.checkParameterIsNotNull(enter3dSecActivity, "p1");
        enter3dSecActivity.onLocalSslResult(z);
    }
}
