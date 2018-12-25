package com.github.ksoichiro.android.observablescrollview;

import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.SparseIntArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.FrameLayout;
import android.widget.GridView;
import android.widget.ListAdapter;
import android.widget.WrapperListAdapter;
import java.util.ArrayList;

public class ObservableGridView extends GridView {
    private SparseIntArray mChildrenHeights;
    private OnScrollListener mOriginalScrollListener;
    private int mPrevFirstVisibleChildHeight;
    private int mPrevFirstVisiblePosition;
    private int mPrevScrollY;
    private int mPrevScrolledChildrenHeight;
    private int mScrollY;

    /* renamed from: com.github.ksoichiro.android.observablescrollview.ObservableGridView$1 */
    class C05251 implements OnScrollListener {
        final /* synthetic */ ObservableGridView this$0;

        public final void onScrollStateChanged(AbsListView absListView, int i) {
            if (this.this$0.mOriginalScrollListener != null) {
                this.this$0.mOriginalScrollListener.onScrollStateChanged(absListView, i);
            }
        }

        public final void onScroll(AbsListView absListView, int i, int i2, int i3) {
            if (this.this$0.mOriginalScrollListener != null) {
                this.this$0.mOriginalScrollListener.onScroll(absListView, i, i2, i3);
            }
            ObservableGridView.access$100(this.this$0);
        }
    }

    private class FullWidthFixedViewLayout extends FrameLayout {
        final /* synthetic */ ObservableGridView this$0;

        protected void onMeasure(int i, int i2) {
            super.onMeasure(MeasureSpec.makeMeasureSpec((this.this$0.getMeasuredWidth() - this.this$0.getPaddingLeft()) - this.this$0.getPaddingRight(), MeasureSpec.getMode(i)), i2);
        }
    }

    public static class HeaderViewGridAdapter implements Filterable, WrapperListAdapter {
        static final ArrayList<Object> EMPTY_INFO_LIST = new ArrayList();
        private final ListAdapter mAdapter;
        boolean mAreAllFixedViewsSelectable;
        private boolean mCacheFirstHeaderView;
        private boolean mCachePlaceHoldView;
        private final DataSetObservable mDataSetObservable = new DataSetObservable();
        ArrayList<Object> mFooterViewInfos;
        ArrayList<Object> mHeaderViewInfos;
        private final boolean mIsFilterable;
        private int mNumColumns;
        private int mRowHeight;

        public HeaderViewGridAdapter(ListAdapter listAdapter) {
            boolean z = true;
            this.mNumColumns = 1;
            this.mRowHeight = -1;
            this.mCachePlaceHoldView = true;
            this.mCacheFirstHeaderView = false;
            this.mAdapter = listAdapter;
            this.mIsFilterable = listAdapter instanceof Filterable;
            this.mHeaderViewInfos = EMPTY_INFO_LIST;
            this.mFooterViewInfos = EMPTY_INFO_LIST;
            listAdapter = this.mHeaderViewInfos;
            if (listAdapter != null) {
                listAdapter = listAdapter.iterator();
                if (listAdapter.hasNext()) {
                    listAdapter.next();
                    listAdapter = null;
                    if (listAdapter != null) {
                        listAdapter = this.mFooterViewInfos;
                        if (listAdapter != null) {
                            listAdapter = listAdapter.iterator();
                            if (listAdapter.hasNext()) {
                                listAdapter.next();
                                listAdapter = null;
                                if (listAdapter != null) {
                                    this.mAreAllFixedViewsSelectable = z;
                                }
                            }
                        }
                        listAdapter = 1;
                        if (listAdapter != null) {
                            this.mAreAllFixedViewsSelectable = z;
                        }
                    }
                    z = false;
                    this.mAreAllFixedViewsSelectable = z;
                }
            }
            listAdapter = 1;
            if (listAdapter != null) {
                listAdapter = this.mFooterViewInfos;
                if (listAdapter != null) {
                    listAdapter = listAdapter.iterator();
                    if (listAdapter.hasNext()) {
                        listAdapter.next();
                        listAdapter = null;
                        if (listAdapter != null) {
                            this.mAreAllFixedViewsSelectable = z;
                        }
                    }
                }
                listAdapter = 1;
                if (listAdapter != null) {
                    this.mAreAllFixedViewsSelectable = z;
                }
            }
            z = false;
            this.mAreAllFixedViewsSelectable = z;
        }

