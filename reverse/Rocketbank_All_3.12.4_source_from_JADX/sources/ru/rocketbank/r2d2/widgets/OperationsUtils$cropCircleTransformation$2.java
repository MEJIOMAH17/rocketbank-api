package ru.rocketbank.r2d2.widgets;

import jp.wasabeef.glide.transformations.CropCircleTransformation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.r2d2.RocketApplication;

/* compiled from: OperationsUtils.kt */
final class OperationsUtils$cropCircleTransformation$2 extends Lambda implements Function0<CropCircleTransformation> {
    public static final OperationsUtils$cropCircleTransformation$2 INSTANCE = new OperationsUtils$cropCircleTransformation$2();

    OperationsUtils$cropCircleTransformation$2() {
        super(0);
    }

    public final CropCircleTransformation invoke() {
        return new CropCircleTransformation(RocketApplication.Companion.getContext());
    }
}
