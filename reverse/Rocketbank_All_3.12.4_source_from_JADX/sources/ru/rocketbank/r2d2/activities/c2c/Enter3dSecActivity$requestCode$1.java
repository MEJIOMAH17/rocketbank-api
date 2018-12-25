package ru.rocketbank.r2d2.activities.c2c;

import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KDeclarationContainer;
import ru.rocketbank.core.model.card.Card2CardStatusResponseData;

/* compiled from: Enter3dSecActivity.kt */
final class Enter3dSecActivity$requestCode$1 extends FunctionReference implements Function2<Enter3dSecActivity, Card2CardStatusResponseData, Unit> {
    public static final Enter3dSecActivity$requestCode$1 INSTANCE = new Enter3dSecActivity$requestCode$1();

    Enter3dSecActivity$requestCode$1() {
        super(2);
    }

    public final String getName() {
        return "onSuccess";
    }

    public final KDeclarationContainer getOwner() {
        return Reflection.getOrCreateKotlinClass$4641416c(Enter3dSecActivity.class);
    }

    public final String getSignature() {
        return "onSuccess(Lru/rocketbank/core/model/card/Card2CardStatusResponseData;)V";
    }

    public final void invoke(Enter3dSecActivity enter3dSecActivity, Card2CardStatusResponseData card2CardStatusResponseData) {
        Intrinsics.checkParameterIsNotNull(enter3dSecActivity, "p1");
        Intrinsics.checkParameterIsNotNull(card2CardStatusResponseData, "p2");
        enter3dSecActivity.onSuccess(card2CardStatusResponseData);
    }
}
