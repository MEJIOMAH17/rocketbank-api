package ru.rocketbank.core.utils.rx;

import android.view.View.MeasureSpec;
import rx.functions.Func1;

/* compiled from: ViewDraw.kt */
final class ViewDraw$measureView$1<T, R> implements Func1<T, R> {
    final /* synthetic */ int $height;
    final /* synthetic */ int $width;

    ViewDraw$measureView$1(int i, int i2) {
        this.$width = i;
        this.$height = i2;
    }

    public final T call(T t) {
        t.measure(MeasureSpec.makeMeasureSpec(this.$width, 1073741824), MeasureSpec.makeMeasureSpec(this.$height, 1073741824));
        t.layout(0, 0, this.$width, this.$height);
        return t;
    }
}
