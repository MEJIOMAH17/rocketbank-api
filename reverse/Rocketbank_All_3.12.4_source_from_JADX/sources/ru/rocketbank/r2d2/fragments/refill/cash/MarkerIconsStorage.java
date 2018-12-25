package ru.rocketbank.r2d2.fragments.refill.cash;

import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.v4.util.ArrayMap;
import com.google.android.gms.maps.model.BitmapDescriptor;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Map;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MarkerIconsStorage.kt */
public final class MarkerIconsStorage {
    private final Map<Integer, BitmapDescriptor> cache = ((Map) new ArrayMap());
    private final Context context;

    public MarkerIconsStorage(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.context = context;
    }

    public final BitmapDescriptor getBitmapDescriptor(int i) {
        if (!this.cache.containsKey(Integer.valueOf(i))) {
            Map map = this.cache;
            Integer valueOf = Integer.valueOf(i);
            Drawable drawable = this.context.getResources().getDrawable(i);
            if (drawable == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable");
            }
            BitmapDescriptor fromBitmap = BitmapDescriptorFactory.fromBitmap(((BitmapDrawable) drawable).getBitmap());
            Intrinsics.checkExpressionValueIsNotNull(fromBitmap, "BitmapDescriptorFactory.…s BitmapDrawable).bitmap)");
            map.put(valueOf, fromBitmap);
        }
        return (BitmapDescriptor) this.cache.get(Integer.valueOf(i));
    }
}