        public final void setNumColumns(int i) {
            if (i > 0 && this.mNumColumns != i) {
                this.mNumColumns = i;
                this.mDataSetObservable.notifyChanged();
            }
        }

        public final boolean isEmpty() {
            if (this.mAdapter != null) {
                if (!this.mAdapter.isEmpty()) {
                    return false;
                }
            }
            return true;
        }

        public final int getCount() {
            if (this.mAdapter != null) {
                return ((this.mFooterViewInfos.size() + this.mHeaderViewInfos.size()) * this.mNumColumns) + ((int) (Math.ceil((double) ((1.0f * ((float) this.mAdapter.getCount())) / ((float) this.mNumColumns))) * ((double) this.mNumColumns)));
            }
            return (this.mFooterViewInfos.size() + this.mHeaderViewInfos.size()) * this.mNumColumns;
        }

        public final boolean areAllItemsEnabled() {
            if (this.mAdapter != null) {
                if (!this.mAreAllFixedViewsSelectable || !this.mAdapter.areAllItemsEnabled()) {
                    return false;
                }
            }
            return true;
        }

        public final boolean hasStableIds() {
            return this.mAdapter != null && this.mAdapter.hasStableIds();
        }

        public final int getViewTypeCount() {
            int viewTypeCount = this.mAdapter == null ? 1 : this.mAdapter.getViewTypeCount();
            return this.mCachePlaceHoldView ? viewTypeCount + ((this.mHeaderViewInfos.size() + 1) + this.mFooterViewInfos.size()) : viewTypeCount;
        }

        public final void registerDataSetObserver(DataSetObserver dataSetObserver) {
            this.mDataSetObservable.registerObserver(dataSetObserver);
            if (this.mAdapter != null) {
                this.mAdapter.registerDataSetObserver(dataSetObserver);
            }
        }

        public final void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            this.mDataSetObservable.unregisterObserver(dataSetObserver);
            if (this.mAdapter != null) {
                this.mAdapter.unregisterDataSetObserver(dataSetObserver);
            }
        }

        public final Filter getFilter() {
            return this.mIsFilterable ? ((Filterable) this.mAdapter).getFilter() : null;
        }

        public final ListAdapter getWrappedAdapter() {
            return this.mAdapter;
        }

        public final boolean isEnabled(int i) {
            int size = this.mHeaderViewInfos.size() * this.mNumColumns;
            if (i < size) {
                if (i % this.mNumColumns == 0) {
                    this.mHeaderViewInfos.get(i / this.mNumColumns);
                }
                return false;
            }
            i -= size;
            if (this.mAdapter != null) {
                size = (int) (Math.ceil((double) ((1.0f * ((float) this.mAdapter.getCount())) / ((float) this.mNumColumns))) * ((double) this.mNumColumns));
                if (i < size) {
                    if (i >= this.mAdapter.getCount() || this.mAdapter.isEnabled(i) == 0) {
                        return false;
                    }
                    return true;
                }
            }
            size = 0;
            i -= size;
            if (i % this.mNumColumns == 0) {
                this.mFooterViewInfos.get(i / this.mNumColumns);
            }
            return false;
        }

        public final Object getItem(int i) {
            int size = this.mHeaderViewInfos.size() * this.mNumColumns;
            if (i >= size) {
                i -= size;
                size = 0;
                if (this.mAdapter != null) {
                    size = (int) (Math.ceil((double) ((1.0f * ((float) this.mAdapter.getCount())) / ((float) this.mNumColumns))) * ((double) this.mNumColumns));
                    if (i < size) {
                        if (i < this.mAdapter.getCount()) {
                            return this.mAdapter.getItem(i);
                        }
                        return null;
                    }
                }
                i -= size;
                if (i % this.mNumColumns != 0) {
                    return null;
                }
                this.mFooterViewInfos.get(i);
                return null;
            } else if (i % this.mNumColumns != 0) {
                return null;
            } else {
                this.mHeaderViewInfos.get(i / this.mNumColumns);
                return null;
            }
        }

        public final long getItemId(int i) {
            int size = this.mHeaderViewInfos.size() * this.mNumColumns;
            if (this.mAdapter != null && i >= size) {
                i -= size;
                if (i < this.mAdapter.getCount()) {
                    return this.mAdapter.getItemId(i);
                }
            }
            return -1;
        }

