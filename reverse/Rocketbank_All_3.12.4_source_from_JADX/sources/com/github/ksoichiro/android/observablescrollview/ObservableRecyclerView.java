package com.github.ksoichiro.android.observablescrollview;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v7.widget.RecyclerView;
import android.util.SparseIntArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;

public class ObservableRecyclerView extends RecyclerView {
    private static int recyclerViewLibraryVersion = 22;
    private ObservableScrollViewCallbacks mCallbacks;
    private SparseIntArray mChildrenHeights = new SparseIntArray();
    private boolean mDragging;
    private boolean mFirstScroll;
    private boolean mIntercepted;
    private int mPrevFirstVisibleChildHeight = -1;
    private int mPrevFirstVisiblePosition;
    private MotionEvent mPrevMoveEvent;
    private int mPrevScrollY;
    private int mPrevScrolledChildrenHeight;
    private ScrollState mScrollState;
    private int mScrollY;
    private ViewGroup mTouchInterceptionViewGroup;

    static class SavedState implements Parcelable {
        public static final Creator<SavedState> CREATOR = new C05302();
        public static final SavedState EMPTY_STATE = new C11571();
        SparseIntArray childrenHeights;
        int prevFirstVisibleChildHeight;
        int prevFirstVisiblePosition;
        int prevScrollY;
        int prevScrolledChildrenHeight;
        int scrollY;
        Parcelable superState;

        /* renamed from: com.github.ksoichiro.android.observablescrollview.ObservableRecyclerView$SavedState$2 */
        static class C05302 implements Creator<SavedState> {
            C05302() {
            }

            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return new SavedState[i];
            }

