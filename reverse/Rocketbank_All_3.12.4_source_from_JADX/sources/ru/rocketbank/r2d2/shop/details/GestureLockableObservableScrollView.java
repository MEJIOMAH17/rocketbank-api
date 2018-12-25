package ru.rocketbank.r2d2.shop.details;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import com.github.ksoichiro.android.observablescrollview.ObservableScrollView;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: GestureLockableObservableScrollView.kt */
public final class GestureLockableObservableScrollView extends ObservableScrollView {
    private HashMap _$_findViewCache;
    private final GestureDetector mGestureDetector;
    private boolean mScrollable = true;

    /* compiled from: GestureLockableObservableScrollView.kt */
    public final class YScrollDetector extends SimpleOnGestureListener {
        public final boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            return Math.abs(f2) > Math.abs(f) ? true : null;
        }
    }

    public final void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public final View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        view = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), view);
        return view;
    }

    public GestureLockableObservableScrollView(Context context, AttributeSet attributeSet) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributeSet, "attrs");
        super(context, attributeSet);
        this.mGestureDetector = new GestureDetector(context, new YScrollDetector());
        setFadingEdgeLength(null);
    }

    public final void setScrollingEnabled(boolean z) {
        this.mScrollable = z;
    }

    public final boolean isScrollable() {
        return this.mScrollable;
    }

    public final boolean onTouchEvent(MotionEvent motionEvent) {
        Intrinsics.checkParameterIsNotNull(motionEvent, "ev");
        if (motionEvent.getPointerCount() > 1) {
            return null;
        }
        if (motionEvent.getAction() != 0) {
            return super.onTouchEvent(motionEvent);
        }
        if (this.mScrollable) {
            return super.onTouchEvent(motionEvent);
        }
        return this.mScrollable;
    }

    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return (this.mScrollable && super.onInterceptTouchEvent(motionEvent) && this.mGestureDetector.onTouchEvent(motionEvent) != null) ? true : null;
    }
}