        public final View getView(int i, View view, ViewGroup viewGroup) {
            int size = this.mHeaderViewInfos.size() * this.mNumColumns;
            View view2 = null;
            if (i < size) {
                this.mHeaderViewInfos.get(i / this.mNumColumns);
                if (i % this.mNumColumns == 0) {
                    return view2;
                }
                if (view == null) {
                    view = new View(viewGroup.getContext());
                }
                view.setVisibility(4);
                view.setMinimumHeight(view2.getHeight());
                return view;
            }
            size = i - size;
            int i2 = 0;
            if (this.mAdapter != null) {
                i2 = (int) (Math.ceil((double) ((1.0f * ((float) this.mAdapter.getCount())) / ((float) this.mNumColumns))) * ((double) this.mNumColumns));
                if (size < i2) {
                    if (size < this.mAdapter.getCount()) {
                        return this.mAdapter.getView(size, view, viewGroup);
                    }
                    if (view == null) {
                        view = new View(viewGroup.getContext());
                    }
                    view.setVisibility(4);
                    view.setMinimumHeight(this.mRowHeight);
                    return view;
                }
            }
            size -= i2;
            if (size < getCount()) {
                this.mFooterViewInfos.get(size / this.mNumColumns);
                if (i % this.mNumColumns == 0) {
                    return view2;
                }
                if (view == null) {
                    view = new View(viewGroup.getContext());
                }
                view.setVisibility(4);
                view.setMinimumHeight(view2.getHeight());
                return view;
            }
            throw new ArrayIndexOutOfBoundsException(i);
        }

        public final int getItemViewType(int i) {
            int size = this.mHeaderViewInfos.size() * this.mNumColumns;
            int i2 = 0;
            int viewTypeCount = this.mAdapter == null ? 0 : this.mAdapter.getViewTypeCount() - 1;
            int i3 = -2;
            if (this.mCachePlaceHoldView && i < size && i % this.mNumColumns != 0) {
                i3 = ((i / this.mNumColumns) + 1) + viewTypeCount;
            }
            i -= size;
            if (this.mAdapter != null) {
                i2 = (int) (Math.ceil((double) ((1.0f * ((float) this.mAdapter.getCount())) / ((float) this.mNumColumns))) * ((double) this.mNumColumns));
                if (i >= 0 && i < i2) {
                    if (i < this.mAdapter.getCount()) {
                        i3 = this.mAdapter.getItemViewType(i);
                    } else if (this.mCachePlaceHoldView) {
                        i3 = (this.mHeaderViewInfos.size() + viewTypeCount) + 1;
                    }
                }
            }
            if (!this.mCachePlaceHoldView) {
                return i3;
            }
            i -= i2;
            return (i < 0 || i >= getCount() || i % this.mNumColumns == 0) ? i3 : ((viewTypeCount + this.mHeaderViewInfos.size()) + 1) + ((i / this.mNumColumns) + 1);
        }
    }

    static class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR = new C05261();
        SparseIntArray childrenHeights;
        int prevFirstVisibleChildHeight;
        int prevFirstVisiblePosition;
        int prevScrollY;
        int prevScrolledChildrenHeight;
        int scrollY;

        /* renamed from: com.github.ksoichiro.android.observablescrollview.ObservableGridView$SavedState$1 */
        static class C05261 implements Creator<SavedState> {
            C05261() {
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

    static /* synthetic */ void access$100(ObservableGridView observableGridView) {
    }

    public void setClipChildren(boolean z) {
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

    public void setAdapter(ListAdapter listAdapter) {
        ArrayList arrayList = null;
        if (arrayList.size() > 0) {
            ListAdapter headerViewGridAdapter = new HeaderViewGridAdapter(listAdapter);
            listAdapter = getNumColumnsCompat();
            if (1 < listAdapter) {
                headerViewGridAdapter.setNumColumns(listAdapter);
            }
            super.setAdapter(headerViewGridAdapter);
            return;
        }
        super.setAdapter(listAdapter);
    }

    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        i = getAdapter();
        if (i != 0 && (i instanceof HeaderViewGridAdapter) != 0) {
            ((HeaderViewGridAdapter) i).setNumColumns(getNumColumnsCompat());
        }
    }

    private int getNumColumnsCompat() {
        if (VERSION.SDK_INT >= 11) {
            return getNumColumns();
        }
        int i = 0;
        if (getChildCount() > 0) {
            int measuredWidth = getChildAt(0).getMeasuredWidth();
            if (measuredWidth > 0) {
                i = getWidth() / measuredWidth;
            }
        }
        return i > 0 ? i : -1;
    }
}
