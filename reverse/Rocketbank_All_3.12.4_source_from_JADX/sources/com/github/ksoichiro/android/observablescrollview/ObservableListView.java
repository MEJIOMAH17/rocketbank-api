package com.github.ksoichiro.android.observablescrollview;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.SparseIntArray;
import android.view.MotionEvent;
import android.view.View.BaseSavedState;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.ListView;

public class ObservableListView extends ListView {
    private SparseIntArray mChildrenHeights;
    private OnScrollListener mOriginalScrollListener;
    private int mPrevFirstVisibleChildHeight;
    private int mPrevFirstVisiblePosition;
    private int mPrevScrollY;
    private int mPrevScrolledChildrenHeight;
    private int mScrollY;

    /* renamed from: com.github.ksoichiro.android.observablescrollview.ObservableListView$1 */
    class C05271 implements OnScrollListener {
        final /* synthetic */ ObservableListView this$0;

        public final void onScrollStateChanged(AbsListView absListView, int i) {
            if (this.this$0.mOriginalScrollListener != null) {
                this.this$0.mOriginalScrollListener.onScrollStateChanged(absListView, i);
            }
        }

        public final void onScroll(AbsListView absListView, int i, int i2, int i3) {
            if (this.this$0.mOriginalScrollListener != null) {
                this.this$0.mOriginalScrollListener.onScroll(absListView, i, i2, i3);
            }
            ObservableListView.access$100(this.this$0);
        }
    }

    static class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR = new C05281();
        SparseIntArray childrenHeights;
        int prevFirstVisibleChildHeight;
        int prevFirstVisiblePosition;
        int prevScrollY;
        int prevScrolledChildrenHeight;
        int scrollY;

        /* renamed from: com.github.ksoichiro.android.observablescrollview.ObservableListView$SavedState$1 */
        static class C05281 implements Creator<SavedState> {
            C05281() {
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
            this.prevFirstVisibleChildHeight = -1;
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.prevFirstVisibleChildHeight = -1;
            this.prevFirstVisiblePosition = parcel.readInt();
            this.prevFirstVisibleChildHeight = parcel.readInt();
            this.prevScrolledChildrenHeight = parcel.readInt();
            this.prevScrollY = parcel.readInt();
            this.scrollY = parcel.readInt();
            this.childrenHeights = new SparseIntArray();
            int readInt = parcel.readInt();
            if (readInt > 0) {
                for (int i = 0; i < readInt; i++) {
                    this.childrenHeights.put(parcel.readInt(), parcel.readInt());
                }
            }
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.prevFirstVisiblePosition);
            parcel.writeInt(this.prevFirstVisibleChildHeight);
            parcel.writeInt(this.prevScrolledChildrenHeight);
            parcel.writeInt(this.prevScrollY);
            parcel.writeInt(this.scrollY);
            int i2 = 0;
            i = this.childrenHeights == 0 ? 0 : this.childrenHeights.size();
            parcel.writeInt(i);
            if (i > 0) {
                while (i2 < i) {
                    parcel.writeInt(this.childrenHeights.keyAt(i2));
                    parcel.writeInt(this.childrenHeights.valueAt(i2));
                    i2++;
                }
            }
        }
    }

    static /* synthetic */ void access$100(ObservableListView observableListView) {
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        this.mPrevFirstVisiblePosition = savedState.prevFirstVisiblePosition;
        this.mPrevFirstVisibleChildHeight = savedState.prevFirstVisibleChildHeight;
        this.mPrevScrolledChildrenHeight = savedState.prevScrolledChildrenHeight;
        this.mPrevScrollY = savedState.prevScrollY;
        this.mScrollY = savedState.scrollY;
        this.mChildrenHeights = savedState.childrenHeights;
        super.onRestoreInstanceState(savedState.getSuperState());
    }

    public Parcelable onSaveInstanceState() {
        Parcelable savedState = new SavedState(super.onSaveInstanceState());
        savedState.prevFirstVisiblePosition = this.mPrevFirstVisiblePosition;
        savedState.prevFirstVisibleChildHeight = this.mPrevFirstVisibleChildHeight;
        savedState.prevScrolledChildrenHeight = this.mPrevScrolledChildrenHeight;
        savedState.prevScrollY = this.mPrevScrollY;
        savedState.scrollY = this.mScrollY;
        savedState.childrenHeights = this.mChildrenHeights;
        return savedState;
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return super.onInterceptTouchEvent(motionEvent);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    public void setOnScrollListener(OnScrollListener onScrollListener) {
        this.mOriginalScrollListener = onScrollListener;
    }
}
