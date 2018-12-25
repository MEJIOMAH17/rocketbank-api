package com.github.ksoichiro.android.observablescrollview;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.ViewGroup;
import android.widget.ScrollView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;

public class ObservableScrollView extends ScrollView {
    private ObservableScrollViewCallbacks mCallbacks;
    private boolean mDragging;
    private boolean mFirstScroll;
    private boolean mIntercepted;
    private MotionEvent mPrevMoveEvent;
    private int mPrevScrollY;
    private ScrollState mScrollState;
    private int mScrollY;
    private ViewGroup mTouchInterceptionViewGroup;

    static class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR = new C05321();
        int prevScrollY;
        int scrollY;

        /* renamed from: com.github.ksoichiro.android.observablescrollview.ObservableScrollView$SavedState$1 */
        static class C05321 implements Creator<SavedState> {
            C05321() {
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

    public ObservableScrollView(Context context) {
        super(context);
    }

    public ObservableScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ObservableScrollView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
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
        if (this.mCallbacks != 0) {
            this.mScrollY = i2;
            this.mCallbacks.onScrollChanged(i2, this.mFirstScroll, this.mDragging);
            if (this.mFirstScroll != 0) {
                this.mFirstScroll = false;
            }
            if (this.mPrevScrollY < i2) {
                this.mScrollState = ScrollState.UP;
            } else if (i2 < this.mPrevScrollY) {
                this.mScrollState = ScrollState.DOWN;
            }
            this.mPrevScrollY = i2;
        }
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.mCallbacks != null) {
            if (motionEvent.getActionMasked() == 0) {
                this.mDragging = true;
                this.mFirstScroll = true;
                this.mCallbacks.onDownMotionEvent();
            }
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.mCallbacks != null) {
            switch (motionEvent.getActionMasked()) {
                case 1:
                case 3:
                    this.mIntercepted = false;
                    this.mDragging = false;
                    this.mCallbacks.onUpOrCancelMotionEvent(this.mScrollState);
                    break;
                case 2:
                    if (this.mPrevMoveEvent == null) {
                        this.mPrevMoveEvent = motionEvent;
                    }
                    float y = motionEvent.getY() - this.mPrevMoveEvent.getY();
                    this.mPrevMoveEvent = MotionEvent.obtainNoHistory(motionEvent);
                    if (((float) getCurrentScrollY()) - y <= BitmapDescriptorFactory.HUE_RED) {
                        if (this.mIntercepted) {
                            return false;
                        }
                        View view;
                        if (this.mTouchInterceptionViewGroup == null) {
                            view = (ViewGroup) getParent();
                        } else {
                            view = this.mTouchInterceptionViewGroup;
                        }
                        float f = BitmapDescriptorFactory.HUE_RED;
                        float f2 = f;
                        View view2 = this;
                        while (view2 != null && view2 != view) {
                            f += (float) (view2.getLeft() - view2.getScrollX());
                            f2 += (float) (view2.getTop() - view2.getScrollY());
                            view2 = (View) view2.getParent();
                        }
                        final MotionEvent obtainNoHistory = MotionEvent.obtainNoHistory(motionEvent);
                        obtainNoHistory.offsetLocation(f, f2);
                        if (!view.onInterceptTouchEvent(obtainNoHistory)) {
                            return super.onTouchEvent(motionEvent);
                        }
                        this.mIntercepted = true;
                        obtainNoHistory.setAction(0);
                        post(new Runnable() {
                            public final void run() {
                                view.dispatchTouchEvent(obtainNoHistory);
                            }
                        });
                        return false;
                    }
                    break;
                default:
                    break;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setScrollViewCallbacks(ObservableScrollViewCallbacks observableScrollViewCallbacks) {
        this.mCallbacks = observableScrollViewCallbacks;
    }

    public void setTouchInterceptionViewGroup(ViewGroup viewGroup) {
        this.mTouchInterceptionViewGroup = viewGroup;
    }

    public void scrollVerticallyTo(int i) {
        scrollTo(0, i);
    }

    public int getCurrentScrollY() {
        return this.mScrollY;
    }
}
