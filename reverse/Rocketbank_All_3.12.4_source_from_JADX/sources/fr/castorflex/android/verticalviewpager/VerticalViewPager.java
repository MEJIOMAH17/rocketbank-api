package fr.castorflex.android.verticalviewpager;

import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.os.ParcelableCompat;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.KeyEventCompat;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.VelocityTrackerCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewConfigurationCompat;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityRecordCompat;
import android.support.v4.widget.EdgeEffectCompat;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import bolts.Task.UnobservedExceptionHandler;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

public class VerticalViewPager extends ViewGroup {
    private static final Comparator<ItemInfo> COMPARATOR = new C07281();
    private static final int[] LAYOUT_ATTRS = new int[]{16842931};
    private static final Interpolator sInterpolator = new C07292();
    private static final ViewPositionComparator sPositionComparator = new ViewPositionComparator();
    private int mActivePointerId = -1;
    private PagerAdapter mAdapter;
    private EdgeEffectCompat mBottomEdge;
    private boolean mCalledSuper;
    private int mChildHeightMeasureSpec;
    private int mChildWidthMeasureSpec;
    private int mCloseEnough;
    private int mCurItem;
    private int mDecorChildCount;
    private int mDefaultGutterSize;
    private final Runnable mEndScrollRunnable = new C07303();
    private int mExpectedAdapterCount;
    private boolean mFirstLayout = true;
    private float mFirstOffset = -3.4028235E38f;
    private int mFlingDistance;
    private int mGutterSize;
    private boolean mInLayout;
    private float mInitialMotionX;
    private float mInitialMotionY;
    private boolean mIsBeingDragged;
    private boolean mIsUnableToDrag;
    private final ArrayList<ItemInfo> mItems = new ArrayList();
    private float mLastMotionX;
    private float mLastMotionY;
    private float mLastOffset = Float.MAX_VALUE;
    private int mLeftPageBounds;
    private int mMaximumVelocity;
    private int mMinimumVelocity;
    private boolean mNeedCalculatePageOffsets = false;
    private PagerObserver mObserver;
    private int mOffscreenPageLimit = 1;
    private OnPageChangeListener mOnPageChangeListener;
    private boolean mPopulatePending;
    private Parcelable mRestoredAdapterState = null;
    private ClassLoader mRestoredClassLoader = null;
    private int mRestoredCurItem = -1;
    private int mRightPageBounds;
    private int mScrollState = 0;
    private Scroller mScroller;
    private boolean mScrollingCacheEnabled;
    private final ItemInfo mTempItem = new ItemInfo();
    private final Rect mTempRect = new Rect();
    private EdgeEffectCompat mTopEdge;
    private int mTouchSlop;
    private VelocityTracker mVelocityTracker;

    /* renamed from: fr.castorflex.android.verticalviewpager.VerticalViewPager$1 */
    static class C07281 implements Comparator<ItemInfo> {
        C07281() {
        }

