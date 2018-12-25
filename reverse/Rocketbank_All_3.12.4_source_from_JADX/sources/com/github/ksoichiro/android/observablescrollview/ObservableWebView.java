package com.github.ksoichiro.android.observablescrollview;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.MotionEvent;
import android.view.View.BaseSavedState;
import android.view.ViewGroup;
import android.webkit.WebView;

public class ObservableWebView extends WebView {
    private int mPrevScrollY;
    private int mScrollY;

    /* renamed from: com.github.ksoichiro.android.observablescrollview.ObservableWebView$1 */
    class C05331 implements Runnable {
        final /* synthetic */ MotionEvent val$event;
        final /* synthetic */ ViewGroup val$parent;

        public final void run() {
            this.val$parent.dispatchTouchEvent(this.val$event);
        }
    }

    static class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR = new C05341();
        int prevScrollY;
        int scrollY;

        /* renamed from: com.github.ksoichiro.android.observablescrollview.ObservableWebView$SavedState$1 */
        static class C05341 implements Creator<SavedState> {
            C05341() {
            }

            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return new SavedState[i];
            }

            public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.prevScrollY = parcel.readInt();
            this.scrollY = parcel.readInt();
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.prevScrollY);
            parcel.writeInt(this.scrollY);
        }
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        this.mPrevScrollY = savedState.prevScrollY;
        this.mScrollY = savedState.scrollY;
        super.onRestoreInstanceState(savedState.getSuperState());
    }

    public Parcelable onSaveInstanceState() {
        Parcelable savedState = new SavedState(super.onSaveInstanceState());
        savedState.prevScrollY = this.mPrevScrollY;
        savedState.scrollY = this.mScrollY;
        return savedState;
    }

    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return super.onInterceptTouchEvent(motionEvent);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }
}
