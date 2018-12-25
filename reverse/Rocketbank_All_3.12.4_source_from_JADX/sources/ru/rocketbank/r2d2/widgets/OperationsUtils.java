package ru.rocketbank.r2d2.widgets;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.support.v4.content.ContextCompat;
import android.support.v4.util.SparseArrayCompat;
import jp.wasabeef.glide.transformations.CropCircleTransformation;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Lazy;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import ru.rocketbank.core.network.model.operation.FriendRequestType;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.root.feed.FeedPresenter;

/* compiled from: OperationsUtils.kt */
public final class OperationsUtils {
    static final /* synthetic */ KProperty[] $$delegatedProperties = new KProperty[]{Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(OperationsUtils.class), "cropCircleTransformation", "getCropCircleTransformation()Ljp/wasabeef/glide/transformations/CropCircleTransformation;"))};
    public static final OperationsUtils INSTANCE = new OperationsUtils();
    private static final int STATUS_IN = 437;
    private static final int STATUS_NONE = 0;
    private static final int STATUS_OUT = 368;
    private static final SparseArrayCompat<ColorDrawable> colorDrawables = new SparseArrayCompat();
    private static final Lazy cropCircleTransformation$delegate = ExceptionsKt__ExceptionsKt.lazy(OperationsUtils$cropCircleTransformation$2.INSTANCE);

    public final CropCircleTransformation getCropCircleTransformation() {
        return (CropCircleTransformation) cropCircleTransformation$delegate.getValue();
    }

    private OperationsUtils() {
    }

    public final SparseArrayCompat<ColorDrawable> getColorDrawables() {
        return colorDrawables;
    }

    public final Drawable getColorDrawable(int i) {
        ColorDrawable colorDrawable = (ColorDrawable) FeedPresenter.Companion.getColorDrawables().get(i);
        if (colorDrawable == null) {
            colorDrawable = new ColorDrawable(i);
            FeedPresenter.Companion.getColorDrawables().put(i, colorDrawable);
        }
        return colorDrawable;
    }

    public final int colorFromCurrency(Context context, String str) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(str, "currencyCode");
        if (Intrinsics.areEqual(str, "RUB")) {
            return ContextCompat.getColor(context, C0859R.color.rub);
        }
        if (Intrinsics.areEqual(str, "EUR") != null) {
            return ContextCompat.getColor(context, C0859R.color.eur);
        }
        return ContextCompat.getColor(context, C0859R.color.usd);
    }

    public final boolean isOutgoing(FriendRequestType friendRequestType) {
        Intrinsics.checkParameterIsNotNull(friendRequestType, "transferType");
        if (FriendRequestType.InternalOut != friendRequestType) {
            if (FriendRequestType.ExternalOut != friendRequestType) {
                return null;
            }
        }
        return true;
    }

    public final boolean isIncoming(FriendRequestType friendRequestType) {
        Intrinsics.checkParameterIsNotNull(friendRequestType, "transferType");
        if (FriendRequestType.ExternalIn != friendRequestType) {
            if (FriendRequestType.InternalIn != friendRequestType) {
                return null;
            }
        }
        return true;
    }

    public final int getSTATUS_NONE() {
        return STATUS_NONE;
    }

    public final int getSTATUS_OUT() {
        return STATUS_OUT;
    }

    public final int getSTATUS_IN() {
        return STATUS_IN;
    }
}