        public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
            return ((ItemInfo) obj).position - ((ItemInfo) obj2).position;
        }
    }

    /* renamed from: fr.castorflex.android.verticalviewpager.VerticalViewPager$2 */
    static class C07292 implements Interpolator {
        public final float getInterpolation(float f) {
            f -= 1.0f;
            return ((((f * f) * f) * f) * f) + 1.0f;
        }

        C07292() {
        }
    }

    /* renamed from: fr.castorflex.android.verticalviewpager.VerticalViewPager$3 */
    class C07303 implements Runnable {
        C07303() {
        }

        public final void run() {
            VerticalViewPager.access$000$7cf87c47(VerticalViewPager.this);
            VerticalViewPager.this.populate();
        }
    }

    interface Decor {
    }

    static class ItemInfo {
        float heightFactor;
        Object object;
        float offset;
        int position;
        boolean scrolling;

        ItemInfo() {
        }
    }

    public static class LayoutParams extends android.view.ViewGroup.LayoutParams {
        int childIndex;
        public int gravity;
        float heightFactor = BitmapDescriptorFactory.HUE_RED;
        public boolean isDecor;
        boolean needsMeasure;
        int position;

        public LayoutParams() {
            super(-1, -1);
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            context = context.obtainStyledAttributes(attributeSet, VerticalViewPager.LAYOUT_ATTRS);
            this.gravity = context.getInteger(null, 48);
            context.recycle();
        }
    }

    class PagerObserver extends DataSetObserver {
        private PagerObserver() {
        }

        public final void onChanged() {
            VerticalViewPager.this.dataSetChanged();
        }

        public final void onInvalidated() {
            VerticalViewPager.this.dataSetChanged();
        }
    }

    public static class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR = ParcelableCompat.newCreator$1bb9b842(new C12751());
        Parcelable adapterState;
        ClassLoader loader;
        int position;

        /* renamed from: fr.castorflex.android.verticalviewpager.VerticalViewPager$SavedState$1 */
        static class C12751 implements UnobservedExceptionHandler<SavedState> {
            C12751() {
            }

            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return new SavedState[i];
            }

            public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.position);
            parcel.writeParcelable(this.adapterState, i);
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder("FragmentPager.SavedState{");
            stringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
            stringBuilder.append(" position=");
            stringBuilder.append(this.position);
            stringBuilder.append("}");
            return stringBuilder.toString();
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel);
            if (classLoader == null) {
                classLoader = getClass().getClassLoader();
            }
            this.position = parcel.readInt();
            this.adapterState = parcel.readParcelable(classLoader);
            this.loader = classLoader;
        }
    }

    static class ViewPositionComparator implements Comparator<View> {
        ViewPositionComparator() {
        }

        public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
            LayoutParams layoutParams = (LayoutParams) ((View) obj).getLayoutParams();
            LayoutParams layoutParams2 = (LayoutParams) ((View) obj2).getLayoutParams();
            if (layoutParams.isDecor != layoutParams2.isDecor) {
                return layoutParams.isDecor != null ? 1 : -1;
            } else {
                return layoutParams.position - layoutParams2.position;
            }
        }
    }

    class MyAccessibilityDelegate extends AccessibilityDelegateCompat {
        MyAccessibilityDelegate() {
        }

        public final void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName(ViewPager.class.getName());
            view = AccessibilityRecordCompat.obtain();
            boolean z = true;
            if (VerticalViewPager.this.mAdapter == null || VerticalViewPager.this.mAdapter.getCount() <= 1) {
                z = false;
            }
            view.setScrollable(z);
            if (accessibilityEvent.getEventType() == 4096 && VerticalViewPager.this.mAdapter != null) {
                view.setItemCount(VerticalViewPager.this.mAdapter.getCount());
                view.setFromIndex(VerticalViewPager.this.mCurItem);
                view.setToIndex(VerticalViewPager.this.mCurItem);
            }
        }

        public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setClassName(ViewPager.class.getName());
            view = (VerticalViewPager.this.mAdapter == null || VerticalViewPager.this.mAdapter.getCount() <= 1) ? null : 1;
            accessibilityNodeInfoCompat.setScrollable(view);
            if (VerticalViewPager.this.internalCanScrollVertically(1) != null) {
                accessibilityNodeInfoCompat.addAction(4096);
            }
            if (VerticalViewPager.this.internalCanScrollVertically(-1) != null) {
                accessibilityNodeInfoCompat.addAction(8192);
            }
        }

        public final boolean performAccessibilityAction(View view, int i, Bundle bundle) {
            if (super.performAccessibilityAction(view, i, bundle) != null) {
                return true;
            }
            if (i != 4096) {
                if (i != 8192 || VerticalViewPager.this.internalCanScrollVertically(-1) == null) {
                    return false;
                }
                VerticalViewPager.this.setCurrentItem(VerticalViewPager.this.mCurItem - 1);
                return true;
            } else if (VerticalViewPager.this.internalCanScrollVertically(1) == null) {
                return false;
            } else {
                VerticalViewPager.this.setCurrentItem(VerticalViewPager.this.mCurItem + 1);
                return true;
            }
        }
    }

    public VerticalViewPager(Context context) {
        super(context);
        initViewPager();
    }

    public VerticalViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        initViewPager();
    }

    private void initViewPager() {
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context = getContext();
        this.mScroller = new Scroller(context, sInterpolator);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        float f = context.getResources().getDisplayMetrics().density;
        this.mTouchSlop = ViewConfigurationCompat.getScaledPagingTouchSlop(viewConfiguration);
        this.mMinimumVelocity = (int) (400.0f * f);
        this.mMaximumVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        this.mTopEdge = new EdgeEffectCompat(context);
        this.mBottomEdge = new EdgeEffectCompat(context);
        this.mFlingDistance = (int) (25.0f * f);
        this.mCloseEnough = (int) (2.0f * f);
        this.mDefaultGutterSize = (int) (16.0f * f);
        ViewCompat.setAccessibilityDelegate(this, new MyAccessibilityDelegate());
        if (ViewCompat.getImportantForAccessibility(this) == 0) {
            ViewCompat.setImportantForAccessibility(this, 1);
        }
    }

    protected void onDetachedFromWindow() {
        removeCallbacks(this.mEndScrollRunnable);
        super.onDetachedFromWindow();
    }

    public final void setAdapter(PagerAdapter pagerAdapter) {
        if (this.mAdapter != null) {
            int i;
            this.mAdapter.unregisterDataSetObserver(this.mObserver);
            this.mAdapter.startUpdate((ViewGroup) this);
            for (i = 0; i < this.mItems.size(); i++) {
                ItemInfo itemInfo = (ItemInfo) this.mItems.get(i);
                this.mAdapter.destroyItem((ViewGroup) this, itemInfo.position, itemInfo.object);
            }
            this.mAdapter.finishUpdate((ViewGroup) this);
            this.mItems.clear();
            i = 0;
            while (i < getChildCount()) {
                if (!((LayoutParams) getChildAt(i).getLayoutParams()).isDecor) {
                    removeViewAt(i);
                    i--;
                }
                i++;
            }
            this.mCurItem = 0;
            scrollTo(0, 0);
        }
        this.mAdapter = pagerAdapter;
        this.mExpectedAdapterCount = 0;
        if (this.mAdapter != null) {
            if (this.mObserver == null) {
                this.mObserver = new PagerObserver();
            }
            this.mAdapter.registerDataSetObserver(this.mObserver);
            this.mPopulatePending = false;
            pagerAdapter = this.mFirstLayout;
            this.mFirstLayout = true;
            this.mExpectedAdapterCount = this.mAdapter.getCount();
            if (this.mRestoredCurItem >= 0) {
                this.mAdapter.restoreState(this.mRestoredAdapterState, this.mRestoredClassLoader);
                setCurrentItemInternal(this.mRestoredCurItem, false, true, 0);
                this.mRestoredCurItem = -1;
                this.mRestoredAdapterState = null;
                this.mRestoredClassLoader = null;
            } else if (pagerAdapter == null) {
                populate(this.mCurItem);
            } else {
                requestLayout();
            }
        }
    }

    public final void setCurrentItem(int i) {
        this.mPopulatePending = false;
        setCurrentItemInternal(i, this.mFirstLayout ^ 1, false, 0);
    }

    public final void setCurrentItem(int i, boolean z) {
        this.mPopulatePending = false;
        setCurrentItemInternal(i, z, false, 0);
    }

    public final int getCurrentItem() {
        return this.mCurItem;
    }

    private void setCurrentItemInternal(int i, boolean z, boolean z2, int i2) {
        if (this.mAdapter != null) {
            if (this.mAdapter.getCount() > 0) {
                if (!z2 && this.mCurItem == i && this.mItems.size()) {
                    if (this.mScrollingCacheEnabled != 0) {
                        this.mScrollingCacheEnabled = false;
                    }
                    return;
                }
                z2 = true;
                if (i < 0) {
                    i = 0;
                } else if (i >= this.mAdapter.getCount()) {
                    i = this.mAdapter.getCount() - 1;
                }
                int i3 = this.mOffscreenPageLimit;
                if (i > this.mCurItem + i3 || i < this.mCurItem - i3) {
                    for (i3 = 0; i3 < this.mItems.size(); i3++) {
                        ((ItemInfo) this.mItems.get(i3)).scrolling = true;
                    }
                }
                if (this.mCurItem == i) {
                    z2 = false;
                }
                if (this.mFirstLayout) {
                    this.mCurItem = i;
                    if (z2 && this.mOnPageChangeListener) {
                        this.mOnPageChangeListener.onPageSelected(i);
                    }
                    requestLayout();
                    return;
                }
                populate(i);
                scrollToItem(i, z, i2, z2);
                return;
            }
        }
        if (this.mScrollingCacheEnabled != 0) {
            this.mScrollingCacheEnabled = false;
        }
    }

    private void scrollToItem(int i, boolean z, int i2, boolean z2) {
        ItemInfo infoForPosition = infoForPosition(i);
        int measuredHeight = infoForPosition != null ? (int) (((float) ((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom())) * Math.max(this.mFirstOffset, Math.min(infoForPosition.offset, this.mLastOffset))) : 0;
        if (z) {
            smoothScrollTo$4868d30e(measuredHeight, i2);
            if (z2 && this.mOnPageChangeListener) {
                this.mOnPageChangeListener.onPageSelected(i);
            }
            if (z2) {
                return;
            }
        }
        if (z2 && this.mOnPageChangeListener) {
            this.mOnPageChangeListener.onPageSelected(i);
        }
        completeScroll(false);
        scrollTo(0, measuredHeight);
        pageScrolled(measuredHeight);
    }

    public final void setOnPageChangeListener(OnPageChangeListener onPageChangeListener) {
        this.mOnPageChangeListener = onPageChangeListener;
    }

    protected int getChildDrawingOrder(int i, int i2) {
        i = 0;
        return ((LayoutParams) ((View) i.get(i2)).getLayoutParams()).childIndex;
    }

    protected boolean verifyDrawable(Drawable drawable) {
        if (!super.verifyDrawable(drawable)) {
            if (drawable != null) {
                return null;
            }
        }
        return true;
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
    }

    private void smoothScrollTo$4868d30e(int i, int i2) {
        if (getChildCount() == 0) {
            if (this.mScrollingCacheEnabled != 0) {
                this.mScrollingCacheEnabled = false;
            }
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int i3 = 0 - scrollX;
        int i4 = i - scrollY;
        if (i3 == 0 && i4 == 0) {
            completeScroll(false);
            populate(this.mCurItem);
            if (this.mScrollState != 0) {
                this.mScrollState = 0;
                if (this.mOnPageChangeListener != 0) {
                    this.mOnPageChangeListener.onPageScrollStateChanged(0);
                }
            }
            return;
        }
        if (this.mScrollingCacheEnabled != 1) {
            this.mScrollingCacheEnabled = true;
        }
        if (this.mScrollState != 2) {
            this.mScrollState = 2;
            if (this.mOnPageChangeListener != 0) {
                this.mOnPageChangeListener.onPageScrollStateChanged(2);
            }
        }
        i = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        int i5 = i / 2;
        i = (float) i;
        float f = (float) i5;
        f += ((float) Math.sin((double) ((float) (((double) (Math.min(1.0f, (((float) Math.abs(i3)) * 1.0f) / i) - 0.5f)) * 0.4712389167638204d)))) * f;
        i2 = Math.abs(i2);
        if (i2 > 0) {
            i = 4 * Math.round(1000.0f * Math.abs(f / ((float) i2)));
        } else {
            i = (int) (((((float) Math.abs(i3)) / ((i * this.mAdapter.getPageWidth(this.mCurItem)) + 0)) + 1065353216) * 1120403456);
        }
        this.mScroller.startScroll(scrollX, scrollY, i3, i4, Math.min(i, 600));
        ViewCompat.postInvalidateOnAnimation(this);
    }

    private ItemInfo addNewItem(int i, int i2) {
        ItemInfo itemInfo = new ItemInfo();
        itemInfo.position = i;
        itemInfo.object = this.mAdapter.instantiateItem((ViewGroup) this, i);
        itemInfo.heightFactor = this.mAdapter.getPageWidth(i);
        if (i2 >= 0) {
            if (i2 < this.mItems.size()) {
                this.mItems.add(i2, itemInfo);
                return itemInfo;
            }
        }
        this.mItems.add(itemInfo);
        return itemInfo;
    }

    final void dataSetChanged() {
        int count = this.mAdapter.getCount();
        this.mExpectedAdapterCount = count;
        boolean z = this.mItems.size() < (this.mOffscreenPageLimit << 1) + 1 && this.mItems.size() < count;
        boolean z2 = z;
        int i = this.mCurItem;
        int i2 = 0;
        int i3 = i2;
        while (i2 < this.mItems.size()) {
            ItemInfo itemInfo = (ItemInfo) this.mItems.get(i2);
            int itemPosition = this.mAdapter.getItemPosition(itemInfo.object);
            if (itemPosition != -1) {
                if (itemPosition == -2) {
                    this.mItems.remove(i2);
                    i2--;
                    if (i3 == 0) {
                        this.mAdapter.startUpdate((ViewGroup) this);
                        i3 = true;
                    }
                    this.mAdapter.destroyItem((ViewGroup) this, itemInfo.position, itemInfo.object);
                    if (this.mCurItem == itemInfo.position) {
                        i = Math.max(0, Math.min(this.mCurItem, count - 1));
                    }
                } else if (itemInfo.position != itemPosition) {
                    if (itemInfo.position == this.mCurItem) {
                        i = itemPosition;
                    }
                    itemInfo.position = itemPosition;
                }
                z2 = true;
            }
            i2++;
        }
        if (i3 != 0) {
            this.mAdapter.finishUpdate((ViewGroup) this);
        }
        Collections.sort(this.mItems, COMPARATOR);
        if (z2) {
            count = getChildCount();
            for (i2 = 0; i2 < count; i2++) {
                LayoutParams layoutParams = (LayoutParams) getChildAt(i2).getLayoutParams();
                if (!layoutParams.isDecor) {
                    layoutParams.heightFactor = BitmapDescriptorFactory.HUE_RED;
                }
            }
            setCurrentItemInternal(i, false, true, 0);
            requestLayout();
        }
    }

    final void populate() {
        populate(this.mCurItem);
    }

    private void populate(int r19) {
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
        r18 = this;
        r0 = r18;
        r1 = r19;
        r2 = r0.mCurItem;
        if (r2 == r1) goto L_0x001a;
    L_0x0008:
        r2 = r0.mCurItem;
        if (r2 >= r1) goto L_0x000f;
    L_0x000c:
        r2 = 130; // 0x82 float:1.82E-43 double:6.4E-322;
        goto L_0x0011;
    L_0x000f:
        r2 = 33;
    L_0x0011:
        r4 = r0.mCurItem;
        r4 = r0.infoForPosition(r4);
        r0.mCurItem = r1;
        goto L_0x001c;
    L_0x001a:
        r2 = 2;
        r4 = 0;
    L_0x001c:
        r1 = r0.mAdapter;
        if (r1 != 0) goto L_0x0021;
    L_0x0020:
        return;
    L_0x0021:
        r1 = r0.mPopulatePending;
        if (r1 == 0) goto L_0x0026;
    L_0x0025:
        return;
    L_0x0026:
        r1 = r18.getWindowToken();
        if (r1 != 0) goto L_0x002d;
    L_0x002c:
        return;
    L_0x002d:
        r1 = r0.mAdapter;
        r1.startUpdate(r0);
        r1 = r0.mOffscreenPageLimit;
        r5 = r0.mCurItem;
        r5 = r5 - r1;
        r6 = 0;
        r5 = java.lang.Math.max(r6, r5);
        r7 = r0.mAdapter;
        r7 = r7.getCount();
        r8 = r7 + -1;
        r9 = r0.mCurItem;
        r9 = r9 + r1;
        r1 = java.lang.Math.min(r8, r9);
        r8 = r0.mExpectedAdapterCount;
        if (r7 == r8) goto L_0x00a4;
    L_0x004f:
        r1 = r18.getResources();	 Catch:{ NotFoundException -> 0x005c }
        r2 = r18.getId();	 Catch:{ NotFoundException -> 0x005c }
        r1 = r1.getResourceName(r2);	 Catch:{ NotFoundException -> 0x005c }
        goto L_0x0064;
    L_0x005c:
        r1 = r18.getId();
        r1 = java.lang.Integer.toHexString(r1);
    L_0x0064:
        r2 = new java.lang.IllegalStateException;
        r3 = new java.lang.StringBuilder;
        r4 = "The application's PagerAdapter changed the adapter's contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: ";
        r3.<init>(r4);
        r4 = r0.mExpectedAdapterCount;
        r3.append(r4);
        r4 = ", found: ";
        r3.append(r4);
        r3.append(r7);
        r4 = " Pager id: ";
        r3.append(r4);
        r3.append(r1);
        r1 = " Pager class: ";
        r3.append(r1);
        r1 = r18.getClass();
        r3.append(r1);
        r1 = " Problematic adapter: ";
        r3.append(r1);
        r1 = r0.mAdapter;
        r1 = r1.getClass();
        r3.append(r1);
        r1 = r3.toString();
        r2.<init>(r1);
        throw r2;
    L_0x00a4:
        r8 = r6;
    L_0x00a5:
        r9 = r0.mItems;
        r9 = r9.size();
        if (r8 >= r9) goto L_0x00c5;
    L_0x00ad:
        r9 = r0.mItems;
        r9 = r9.get(r8);
        r9 = (fr.castorflex.android.verticalviewpager.VerticalViewPager.ItemInfo) r9;
        r10 = r9.position;
        r11 = r0.mCurItem;
        if (r10 < r11) goto L_0x00c2;
    L_0x00bb:
        r10 = r9.position;
        r11 = r0.mCurItem;
        if (r10 != r11) goto L_0x00c5;
    L_0x00c1:
        goto L_0x00c6;
    L_0x00c2:
        r8 = r8 + 1;
        goto L_0x00a5;
    L_0x00c5:
        r9 = 0;
    L_0x00c6:
        if (r9 != 0) goto L_0x00d0;
    L_0x00c8:
        if (r7 <= 0) goto L_0x00d0;
    L_0x00ca:
        r9 = r0.mCurItem;
        r9 = r0.addNewItem(r9, r8);
    L_0x00d0:
        if (r9 == 0) goto L_0x01fa;
    L_0x00d2:
        r11 = r8 + -1;
        if (r11 < 0) goto L_0x00df;
    L_0x00d6:
        r12 = r0.mItems;
        r12 = r12.get(r11);
        r12 = (fr.castorflex.android.verticalviewpager.VerticalViewPager.ItemInfo) r12;
        goto L_0x00e0;
    L_0x00df:
        r12 = 0;
    L_0x00e0:
        r13 = r18.getMeasuredHeight();
        r14 = r18.getPaddingTop();
        r13 = r13 - r14;
        r14 = r18.getPaddingBottom();
        r13 = r13 - r14;
        r14 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        if (r13 > 0) goto L_0x00f4;
    L_0x00f2:
        r3 = 0;
        goto L_0x0100;
    L_0x00f4:
        r15 = r9.heightFactor;
        r15 = r14 - r15;
        r3 = r18.getPaddingLeft();
        r3 = (float) r3;
        r6 = (float) r13;
        r3 = r3 / r6;
        r3 = r3 + r15;
    L_0x0100:
        r6 = r0.mCurItem;
        r6 = r6 + -1;
        r15 = r11;
        r11 = r8;
        r8 = 0;
    L_0x0107:
        if (r6 < 0) goto L_0x0165;
    L_0x0109:
        r16 = (r8 > r3 ? 1 : (r8 == r3 ? 0 : -1));
        if (r16 < 0) goto L_0x0134;
    L_0x010d:
        if (r6 >= r5) goto L_0x0134;
    L_0x010f:
        if (r12 == 0) goto L_0x0165;
    L_0x0111:
        r10 = r12.position;
        if (r6 != r10) goto L_0x0162;
    L_0x0115:
        r10 = r12.scrolling;
        if (r10 != 0) goto L_0x0162;
    L_0x0119:
        r10 = r0.mItems;
        r10.remove(r15);
        r10 = r0.mAdapter;
        r12 = r12.object;
        r10.destroyItem(r0, r6, r12);
        r15 = r15 + -1;
        r11 = r11 + -1;
        if (r15 < 0) goto L_0x0160;
    L_0x012b:
        r10 = r0.mItems;
        r10 = r10.get(r15);
        r10 = (fr.castorflex.android.verticalviewpager.VerticalViewPager.ItemInfo) r10;
        goto L_0x0161;
    L_0x0134:
        if (r12 == 0) goto L_0x014a;
    L_0x0136:
        r10 = r12.position;
        if (r6 != r10) goto L_0x014a;
    L_0x013a:
        r10 = r12.heightFactor;
        r8 = r8 + r10;
        r15 = r15 + -1;
        if (r15 < 0) goto L_0x0160;
    L_0x0141:
        r10 = r0.mItems;
        r10 = r10.get(r15);
        r10 = (fr.castorflex.android.verticalviewpager.VerticalViewPager.ItemInfo) r10;
        goto L_0x0161;
    L_0x014a:
        r10 = r15 + 1;
        r10 = r0.addNewItem(r6, r10);
        r10 = r10.heightFactor;
        r8 = r8 + r10;
        r11 = r11 + 1;
        if (r15 < 0) goto L_0x0160;
    L_0x0157:
        r10 = r0.mItems;
        r10 = r10.get(r15);
        r10 = (fr.castorflex.android.verticalviewpager.VerticalViewPager.ItemInfo) r10;
        goto L_0x0161;
    L_0x0160:
        r10 = 0;
    L_0x0161:
        r12 = r10;
    L_0x0162:
        r6 = r6 + -1;
        goto L_0x0107;
    L_0x0165:
        r3 = r9.heightFactor;
        r5 = r11 + 1;
        r6 = (r3 > r14 ? 1 : (r3 == r14 ? 0 : -1));
        if (r6 >= 0) goto L_0x01f7;
    L_0x016d:
        r6 = r0.mItems;
        r6 = r6.size();
        if (r5 >= r6) goto L_0x017e;
    L_0x0175:
        r6 = r0.mItems;
        r6 = r6.get(r5);
        r6 = (fr.castorflex.android.verticalviewpager.VerticalViewPager.ItemInfo) r6;
        goto L_0x017f;
    L_0x017e:
        r6 = 0;
    L_0x017f:
        if (r13 > 0) goto L_0x0183;
    L_0x0181:
        r10 = 0;
        goto L_0x018c;
    L_0x0183:
        r8 = r18.getPaddingRight();
        r8 = (float) r8;
        r10 = (float) r13;
        r8 = r8 / r10;
        r10 = r8 + r14;
    L_0x018c:
        r8 = r0.mCurItem;
    L_0x018e:
        r8 = r8 + 1;
        if (r8 >= r7) goto L_0x01f7;
    L_0x0192:
        r12 = (r3 > r10 ? 1 : (r3 == r10 ? 0 : -1));
        if (r12 < 0) goto L_0x01c1;
    L_0x0196:
        if (r8 <= r1) goto L_0x01c1;
    L_0x0198:
        if (r6 == 0) goto L_0x01f7;
    L_0x019a:
        r12 = r6.position;
        if (r8 != r12) goto L_0x01f6;
    L_0x019e:
        r12 = r6.scrolling;
        if (r12 != 0) goto L_0x01f6;
    L_0x01a2:
        r12 = r0.mItems;
        r12.remove(r5);
        r12 = r0.mAdapter;
        r6 = r6.object;
        r12.destroyItem(r0, r8, r6);
        r6 = r0.mItems;
        r6 = r6.size();
        if (r5 >= r6) goto L_0x01bf;
    L_0x01b6:
        r6 = r0.mItems;
        r6 = r6.get(r5);
        r6 = (fr.castorflex.android.verticalviewpager.VerticalViewPager.ItemInfo) r6;
        goto L_0x01f6;
    L_0x01bf:
        r6 = 0;
        goto L_0x01f6;
    L_0x01c1:
        if (r6 == 0) goto L_0x01dd;
    L_0x01c3:
        r12 = r6.position;
        if (r8 != r12) goto L_0x01dd;
    L_0x01c7:
        r6 = r6.heightFactor;
        r3 = r3 + r6;
        r5 = r5 + 1;
        r6 = r0.mItems;
        r6 = r6.size();
        if (r5 >= r6) goto L_0x01bf;
    L_0x01d4:
        r6 = r0.mItems;
        r6 = r6.get(r5);
        r6 = (fr.castorflex.android.verticalviewpager.VerticalViewPager.ItemInfo) r6;
        goto L_0x01f6;
    L_0x01dd:
        r6 = r0.addNewItem(r8, r5);
        r5 = r5 + 1;
        r6 = r6.heightFactor;
        r3 = r3 + r6;
        r6 = r0.mItems;
        r6 = r6.size();
        if (r5 >= r6) goto L_0x01bf;
    L_0x01ee:
        r6 = r0.mItems;
        r6 = r6.get(r5);
        r6 = (fr.castorflex.android.verticalviewpager.VerticalViewPager.ItemInfo) r6;
    L_0x01f6:
        goto L_0x018e;
    L_0x01f7:
        r0.calculatePageOffsets(r9, r11, r4);
    L_0x01fa:
        r1 = r0.mAdapter;
        r3 = r0.mCurItem;
        if (r9 == 0) goto L_0x0203;
    L_0x0200:
        r4 = r9.object;
        goto L_0x0204;
    L_0x0203:
        r4 = 0;
    L_0x0204:
        r1.setPrimaryItem(r0, r3, r4);
        r1 = r0.mAdapter;
        r1.finishUpdate(r0);
        r1 = r18.getChildCount();
        r3 = 0;
    L_0x0211:
        if (r3 >= r1) goto L_0x023d;
    L_0x0213:
        r4 = r0.getChildAt(r3);
        r5 = r4.getLayoutParams();
        r5 = (fr.castorflex.android.verticalviewpager.VerticalViewPager.LayoutParams) r5;
        r5.childIndex = r3;
        r6 = r5.isDecor;
        if (r6 != 0) goto L_0x0239;
    L_0x0223:
        r6 = r5.heightFactor;
        r7 = 0;
        r6 = (r6 > r7 ? 1 : (r6 == r7 ? 0 : -1));
        if (r6 != 0) goto L_0x023a;
    L_0x022a:
        r4 = r0.infoForChild(r4);
        if (r4 == 0) goto L_0x023a;
    L_0x0230:
        r6 = r4.heightFactor;
        r5.heightFactor = r6;
        r4 = r4.position;
        r5.position = r4;
        goto L_0x023a;
    L_0x0239:
        r7 = 0;
    L_0x023a:
        r3 = r3 + 1;
        goto L_0x0211;
    L_0x023d:
        r1 = r18.hasFocus();
        if (r1 == 0) goto L_0x0277;
    L_0x0243:
        r1 = r18.findFocus();
        if (r1 == 0) goto L_0x024e;
    L_0x0249:
        r3 = r0.infoForAnyChild(r1);
        goto L_0x024f;
    L_0x024e:
        r3 = 0;
    L_0x024f:
        if (r3 == 0) goto L_0x0257;
    L_0x0251:
        r1 = r3.position;
        r3 = r0.mCurItem;
        if (r1 == r3) goto L_0x0277;
    L_0x0257:
        r1 = 0;
    L_0x0258:
        r3 = r18.getChildCount();
        if (r1 >= r3) goto L_0x0277;
    L_0x025e:
        r3 = r0.getChildAt(r1);
        r4 = r0.infoForChild(r3);
        if (r4 == 0) goto L_0x0274;
    L_0x0268:
        r4 = r4.position;
        r5 = r0.mCurItem;
        if (r4 != r5) goto L_0x0274;
    L_0x026e:
        r3 = r3.requestFocus(r2);
        if (r3 != 0) goto L_0x0277;
    L_0x0274:
        r1 = r1 + 1;
        goto L_0x0258;
    L_0x0277:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: fr.castorflex.android.verticalviewpager.VerticalViewPager.populate(int):void");
    }

    private void calculatePageOffsets(ItemInfo itemInfo, int i, ItemInfo itemInfo2) {
        int size;
        int count = this.mAdapter.getCount();
        int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        float f = BitmapDescriptorFactory.HUE_RED;
        if (measuredHeight > 0) {
            f = BitmapDescriptorFactory.HUE_RED / ((float) measuredHeight);
        }
        if (itemInfo2 != null) {
            int i2 = itemInfo2.position;
            ItemInfo itemInfo3;
            if (i2 < itemInfo.position) {
                float f2 = (itemInfo2.offset + itemInfo2.heightFactor) + f;
                i2++;
                itemInfo2 = null;
                while (i2 <= itemInfo.position && itemInfo2 < this.mItems.size()) {
                    itemInfo3 = (ItemInfo) this.mItems.get(itemInfo2);
                    while (i2 > itemInfo3.position && itemInfo2 < this.mItems.size() - 1) {
                        itemInfo2++;
                        itemInfo3 = (ItemInfo) this.mItems.get(itemInfo2);
                    }
                    while (i2 < itemInfo3.position) {
                        f2 += this.mAdapter.getPageWidth(i2) + f;
                        i2++;
                    }
                    itemInfo3.offset = f2;
                    f2 += itemInfo3.heightFactor + f;
                    i2++;
                }
            } else if (i2 > itemInfo.position) {
                size = this.mItems.size() - 1;
                itemInfo2 = itemInfo2.offset;
                i2--;
                while (i2 >= itemInfo.position && size >= 0) {
                    itemInfo3 = (ItemInfo) this.mItems.get(size);
                    while (i2 < itemInfo3.position && size > 0) {
                        size--;
                        itemInfo3 = (ItemInfo) this.mItems.get(size);
                    }
                    while (i2 > itemInfo3.position) {
                        itemInfo2 -= this.mAdapter.getPageWidth(i2) + f;
                        i2--;
                    }
                    itemInfo2 -= itemInfo3.heightFactor + f;
                    itemInfo3.offset = itemInfo2;
                    i2--;
                }
            }
        }
        itemInfo2 = this.mItems.size();
        float f3 = itemInfo.offset;
        size = itemInfo.position - 1;
        this.mFirstOffset = itemInfo.position == 0 ? itemInfo.offset : -3.4028235E38f;
        count--;
        this.mLastOffset = itemInfo.position == count ? (itemInfo.offset + itemInfo.heightFactor) - 1.0f : Float.MAX_VALUE;
        int i3 = i - 1;
        while (i3 >= 0) {
            ItemInfo itemInfo4 = (ItemInfo) this.mItems.get(i3);
            while (size > itemInfo4.position) {
                f3 -= this.mAdapter.getPageWidth(size) + f;
                size--;
            }
            f3 -= itemInfo4.heightFactor + f;
            itemInfo4.offset = f3;
            if (itemInfo4.position == 0) {
                this.mFirstOffset = f3;
            }
            i3--;
            size--;
        }
        f3 = (itemInfo.offset + itemInfo.heightFactor) + f;
        itemInfo = itemInfo.position + 1;
        i++;
        while (i < itemInfo2) {
            ItemInfo itemInfo5 = (ItemInfo) this.mItems.get(i);
            while (itemInfo < itemInfo5.position) {
                f3 += this.mAdapter.getPageWidth(itemInfo) + f;
                itemInfo++;
            }
            if (itemInfo5.position == count) {
                this.mLastOffset = (itemInfo5.heightFactor + f3) - 1.0f;
            }
            itemInfo5.offset = f3;
            f3 += itemInfo5.heightFactor + f;
            i++;
            itemInfo++;
        }
        this.mNeedCalculatePageOffsets = false;
    }

    public Parcelable onSaveInstanceState() {
        Parcelable savedState = new SavedState(super.onSaveInstanceState());
        savedState.position = this.mCurItem;
        if (this.mAdapter != null) {
            savedState.adapterState = this.mAdapter.saveState();
        }
        return savedState;
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            super.onRestoreInstanceState(savedState.getSuperState());
            if (this.mAdapter != null) {
                this.mAdapter.restoreState(savedState.adapterState, savedState.loader);
                setCurrentItemInternal(savedState.position, false, true, 0);
                return;
            }
            this.mRestoredCurItem = savedState.position;
            this.mRestoredAdapterState = savedState.adapterState;
            this.mRestoredClassLoader = savedState.loader;
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }

    public void addView(View view, int i, android.view.ViewGroup.LayoutParams layoutParams) {
        if (!checkLayoutParams(layoutParams)) {
            layoutParams = generateLayoutParams(layoutParams);
        }
        LayoutParams layoutParams2 = (LayoutParams) layoutParams;
        layoutParams2.isDecor |= view instanceof Decor;
        if (!this.mInLayout) {
            super.addView(view, i, layoutParams);
        } else if (layoutParams2 == null || !layoutParams2.isDecor) {
            layoutParams2.needsMeasure = true;
            addViewInLayout(view, i, layoutParams);
        } else {
            throw new IllegalStateException("Cannot add pager decor view during layout");
        }
    }

    public void removeView(View view) {
        if (this.mInLayout) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    private ItemInfo infoForChild(View view) {
        for (int i = 0; i < this.mItems.size(); i++) {
            ItemInfo itemInfo = (ItemInfo) this.mItems.get(i);
            if (this.mAdapter.isViewFromObject(view, itemInfo.object)) {
                return itemInfo;
            }
        }
        return null;
    }

    private ItemInfo infoForAnyChild(View view) {
        while (true) {
            View parent = view.getParent();
            if (parent == this) {
                return infoForChild(view);
            }
            if (parent == null) {
                break;
            } else if ((parent instanceof View) == null) {
                break;
            } else {
                view = parent;
            }
        }
        return null;
    }

    private ItemInfo infoForPosition(int i) {
        for (int i2 = 0; i2 < this.mItems.size(); i2++) {
            ItemInfo itemInfo = (ItemInfo) this.mItems.get(i2);
            if (itemInfo.position == i) {
                return itemInfo;
            }
        }
        return 0;
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mFirstLayout = true;
    }

    protected void onMeasure(int i, int i2) {
        int i3;
        boolean z = false;
        setMeasuredDimension(getDefaultSize(0, i), getDefaultSize(0, i2));
        int measuredHeight = getMeasuredHeight();
        this.mGutterSize = Math.min(measuredHeight / 10, this.mDefaultGutterSize);
        int measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
        measuredHeight = (measuredHeight - getPaddingTop()) - getPaddingBottom();
        int childCount = getChildCount();
        int i4 = measuredHeight;
        measuredHeight = 0;
        while (true) {
            boolean z2 = true;
            int i5 = 1073741824;
            if (measuredHeight >= childCount) {
                break;
            }
            View childAt = getChildAt(measuredHeight);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams != null && layoutParams.isDecor) {
                    int i6;
                    int i7;
                    int i8 = layoutParams.gravity & 7;
                    int i9 = layoutParams.gravity & 112;
                    if (i9 != 48) {
                        if (i9 != 80) {
                            i9 = z;
                            if (i8 != 3) {
                                if (i8 == 5) {
                                    z2 = z;
                                }
                            }
                            i8 = Integer.MIN_VALUE;
                            if (i9 != 0) {
                                i6 = Integer.MIN_VALUE;
                                i8 = 1073741824;
                            } else {
                                i6 = z2 ? 1073741824 : Integer.MIN_VALUE;
                            }
                            if (layoutParams.width == -2) {
                                i7 = layoutParams.width == -1 ? layoutParams.width : measuredWidth;
                                i8 = 1073741824;
                            } else {
                                i7 = measuredWidth;
                            }
                            if (layoutParams.height == -2) {
                                i3 = layoutParams.height == -1 ? layoutParams.height : i4;
                            } else {
                                i3 = i4;
                                i5 = i6;
                            }
                            childAt.measure(MeasureSpec.makeMeasureSpec(i7, i8), MeasureSpec.makeMeasureSpec(i3, i5));
                            if (i9 != 0) {
                                i4 -= childAt.getMeasuredHeight();
                            } else if (z2) {
                                measuredWidth -= childAt.getMeasuredWidth();
                            }
                        }
                    }
                    i9 = true;
                    if (i8 != 3) {
                        if (i8 == 5) {
                            z2 = z;
                        }
                    }
                    i8 = Integer.MIN_VALUE;
                    if (i9 != 0) {
                        i6 = Integer.MIN_VALUE;
                        i8 = 1073741824;
                    } else if (z2) {
                    }
                    if (layoutParams.width == -2) {
                        i7 = measuredWidth;
                    } else {
                        if (layoutParams.width == -1) {
                        }
                        i8 = 1073741824;
                    }
                    if (layoutParams.height == -2) {
                        i3 = i4;
                        i5 = i6;
                    } else if (layoutParams.height == -1) {
                    }
                    childAt.measure(MeasureSpec.makeMeasureSpec(i7, i8), MeasureSpec.makeMeasureSpec(i3, i5));
                    if (i9 != 0) {
                        i4 -= childAt.getMeasuredHeight();
                    } else if (z2) {
                        measuredWidth -= childAt.getMeasuredWidth();
                    }
                }
            }
            measuredHeight++;
            z = false;
        }
        r0.mChildWidthMeasureSpec = MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
        r0.mChildHeightMeasureSpec = MeasureSpec.makeMeasureSpec(i4, 1073741824);
        r0.mInLayout = true;
        populate(r0.mCurItem);
        i3 = 0;
        r0.mInLayout = false;
        measuredHeight = getChildCount();
        while (i3 < measuredHeight) {
            View childAt2 = getChildAt(i3);
            if (childAt2.getVisibility() != 8) {
                LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
                if (layoutParams2 == null || !layoutParams2.isDecor) {
                    childAt2.measure(r0.mChildWidthMeasureSpec, MeasureSpec.makeMeasureSpec((int) (((float) i4) * layoutParams2.heightFactor), 1073741824));
                }
            }
            i3++;
        }
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i2 != i4) {
            if (i4 <= 0 || this.mItems.isEmpty() != 0) {
                i = infoForPosition(this.mCurItem);
                i = (int) ((i != 0 ? Math.min(i.offset, this.mLastOffset) : 0) * ((float) ((i2 - getPaddingTop()) - getPaddingBottom())));
                if (i != getScrollY()) {
                    completeScroll(0);
                    scrollTo(getScrollX(), i);
                }
            } else {
                int scrollY = (int) ((((float) getScrollY()) / ((float) ((i4 - getPaddingTop()) - getPaddingBottom()))) * ((float) ((i2 - getPaddingTop()) - getPaddingBottom())));
                scrollTo(getScrollX(), scrollY);
                if (this.mScroller.isFinished() == 0) {
                    this.mScroller.startScroll(0, scrollY, 0, (int) (infoForPosition(this.mCurItem).offset * ((float) i2)), this.mScroller.getDuration() - this.mScroller.timePassed());
                }
            }
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean z2;
        VerticalViewPager verticalViewPager = this;
        int childCount = getChildCount();
        int i5 = i3 - i;
        int i6 = i4 - i2;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int scrollY = getScrollY();
        int i7 = paddingRight;
        int i8 = 0;
        paddingRight = paddingLeft;
        for (paddingLeft = 0; paddingLeft < childCount; paddingLeft++) {
            View childAt = getChildAt(paddingLeft);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.isDecor) {
                    int i9 = layoutParams.gravity & 7;
                    int i10 = layoutParams.gravity & 112;
                    if (i9 == 1) {
                        i9 = Math.max((i5 - childAt.getMeasuredWidth()) / 2, paddingRight);
                    } else if (i9 == 3) {
                        i9 = paddingRight;
                        paddingRight = childAt.getMeasuredWidth() + paddingRight;
                    } else if (i9 != 5) {
                        i9 = paddingRight;
                    } else {
                        i9 = (i5 - i7) - childAt.getMeasuredWidth();
                        i7 += childAt.getMeasuredWidth();
                    }
                    if (i10 == 16) {
                        i10 = Math.max((i6 - childAt.getMeasuredHeight()) / 2, paddingTop);
                    } else if (i10 == 48) {
                        i10 = paddingTop;
                        paddingTop = childAt.getMeasuredHeight() + paddingTop;
                    } else if (i10 != 80) {
                        i10 = paddingTop;
                    } else {
                        i10 = (i6 - paddingBottom) - childAt.getMeasuredHeight();
                        paddingBottom += childAt.getMeasuredHeight();
                    }
                    i10 += scrollY;
                    childAt.layout(i9, i10, childAt.getMeasuredWidth() + i9, i10 + childAt.getMeasuredHeight());
                    i8++;
                }
            }
        }
        i6 = (i6 - paddingTop) - paddingBottom;
        for (paddingLeft = 0; paddingLeft < childCount; paddingLeft++) {
            View childAt2 = getChildAt(paddingLeft);
            if (childAt2.getVisibility() != 8) {
                LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
                if (!layoutParams2.isDecor) {
                    ItemInfo infoForChild = infoForChild(childAt2);
                    if (infoForChild != null) {
                        float f = (float) i6;
                        int i11 = ((int) (infoForChild.offset * f)) + paddingTop;
                        if (layoutParams2.needsMeasure) {
                            layoutParams2.needsMeasure = false;
                            childAt2.measure(MeasureSpec.makeMeasureSpec((i5 - paddingRight) - i7, 1073741824), MeasureSpec.makeMeasureSpec((int) (f * layoutParams2.heightFactor), 1073741824));
                        }
                        childAt2.layout(paddingRight, i11, childAt2.getMeasuredWidth() + paddingRight, childAt2.getMeasuredHeight() + i11);
                    }
                }
            }
        }
        verticalViewPager.mLeftPageBounds = paddingRight;
        verticalViewPager.mRightPageBounds = i5 - i7;
        verticalViewPager.mDecorChildCount = i8;
        if (verticalViewPager.mFirstLayout) {
            z2 = false;
            scrollToItem(verticalViewPager.mCurItem, false, 0, false);
        } else {
            z2 = false;
        }
        verticalViewPager.mFirstLayout = z2;
    }

    public void computeScroll() {
        if (this.mScroller.isFinished() || !this.mScroller.computeScrollOffset()) {
            completeScroll(true);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int currX = this.mScroller.getCurrX();
        int currY = this.mScroller.getCurrY();
        if (!(scrollX == currX && scrollY == currY)) {
            scrollTo(currX, currY);
            if (!pageScrolled(currY)) {
                this.mScroller.abortAnimation();
                scrollTo(currX, 0);
            }
        }
        ViewCompat.postInvalidateOnAnimation(this);
    }

    private boolean pageScrolled(int i) {
        if (this.mItems.size() == 0) {
            this.mCalledSuper = false;
            onPageScrolled(0, BitmapDescriptorFactory.HUE_RED, 0);
            if (this.mCalledSuper != 0) {
                return false;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
        ItemInfo infoForCurrentScrollPosition = infoForCurrentScrollPosition();
        float measuredHeight = (float) ((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        float f = BitmapDescriptorFactory.HUE_RED / measuredHeight;
        int i2 = infoForCurrentScrollPosition.position;
        i = ((((float) i) / measuredHeight) - infoForCurrentScrollPosition.offset) / (infoForCurrentScrollPosition.heightFactor + f);
        int i3 = (int) (measuredHeight * i);
        this.mCalledSuper = false;
        onPageScrolled(i2, i, i3);
        if (this.mCalledSuper != 0) {
            return true;
        }
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
    }

    private void onPageScrolled(int i, float f, int i2) {
        if (this.mDecorChildCount > 0) {
            int scrollY = getScrollY();
            int paddingTop = getPaddingTop();
            int paddingBottom = getPaddingBottom();
            int height = getHeight();
            int childCount = getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.isDecor) {
                    int i4 = layoutParams.gravity & 112;
                    if (i4 != 16) {
                        if (i4 == 48) {
                            i4 = childAt.getHeight() + paddingTop;
                        } else if (i4 != 80) {
                            i4 = paddingTop;
                        } else {
                            i4 = (height - paddingBottom) - childAt.getMeasuredHeight();
                            paddingBottom += childAt.getMeasuredHeight();
                        }
                        paddingTop = (paddingTop + scrollY) - childAt.getTop();
                        if (paddingTop != 0) {
                            childAt.offsetTopAndBottom(paddingTop);
                        }
                        paddingTop = i4;
                    } else {
                        i4 = Math.max((height - childAt.getMeasuredHeight()) / 2, paddingTop);
                    }
                    int i5 = i4;
                    i4 = paddingTop;
                    paddingTop = i5;
                    paddingTop = (paddingTop + scrollY) - childAt.getTop();
                    if (paddingTop != 0) {
                        childAt.offsetTopAndBottom(paddingTop);
                    }
                    paddingTop = i4;
                }
            }
        }
        if (this.mOnPageChangeListener != null) {
            this.mOnPageChangeListener.onPageScrolled(i, f, i2);
        }
        this.mCalledSuper = true;
    }

    private void completeScroll(boolean z) {
        boolean z2 = this.mScrollState == 2;
        if (z2) {
            if (this.mScrollingCacheEnabled) {
                this.mScrollingCacheEnabled = false;
            }
            this.mScroller.abortAnimation();
            int scrollX = getScrollX();
            int scrollY = getScrollY();
            int currX = this.mScroller.getCurrX();
            int currY = this.mScroller.getCurrY();
            if (!(scrollX == currX && scrollY == currY)) {
                scrollTo(currX, currY);
            }
        }
        this.mPopulatePending = false;
        boolean z3 = z2;
        for (int i = 0; i < this.mItems.size(); i++) {
            ItemInfo itemInfo = (ItemInfo) this.mItems.get(i);
            if (itemInfo.scrolling) {
                itemInfo.scrolling = false;
                z3 = true;
            }
        }
        if (z3) {
            if (z) {
                ViewCompat.postOnAnimation(this, this.mEndScrollRunnable);
                return;
            }
            this.mEndScrollRunnable.run();
        }
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        View view = this;
        MotionEvent motionEvent2 = motionEvent;
        int action = motionEvent.getAction() & 255;
        if (action != 3) {
            if (action != 1) {
                if (action != 0) {
                    if (view.mIsBeingDragged) {
                        return true;
                    }
                    if (view.mIsUnableToDrag) {
                        return false;
                    }
                }
                float x;
                ViewParent parent;
                if (action == 0) {
                    x = motionEvent.getX();
                    view.mInitialMotionX = x;
                    view.mLastMotionX = x;
                    x = motionEvent.getY();
                    view.mInitialMotionY = x;
                    view.mLastMotionY = x;
                    view.mActivePointerId = MotionEventCompat.getPointerId(motionEvent2, 0);
                    view.mIsUnableToDrag = false;
                    view.mScroller.computeScrollOffset();
                    if (view.mScrollState != 2 || Math.abs(view.mScroller.getFinalY() - view.mScroller.getCurrY()) <= view.mCloseEnough) {
                        completeScroll(false);
                        view.mIsBeingDragged = false;
                    } else {
                        view.mScroller.abortAnimation();
                        view.mPopulatePending = false;
                        populate(view.mCurItem);
                        view.mIsBeingDragged = true;
                        parent = getParent();
                        if (parent != null) {
                            parent.requestDisallowInterceptTouchEvent(true);
                        }
                        if (view.mScrollState != 1) {
                            view.mScrollState = 1;
                            if (view.mOnPageChangeListener != null) {
                                view.mOnPageChangeListener.onPageScrollStateChanged(1);
                            }
                        }
                    }
                } else if (action == 2) {
                    action = view.mActivePointerId;
                    if (action != -1) {
                        action = MotionEventCompat.findPointerIndex(motionEvent2, action);
                        float y = MotionEventCompat.getY(motionEvent2, action);
                        float f = y - view.mLastMotionY;
                        float abs = Math.abs(f);
                        float x2 = MotionEventCompat.getX(motionEvent2, action);
                        float abs2 = Math.abs(x2 - view.mInitialMotionX);
                        if (f != BitmapDescriptorFactory.HUE_RED) {
                            x = view.mLastMotionY;
                            boolean z = (x < ((float) view.mGutterSize) && f > BitmapDescriptorFactory.HUE_RED) || (x > ((float) (getHeight() - view.mGutterSize)) && f < BitmapDescriptorFactory.HUE_RED);
                            if (!z && canScroll(view, false, (int) f, (int) x2, (int) y)) {
                                view.mLastMotionX = x2;
                                view.mLastMotionY = y;
                                view.mIsUnableToDrag = true;
                                return false;
                            }
                        }
                        if (abs > ((float) view.mTouchSlop) && abs * 0.5f > abs2) {
                            view.mIsBeingDragged = true;
                            parent = getParent();
                            if (parent != null) {
                                parent.requestDisallowInterceptTouchEvent(true);
                            }
                            if (view.mScrollState != 1) {
                                view.mScrollState = 1;
                                if (view.mOnPageChangeListener != null) {
                                    view.mOnPageChangeListener.onPageScrollStateChanged(1);
                                }
                            }
                            view.mLastMotionY = f > BitmapDescriptorFactory.HUE_RED ? view.mInitialMotionY + ((float) view.mTouchSlop) : view.mInitialMotionY - ((float) view.mTouchSlop);
                            view.mLastMotionX = x2;
                            if (!view.mScrollingCacheEnabled) {
                                view.mScrollingCacheEnabled = true;
                            }
                        } else if (abs2 > ((float) view.mTouchSlop)) {
                            view.mIsUnableToDrag = true;
                        }
                        if (view.mIsBeingDragged && performDrag(y)) {
                            ViewCompat.postInvalidateOnAnimation(this);
                        }
                    }
                } else if (action == 6) {
                    onSecondaryPointerUp(motionEvent);
                }
                if (view.mVelocityTracker == null) {
                    view.mVelocityTracker = VelocityTracker.obtain();
                }
                view.mVelocityTracker.addMovement(motionEvent2);
                return view.mIsBeingDragged;
            }
        }
        view.mIsBeingDragged = false;
        view.mIsUnableToDrag = false;
        view.mActivePointerId = -1;
        if (view.mVelocityTracker != null) {
            view.mVelocityTracker.recycle();
            view.mVelocityTracker = null;
        }
        return false;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z = false;
        if ((motionEvent.getAction() != 0 || motionEvent.getEdgeFlags() == 0) && this.mAdapter != null) {
            if (this.mAdapter.getCount() != 0) {
                if (this.mVelocityTracker == null) {
                    this.mVelocityTracker = VelocityTracker.obtain();
                }
                this.mVelocityTracker.addMovement(motionEvent);
                float x;
                int yVelocity;
                switch (motionEvent.getAction() & 255) {
                    case 0:
                        this.mScroller.abortAnimation();
                        this.mPopulatePending = false;
                        populate(this.mCurItem);
                        x = motionEvent.getX();
                        this.mInitialMotionX = x;
                        this.mLastMotionX = x;
                        x = motionEvent.getY();
                        this.mInitialMotionY = x;
                        this.mLastMotionY = x;
                        this.mActivePointerId = MotionEventCompat.getPointerId(motionEvent, 0);
                        break;
                    case 1:
                        if (this.mIsBeingDragged) {
                            VelocityTracker velocityTracker = this.mVelocityTracker;
                            velocityTracker.computeCurrentVelocity(1000, (float) this.mMaximumVelocity);
                            yVelocity = (int) VelocityTrackerCompat.getYVelocity(velocityTracker, this.mActivePointerId);
                            this.mPopulatePending = true;
                            int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
                            int scrollY = getScrollY();
                            ItemInfo infoForCurrentScrollPosition = infoForCurrentScrollPosition();
                            int i = infoForCurrentScrollPosition.position;
                            float f = ((((float) scrollY) / ((float) measuredHeight)) - infoForCurrentScrollPosition.offset) / infoForCurrentScrollPosition.heightFactor;
                            if (Math.abs((int) (MotionEventCompat.getY(motionEvent, MotionEventCompat.findPointerIndex(motionEvent, this.mActivePointerId)) - this.mInitialMotionY)) <= this.mFlingDistance || Math.abs(yVelocity) <= this.mMinimumVelocity) {
                                i = (int) ((((float) i) + f) + (i >= this.mCurItem ? 1053609165 : 1058642330));
                            } else if (yVelocity <= 0) {
                                i++;
                            }
                            if (this.mItems.size() > null) {
                                i = Math.max(((ItemInfo) this.mItems.get(0)).position, Math.min(i, ((ItemInfo) this.mItems.get(this.mItems.size() - 1)).position));
                            }
                            setCurrentItemInternal(i, true, true, yVelocity);
                            this.mActivePointerId = -1;
                            this.mIsBeingDragged = false;
                            this.mIsUnableToDrag = false;
                            if (this.mVelocityTracker != null) {
                                this.mVelocityTracker.recycle();
                                this.mVelocityTracker = null;
                            }
                            z = this.mTopEdge.onRelease() | this.mBottomEdge.onRelease();
                            break;
                        }
                        break;
                    case 2:
                        if (!this.mIsBeingDragged) {
                            yVelocity = MotionEventCompat.findPointerIndex(motionEvent, this.mActivePointerId);
                            float y = MotionEventCompat.getY(motionEvent, yVelocity);
                            float abs = Math.abs(y - this.mLastMotionY);
                            x = MotionEventCompat.getX(motionEvent, yVelocity);
                            float abs2 = Math.abs(x - this.mLastMotionX);
                            if (abs > ((float) this.mTouchSlop) && abs > abs2) {
                                this.mIsBeingDragged = true;
                                ViewParent parent = getParent();
                                if (parent != null) {
                                    parent.requestDisallowInterceptTouchEvent(true);
                                }
                                this.mLastMotionY = y - this.mInitialMotionY > BitmapDescriptorFactory.HUE_RED ? this.mInitialMotionY + ((float) this.mTouchSlop) : this.mInitialMotionY - ((float) this.mTouchSlop);
                                this.mLastMotionX = x;
                                if (this.mScrollState != 1) {
                                    this.mScrollState = 1;
                                    if (this.mOnPageChangeListener != null) {
                                        this.mOnPageChangeListener.onPageScrollStateChanged(1);
                                    }
                                }
                                if (!this.mScrollingCacheEnabled) {
                                    this.mScrollingCacheEnabled = true;
                                }
                                ViewParent parent2 = getParent();
                                if (parent2 != null) {
                                    parent2.requestDisallowInterceptTouchEvent(true);
                                }
                            }
                        }
                        if (this.mIsBeingDragged) {
                            z = false | performDrag(MotionEventCompat.getY(motionEvent, MotionEventCompat.findPointerIndex(motionEvent, this.mActivePointerId)));
                            break;
                        }
                        break;
                    case 3:
                        if (this.mIsBeingDragged != null) {
                            scrollToItem(this.mCurItem, true, 0, false);
                            this.mActivePointerId = -1;
                            this.mIsBeingDragged = false;
                            this.mIsUnableToDrag = false;
                            if (this.mVelocityTracker != null) {
                                this.mVelocityTracker.recycle();
                                this.mVelocityTracker = null;
                            }
                            z = this.mTopEdge.onRelease() | this.mBottomEdge.onRelease();
                            break;
                        }
                        break;
                    case 5:
                        yVelocity = MotionEventCompat.getActionIndex(motionEvent);
                        this.mLastMotionY = MotionEventCompat.getY(motionEvent, yVelocity);
                        this.mActivePointerId = MotionEventCompat.getPointerId(motionEvent, yVelocity);
                        break;
                    case 6:
                        onSecondaryPointerUp(motionEvent);
                        this.mLastMotionY = MotionEventCompat.getY(motionEvent, MotionEventCompat.findPointerIndex(motionEvent, this.mActivePointerId));
                        break;
                    default:
                        break;
                }
                if (z) {
                    ViewCompat.postInvalidateOnAnimation(this);
                }
                return true;
            }
        }
        return false;
    }

    private boolean performDrag(float f) {
        boolean z;
        float f2 = this.mLastMotionY - f;
        this.mLastMotionY = f;
        f = ((float) getScrollY()) + f2;
        f2 = (float) ((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        float f3 = this.mFirstOffset * f2;
        float f4 = this.mLastOffset * f2;
        boolean z2 = false;
        ItemInfo itemInfo = (ItemInfo) this.mItems.get(0);
        int i = 1;
        ItemInfo itemInfo2 = (ItemInfo) this.mItems.get(this.mItems.size() - 1);
        if (itemInfo.position != 0) {
            f3 = itemInfo.offset * f2;
            z = false;
        } else {
            z = true;
        }
        if (itemInfo2.position != this.mAdapter.getCount() - 1) {
            f4 = itemInfo2.offset * f2;
            i = 0;
        }
        if (f < f3) {
            if (z) {
                z2 = this.mTopEdge.onPull(Math.abs(f3 - f) / f2);
            }
            f = f3;
        } else if (f > f4) {
            if (i != 0) {
                z2 = this.mBottomEdge.onPull(Math.abs(f - f4) / f2);
            }
            f = f4;
        }
        int i2 = (int) f;
        this.mLastMotionX += f - ((float) i2);
        scrollTo(getScrollX(), i2);
        pageScrolled(i2);
        return z2;
    }

    public void draw(Canvas canvas) {
        super.draw(canvas);
        int overScrollMode = ViewCompat.getOverScrollMode(this);
        int i = 0;
        if (overScrollMode != 0) {
            if (overScrollMode != 1 || this.mAdapter == null || this.mAdapter.getCount() <= 1) {
                this.mTopEdge.finish();
                this.mBottomEdge.finish();
                if (i != 0) {
                    ViewCompat.postInvalidateOnAnimation(this);
                }
            }
        }
        if (!this.mTopEdge.isFinished()) {
            overScrollMode = canvas.save();
            int height = getHeight();
            int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
            canvas.translate((float) getPaddingLeft(), this.mFirstOffset * ((float) height));
            this.mTopEdge.setSize(width, height);
            i = 0 | this.mTopEdge.draw(canvas);
            canvas.restoreToCount(overScrollMode);
        }
        if (!this.mBottomEdge.isFinished()) {
            overScrollMode = canvas.save();
            height = getHeight();
            width = (getWidth() - getPaddingLeft()) - getPaddingRight();
            canvas.rotate(180.0f);
            canvas.translate((float) ((-width) - getPaddingLeft()), (-(this.mLastOffset + 1.0f)) * ((float) height));
            this.mBottomEdge.setSize(width, height);
            i |= this.mBottomEdge.draw(canvas);
            canvas.restoreToCount(overScrollMode);
        }
        if (i != 0) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    private void onSecondaryPointerUp(MotionEvent motionEvent) {
        int actionIndex = MotionEventCompat.getActionIndex(motionEvent);
        if (MotionEventCompat.getPointerId(motionEvent, actionIndex) == this.mActivePointerId) {
            actionIndex = actionIndex == 0 ? 1 : 0;
            this.mLastMotionY = MotionEventCompat.getY(motionEvent, actionIndex);
            this.mActivePointerId = MotionEventCompat.getPointerId(motionEvent, actionIndex);
            if (this.mVelocityTracker != null) {
                this.mVelocityTracker.clear();
            }
        }
    }

    public final boolean internalCanScrollVertically(int i) {
        if (this.mAdapter == null) {
            return false;
        }
        int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        int scrollY = getScrollY();
        if (i < 0) {
            if (scrollY > ((int) (((float) measuredHeight) * this.mFirstOffset))) {
                return true;
            }
            return false;
        } else if (i <= 0 || scrollY >= ((int) (((float) measuredHeight) * this.mLastOffset))) {
            return false;
        } else {
            return true;
        }
    }

    private boolean canScroll(View view, boolean z, int i, int i2, int i3) {
        View view2 = view;
        if (view2 instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view2;
            int scrollX = view2.getScrollX();
            int scrollY = view2.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i4 = i3 + scrollY;
                if (i4 >= childAt.getTop() && i4 < childAt.getBottom()) {
                    int i5 = i2 + scrollX;
                    if (i5 >= childAt.getLeft() && i5 < childAt.getRight()) {
                        if (canScroll(childAt, true, i, i5 - childAt.getLeft(), i4 - childAt.getTop())) {
                            return true;
                        }
                    }
                }
            }
        }
        if (z && ViewCompat.canScrollVertically(view2, -i)) {
            return true;
        }
        return false;
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!super.dispatchKeyEvent(keyEvent)) {
            if (keyEvent.getAction() == 0) {
                int keyCode = keyEvent.getKeyCode();
                if (keyCode != 61) {
                    switch (keyCode) {
                        case 21:
                            keyEvent = arrowScroll(17);
                            break;
                        case 22:
                            keyEvent = arrowScroll(66);
                            break;
                        default:
                            break;
                    }
                } else if (VERSION.SDK_INT >= 11) {
                    if (KeyEventCompat.hasNoModifiers(keyEvent)) {
                        keyEvent = arrowScroll(2);
                    } else if (KeyEventCompat.hasModifiers(keyEvent, 1) != null) {
                        keyEvent = arrowScroll(1);
                    }
                    if (keyEvent != null) {
                        return false;
                    }
                }
            }
            keyEvent = null;
            if (keyEvent != null) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean arrowScroll(int r8) {
        /*
        r7 = this;
        r0 = r7.findFocus();
        r1 = 0;
        r2 = 0;
        r3 = 1;
        if (r0 != r7) goto L_0x000a;
    L_0x0009:
        goto L_0x0066;
    L_0x000a:
        if (r0 == 0) goto L_0x0065;
    L_0x000c:
        r4 = r0.getParent();
    L_0x0010:
        r5 = r4 instanceof android.view.ViewGroup;
        if (r5 == 0) goto L_0x001d;
    L_0x0014:
        if (r4 != r7) goto L_0x0018;
    L_0x0016:
        r4 = r3;
        goto L_0x001e;
    L_0x0018:
        r4 = r4.getParent();
        goto L_0x0010;
    L_0x001d:
        r4 = r2;
    L_0x001e:
        if (r4 != 0) goto L_0x0065;
    L_0x0020:
        r4 = new java.lang.StringBuilder;
        r4.<init>();
        r5 = r0.getClass();
        r5 = r5.getSimpleName();
        r4.append(r5);
        r0 = r0.getParent();
    L_0x0034:
        r5 = r0 instanceof android.view.ViewGroup;
        if (r5 == 0) goto L_0x004d;
    L_0x0038:
        r5 = " => ";
        r4.append(r5);
        r5 = r0.getClass();
        r5 = r5.getSimpleName();
        r4.append(r5);
        r0 = r0.getParent();
        goto L_0x0034;
    L_0x004d:
        r0 = "ViewPager";
        r5 = new java.lang.StringBuilder;
        r6 = "arrowScroll tried to find focus based on non-child current focused view ";
        r5.<init>(r6);
        r4 = r4.toString();
        r5.append(r4);
        r4 = r5.toString();
        android.util.Log.e(r0, r4);
        goto L_0x0066;
    L_0x0065:
        r1 = r0;
    L_0x0066:
        r0 = android.view.FocusFinder.getInstance();
        r0 = r0.findNextFocus(r7, r1, r8);
        r4 = 130; // 0x82 float:1.82E-43 double:6.4E-322;
        r5 = 33;
        if (r0 == 0) goto L_0x00b8;
    L_0x0074:
        if (r0 == r1) goto L_0x00b8;
    L_0x0076:
        if (r8 != r5) goto L_0x009d;
    L_0x0078:
        r4 = r7.mTempRect;
        r4 = r7.getChildRectInPagerCoordinates(r4, r0);
        r4 = r4.top;
        r5 = r7.mTempRect;
        r5 = r7.getChildRectInPagerCoordinates(r5, r1);
        r5 = r5.top;
        if (r1 == 0) goto L_0x0098;
    L_0x008a:
        if (r4 < r5) goto L_0x0098;
    L_0x008c:
        r0 = r7.mCurItem;
        if (r0 <= 0) goto L_0x00d2;
    L_0x0090:
        r0 = r7.mCurItem;
        r0 = r0 - r3;
        r7.setCurrentItem(r0, r3);
    L_0x0096:
        r2 = r3;
        goto L_0x00d2;
    L_0x0098:
        r2 = r0.requestFocus();
        goto L_0x00d2;
    L_0x009d:
        if (r8 != r4) goto L_0x00d2;
    L_0x009f:
        r2 = r7.mTempRect;
        r2 = r7.getChildRectInPagerCoordinates(r2, r0);
        r2 = r2.bottom;
        r3 = r7.mTempRect;
        r3 = r7.getChildRectInPagerCoordinates(r3, r1);
        r3 = r3.bottom;
        if (r1 == 0) goto L_0x00b3;
    L_0x00b1:
        if (r2 <= r3) goto L_0x00c2;
    L_0x00b3:
        r2 = r0.requestFocus();
        goto L_0x00d2;
    L_0x00b8:
        if (r8 == r5) goto L_0x00c7;
    L_0x00ba:
        if (r8 != r3) goto L_0x00bd;
    L_0x00bc:
        goto L_0x00c7;
    L_0x00bd:
        if (r8 == r4) goto L_0x00c2;
    L_0x00bf:
        r0 = 2;
        if (r8 != r0) goto L_0x00d2;
    L_0x00c2:
        r2 = r7.pageDown();
        goto L_0x00d2;
    L_0x00c7:
        r0 = r7.mCurItem;
        if (r0 <= 0) goto L_0x00d2;
    L_0x00cb:
        r0 = r7.mCurItem;
        r0 = r0 - r3;
        r7.setCurrentItem(r0, r3);
        goto L_0x0096;
    L_0x00d2:
        if (r2 == 0) goto L_0x00db;
    L_0x00d4:
        r8 = android.view.SoundEffectConstants.getContantForFocusDirection(r8);
        r7.playSoundEffect(r8);
    L_0x00db:
        return r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: fr.castorflex.android.verticalviewpager.VerticalViewPager.arrowScroll(int):boolean");
    }

    private Rect getChildRectInPagerCoordinates(Rect rect, View view) {
        if (rect == null) {
            rect = new Rect();
        }
        if (view == null) {
            rect.set(0, 0, 0, 0);
            return rect;
        }
        rect.left = view.getLeft();
        rect.right = view.getRight();
        rect.top = view.getTop();
        rect.bottom = view.getBottom();
        view = view.getParent();
        while ((view instanceof ViewGroup) && view != this) {
            ViewGroup viewGroup = (ViewGroup) view;
            rect.left += viewGroup.getLeft();
            rect.right += viewGroup.getRight();
            rect.top += viewGroup.getTop();
            rect.bottom += viewGroup.getBottom();
            view = viewGroup.getParent();
        }
        return rect;
    }

    private boolean pageDown() {
        if (this.mAdapter == null || this.mCurItem >= this.mAdapter.getCount() - 1) {
            return false;
        }
        int i = this.mCurItem + 1;
        this.mPopulatePending = false;
        setCurrentItemInternal(i, true, false, 0);
        return true;
    }

    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i3 = 0; i3 < getChildCount(); i3++) {
                View childAt = getChildAt(i3);
                if (childAt.getVisibility() == 0) {
                    ItemInfo infoForChild = infoForChild(childAt);
                    if (infoForChild != null && infoForChild.position == this.mCurItem) {
                        childAt.addFocusables(arrayList, i, i2);
                    }
                }
            }
        }
        if ((descendantFocusability == 262144 && size != arrayList.size()) || isFocusable() == 0) {
            return;
        }
        if (!(((i2 & 1) == 1 && isInTouchMode() != 0 && isFocusableInTouchMode() == 0) || arrayList == null)) {
            arrayList.add(this);
        }
    }

    public void addTouchables(ArrayList<View> arrayList) {
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0) {
                ItemInfo infoForChild = infoForChild(childAt);
                if (infoForChild != null && infoForChild.position == this.mCurItem) {
                    childAt.addTouchables(arrayList);
                }
            }
        }
    }

    protected boolean onRequestFocusInDescendants(int i, Rect rect) {
        int i2;
        int childCount = getChildCount();
        int i3 = -1;
        if ((i & 2) != 0) {
            i3 = childCount;
            childCount = 0;
            i2 = 1;
        } else {
            childCount--;
            i2 = -1;
        }
        while (childCount != i3) {
            View childAt = getChildAt(childCount);
            if (childAt.getVisibility() == 0) {
                ItemInfo infoForChild = infoForChild(childAt);
                if (infoForChild != null && infoForChild.position == this.mCurItem && childAt.requestFocus(i, rect)) {
                    return true;
                }
            }
            childCount += i2;
        }
        return false;
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0) {
                ItemInfo infoForChild = infoForChild(childAt);
                if (infoForChild != null && infoForChild.position == this.mCurItem && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                    return true;
                }
            }
        }
        return false;
    }

    protected android.view.ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    protected android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    protected boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return (!(layoutParams instanceof LayoutParams) || super.checkLayoutParams(layoutParams) == null) ? null : true;
    }

    public android.view.ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    private ItemInfo infoForCurrentScrollPosition() {
        int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        float scrollY = measuredHeight > 0 ? ((float) getScrollY()) / ((float) measuredHeight) : BitmapDescriptorFactory.HUE_RED;
        float f = measuredHeight > 0 ? BitmapDescriptorFactory.HUE_RED / ((float) measuredHeight) : BitmapDescriptorFactory.HUE_RED;
        float f2 = BitmapDescriptorFactory.HUE_RED;
        float f3 = f2;
        int i = 0;
        int i2 = -1;
        ItemInfo itemInfo = null;
        int i3 = 1;
        while (i < this.mItems.size()) {
            ItemInfo itemInfo2 = (ItemInfo) this.mItems.get(i);
            if (i3 == 0) {
                i2++;
                if (itemInfo2.position != i2) {
                    itemInfo2 = this.mTempItem;
                    itemInfo2.offset = (f2 + f3) + f;
                    itemInfo2.position = i2;
                    itemInfo2.heightFactor = this.mAdapter.getPageWidth(itemInfo2.position);
                    i--;
                }
            }
            f2 = itemInfo2.offset;
            float f4 = (itemInfo2.heightFactor + f2) + f;
            if (i3 == 0) {
                if (scrollY < f2) {
                    return itemInfo;
                }
            }
            if (scrollY >= f4) {
                if (i != this.mItems.size() - 1) {
                    i2 = itemInfo2.position;
                    f3 = itemInfo2.heightFactor;
                    i++;
                    i3 = 0;
                    itemInfo = itemInfo2;
                }
            }
            return itemInfo2;
        }
        return itemInfo;
    }

    static /* synthetic */ void access$000$7cf87c47(VerticalViewPager verticalViewPager) {
        if (verticalViewPager.mScrollState != 0) {
            verticalViewPager.mScrollState = 0;
            if (verticalViewPager.mOnPageChangeListener != null) {
                verticalViewPager.mOnPageChangeListener.onPageScrollStateChanged(0);
            }
        }
    }
}