            public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }
        }

        /* renamed from: com.github.ksoichiro.android.observablescrollview.ObservableRecyclerView$SavedState$1 */
        static class C11571 extends SavedState {
            C11571() {
                super();
            }
        }

        public int describeContents() {
            return 0;
        }

        private SavedState() {
            this.prevFirstVisibleChildHeight = -1;
            this.superState = null;
        }

        SavedState(Parcelable parcelable) {
            this.prevFirstVisibleChildHeight = -1;
            if (parcelable == EMPTY_STATE) {
                parcelable = null;
            }
            this.superState = parcelable;
        }

        private SavedState(Parcel parcel) {
            this.prevFirstVisibleChildHeight = -1;
            Parcelable readParcelable = parcel.readParcelable(RecyclerView.class.getClassLoader());
            if (readParcelable == null) {
                readParcelable = EMPTY_STATE;
            }
            this.superState = readParcelable;
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
            parcel.writeParcelable(this.superState, i);
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

        public Parcelable getSuperState() {
            return this.superState;
        }
    }

    public ObservableRecyclerView(android.content.Context r1) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r0 = this;
        r0.<init>(r1);
        r1 = -1;
        r0.mPrevFirstVisibleChildHeight = r1;
        r1 = new android.util.SparseIntArray;
        r1.<init>();
        r0.mChildrenHeights = r1;
        r1 = 0;
        super.getChildAdapterPosition(r1);	 Catch:{ NoSuchMethodError -> 0x0012 }
        return;
    L_0x0012:
        r1 = 21;
        recyclerViewLibraryVersion = r1;
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.ksoichiro.android.observablescrollview.ObservableRecyclerView.<init>(android.content.Context):void");
    }

    public ObservableRecyclerView(android.content.Context r1, android.util.AttributeSet r2) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r0 = this;
        r0.<init>(r1, r2);
        r1 = -1;
        r0.mPrevFirstVisibleChildHeight = r1;
        r1 = new android.util.SparseIntArray;
        r1.<init>();
        r0.mChildrenHeights = r1;
        r1 = 0;
        super.getChildAdapterPosition(r1);	 Catch:{ NoSuchMethodError -> 0x0012 }
        return;
    L_0x0012:
        r1 = 21;
        recyclerViewLibraryVersion = r1;
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.ksoichiro.android.observablescrollview.ObservableRecyclerView.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    public ObservableRecyclerView(android.content.Context r1, android.util.AttributeSet r2, int r3) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r0 = this;
        r0.<init>(r1, r2, r3);
        r1 = -1;
        r0.mPrevFirstVisibleChildHeight = r1;
        r1 = new android.util.SparseIntArray;
        r1.<init>();
        r0.mChildrenHeights = r1;
        r1 = 0;
        super.getChildAdapterPosition(r1);	 Catch:{ NoSuchMethodError -> 0x0012 }
        return;
    L_0x0012:
        r1 = 21;
        recyclerViewLibraryVersion = r1;
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.ksoichiro.android.observablescrollview.ObservableRecyclerView.<init>(android.content.Context, android.util.AttributeSet, int):void");
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

    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        if (this.mCallbacks != 0 && getChildCount() > 0) {
            i2 = getChildAdapterPosition(getChildAt(0));
            i3 = getChildAdapterPosition(getChildAt(getChildCount() - 1));
            int i5 = 0;
            int i6 = i2;
            while (i6 <= i3) {
                View childAt = getChildAt(i5);
                int height = (childAt == null || (this.mChildrenHeights.indexOfKey(i6) >= 0 && childAt.getHeight() == this.mChildrenHeights.get(i6))) ? 0 : childAt.getHeight();
                this.mChildrenHeights.put(i6, height);
                i6++;
                i5++;
            }
            i3 = getChildAt(0);
            if (i3 != 0) {
                if (this.mPrevFirstVisiblePosition < i2) {
                    if (i2 - this.mPrevFirstVisiblePosition != 1) {
                        i6 = 0;
                        for (i4 = i2 - 1; i4 > this.mPrevFirstVisiblePosition; i4--) {
                            if (this.mChildrenHeights.indexOfKey(i4) > 0) {
                                i6 += this.mChildrenHeights.get(i4);
                            } else {
                                i6 += i3.getHeight();
                            }
                        }
                    } else {
                        i6 = 0;
                    }
                    this.mPrevScrolledChildrenHeight += this.mPrevFirstVisibleChildHeight + i6;
                    this.mPrevFirstVisibleChildHeight = i3.getHeight();
                } else if (i2 < this.mPrevFirstVisiblePosition) {
                    if (this.mPrevFirstVisiblePosition - i2 != 1) {
                        i4 = 0;
                        for (i6 = this.mPrevFirstVisiblePosition - 1; i6 > i2; i6--) {
                            if (this.mChildrenHeights.indexOfKey(i6) > 0) {
                                i4 += this.mChildrenHeights.get(i6);
                            } else {
                                i4 += i3.getHeight();
                            }
                        }
                    } else {
                        i4 = 0;
                    }
                    this.mPrevScrolledChildrenHeight -= i3.getHeight() + i4;
                    this.mPrevFirstVisibleChildHeight = i3.getHeight();
                } else if (i2 == 0) {
                    this.mPrevFirstVisibleChildHeight = i3.getHeight();
                    this.mPrevScrolledChildrenHeight = 0;
                }
                if (this.mPrevFirstVisibleChildHeight < 0) {
                    this.mPrevFirstVisibleChildHeight = 0;
                }
                this.mScrollY = this.mPrevScrolledChildrenHeight - i3.getTop();
                this.mPrevFirstVisiblePosition = i2;
                this.mCallbacks.onScrollChanged(this.mScrollY, this.mFirstScroll, this.mDragging);
                if (this.mFirstScroll != 0) {
                    this.mFirstScroll = false;
                }
                if (this.mPrevScrollY < this.mScrollY) {
                    this.mScrollState = ScrollState.UP;
                } else if (this.mScrollY < this.mPrevScrollY) {
                    this.mScrollState = ScrollState.DOWN;
                } else {
                    this.mScrollState = ScrollState.STOP;
                }
                this.mPrevScrollY = this.mScrollY;
            }
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
                    if (((float) this.mScrollY) - y <= BitmapDescriptorFactory.HUE_RED) {
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

    public final void setScrollViewCallbacks(ObservableScrollViewCallbacks observableScrollViewCallbacks) {
        this.mCallbacks = observableScrollViewCallbacks;
    }

    public final void setTouchInterceptionViewGroup(ViewGroup viewGroup) {
        this.mTouchInterceptionViewGroup = viewGroup;
    }

    public int getChildAdapterPosition(View view) {
        if (22 <= recyclerViewLibraryVersion) {
            return super.getChildAdapterPosition(view);
        }
        return getChildPosition(view);
    }
}
