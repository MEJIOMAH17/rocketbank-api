package ru.rocketbank.core.utils.rx;

import android.graphics.Bitmap;
import android.view.View;
import kotlin.jvm.internal.Intrinsics;
import rx.Observable;
import rx.Observable.Transformer;

/* compiled from: ViewDraw.kt */
public final class ViewDraw {
    public static final ViewDraw INSTANCE = new ViewDraw();

    /* compiled from: ViewDraw.kt */
    public static final class DrawViewTransformation implements Transformer<View, Bitmap> {
        public final /* bridge */ /* synthetic */ Object call(Object obj) {
            Observable observable = (Observable) obj;
            Intrinsics.checkParameterIsNotNull(observable, "viewObservable");
            obj = observable.map(ViewDraw$DrawViewTransformation$call$1.INSTANCE);
            Intrinsics.checkExpressionValueIsNotNull(obj, "viewObservable.map({ sou…88, false)\n            })");
            return obj;
        }
    }

    private ViewDraw() {
    }

    public final Observable<Bitmap> drawView(View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        view = Observable.just(view).compose(applyDrawView());
        Intrinsics.checkExpressionValueIsNotNull(view, "Observable.just(view).compose(applyDrawView())");
        return view;
    }

    public final DrawViewTransformation applyDrawView() {
        return new DrawViewTransformation();
    }

    public final <T extends View> Observable<T> measureView(T t, int i, int i2) {
        Intrinsics.checkParameterIsNotNull(t, "view");
        t = Observable.just(t).map(new ViewDraw$measureView$1(i, i2));
        Intrinsics.checkExpressionValueIsNotNull(t, "Observable.just(view).ma…\n            v\n        })");
        return t;
    }
}
