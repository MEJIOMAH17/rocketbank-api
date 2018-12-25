package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ObservableBoolean;
import android.databinding.ObservableField;
import android.databinding.ObservableInt;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.databinding.adapters.TextViewBindingAdapter;
import android.databinding.adapters.ViewBindingAdapter;
import android.support.design.widget.CoordinatorLayout;
import android.support.design.widget.FloatingActionButton;
import android.support.v4.media.session.PlaybackStateCompat;
import android.support.v7.widget.CardView;
import android.support.v7.widget.SwitchCompat;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.MapActionListener;
import ru.rocketbank.r2d2.data.binding.MapData;
import ru.rocketbank.r2d2.fragments.refill.cash.AtmInstructionType;

public class AtmsMapFragmentBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final LinearLayout bottomSheetHolder;
    public final Button buttonLocation;
    public final CardView commissionAtms;
    public final SwitchCompat commissionAtmsSwitcher;
    public final RocketTextView commissionAtmsTextView;
    public final LinearLayout content;
    public final FloatingActionButton fab;
    public final LinearLayout header;
    private MapData mData;
    private long mDirtyFlags = -1;
    private MapActionListener mZoom;
    private OnClickListenerImpl1 mZoomNavigateMeAndroidViewViewOnClickListener;
    private OnClickListenerImpl3 mZoomOnLocationAndroidViewViewOnClickListener;
    private OnClickListenerImpl2 mZoomOnScaleDownAndroidViewViewOnClickListener;
    private OnClickListenerImpl mZoomOnScaleUpAndroidViewViewOnClickListener;
    private final CoordinatorLayout mboundView0;
    private final FrameLayout mboundView1;
    private final LinearLayout mboundView10;
    private final LinearLayout mboundView11;
    private final RocketTextView mboundView12;
    private final RocketTextView mboundView13;
    private final Button mboundView2;
    private final Button mboundView3;
    private final RocketTextView mboundView6;
    private final RocketTextView mboundView7;
    private final RocketTextView mboundView8;
    private final LinearLayout mboundView9;
    public final LinearLayout zoomPanel;

    public static class OnClickListenerImpl1 implements OnClickListener {
        private MapActionListener value;

        public OnClickListenerImpl1 setValue(MapActionListener mapActionListener) {
            this.value = mapActionListener;
            return mapActionListener == null ? null : this;
        }

        public void onClick(View view) {
            this.value.navigateMe(view);
        }
    }

    public static class OnClickListenerImpl2 implements OnClickListener {
        private MapActionListener value;

        public OnClickListenerImpl2 setValue(MapActionListener mapActionListener) {
            this.value = mapActionListener;
            return mapActionListener == null ? null : this;
        }

        public void onClick(View view) {
            this.value.onScaleDown(view);
        }
    }

    public static class OnClickListenerImpl3 implements OnClickListener {
        private MapActionListener value;

        public OnClickListenerImpl3 setValue(MapActionListener mapActionListener) {
            this.value = mapActionListener;
            return mapActionListener == null ? null : this;
        }

        public void onClick(View view) {
            this.value.onLocation(view);
        }
    }

    public static class OnClickListenerImpl implements OnClickListener {
        private MapActionListener value;

        public OnClickListenerImpl setValue(MapActionListener mapActionListener) {
            this.value = mapActionListener;
            return mapActionListener == null ? null : this;
        }

        public void onClick(View view) {
            this.value.onScaleUp(view);
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.zoom_panel, 15);
        sViewsWithIds.put(C0859R.id.commissionAtmsTextView, 16);
        sViewsWithIds.put(C0859R.id.commissionAtmsSwitcher, 17);
        sViewsWithIds.put(C0859R.id.bottomSheetHolder, 18);
        sViewsWithIds.put(C0859R.id.header, 19);
        sViewsWithIds.put(C0859R.id.content, 20);
    }

    public AtmsMapFragmentBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 8);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 21, sIncludes, sViewsWithIds);
        this.bottomSheetHolder = (LinearLayout) dataBindingComponent[18];
        this.buttonLocation = (Button) dataBindingComponent[4];
        this.buttonLocation.setTag(null);
        this.commissionAtms = (CardView) dataBindingComponent[5];
        this.commissionAtms.setTag(null);
        this.commissionAtmsSwitcher = (SwitchCompat) dataBindingComponent[17];
        this.commissionAtmsTextView = (RocketTextView) dataBindingComponent[16];
        this.content = (LinearLayout) dataBindingComponent[20];
        this.fab = (FloatingActionButton) dataBindingComponent[14];
        this.fab.setTag(null);
        this.header = (LinearLayout) dataBindingComponent[19];
        this.mboundView0 = (CoordinatorLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.mboundView1 = (FrameLayout) dataBindingComponent[1];
        this.mboundView1.setTag(null);
        this.mboundView10 = (LinearLayout) dataBindingComponent[10];
        this.mboundView10.setTag(null);
        this.mboundView11 = (LinearLayout) dataBindingComponent[11];
        this.mboundView11.setTag(null);
        this.mboundView12 = (RocketTextView) dataBindingComponent[12];
        this.mboundView12.setTag(null);
        this.mboundView13 = (RocketTextView) dataBindingComponent[13];
        this.mboundView13.setTag(null);
        this.mboundView2 = (Button) dataBindingComponent[2];
        this.mboundView2.setTag(null);
        this.mboundView3 = (Button) dataBindingComponent[3];
        this.mboundView3.setTag(null);
        this.mboundView6 = (RocketTextView) dataBindingComponent[6];
        this.mboundView6.setTag(null);
        this.mboundView7 = (RocketTextView) dataBindingComponent[7];
        this.mboundView7.setTag(null);
        this.mboundView8 = (RocketTextView) dataBindingComponent[8];
        this.mboundView8.setTag(null);
        this.mboundView9 = (LinearLayout) dataBindingComponent[9];
        this.mboundView9.setTag(null);
        this.zoomPanel = (LinearLayout) dataBindingComponent[15];
        setRootTag(view);
        invalidateAll();
    }

    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID;
        }
        requestRebind();
    }

    public boolean hasPendingBindings() {
        synchronized (this) {
            if (this.mDirtyFlags != 0) {
                return true;
            }
            return false;
        }
    }

    public boolean setVariable(int i, Object obj) {
        if (90 == i) {
            setZoom((MapActionListener) obj);
        } else if (24 != i) {
            return false;
        } else {
            setData((MapData) obj);
        }
        return true;
    }

    public void setZoom(MapActionListener mapActionListener) {
        this.mZoom = mapActionListener;
        synchronized (this) {
            this.mDirtyFlags |= 256;
        }
        notifyPropertyChanged(90);
        super.requestRebind();
    }

    public MapActionListener getZoom() {
        return this.mZoom;
    }

    public void setData(MapData mapData) {
        this.mData = mapData;
        synchronized (this) {
            this.mDirtyFlags |= 512;
        }
        notifyPropertyChanged(24);
        super.requestRebind();
    }

    public MapData getData() {
        return this.mData;
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeDataAtmsWorkingTime((ObservableField) obj, i2);
            case 1:
                return onChangeDataShowMyLocation((ObservableBoolean) obj, i2);
            case 2:
                return onChangeDataCommissionAtmsSwitcherVisible((ObservableBoolean) obj, i2);
            case 3:
                return onChangeDataLimits((ObservableField) obj, i2);
            case 4:
                return onChangeDataAtmsAddress((ObservableField) obj, i2);
            case 5:
                return onChangeDataDetailsHeight((ObservableInt) obj, i2);
            case 6:
                return onChangeDataInstructionType((ObservableField) obj, i2);
            case 7:
                return onChangeDataAtmsName((ObservableField) obj, i2);
            default:
                return false;
        }
    }

    private boolean onChangeDataAtmsWorkingTime(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    private boolean onChangeDataShowMyLocation(ObservableBoolean observableBoolean, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        return true;
    }

    private boolean onChangeDataCommissionAtmsSwitcherVisible(ObservableBoolean observableBoolean, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        return true;
    }

    private boolean onChangeDataLimits(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        return true;
    }

    private boolean onChangeDataAtmsAddress(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 16;
        }
        return true;
    }

    private boolean onChangeDataDetailsHeight(ObservableInt observableInt, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 32;
        }
        return true;
    }

    private boolean onChangeDataInstructionType(ObservableField<AtmInstructionType> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 64;
        }
        return true;
    }

    private boolean onChangeDataAtmsName(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 128;
        }
        return true;
    }

    protected void executeBindings() {
        long j;
        OnClickListener onClickListener;
        OnClickListener onClickListener2;
        OnClickListener onClickListener3;
        OnClickListener onClickListener4;
        AtmsMapFragmentBinding atmsMapFragmentBinding = this;
        synchronized (this) {
            try {
                j = atmsMapFragmentBinding.mDirtyFlags;
                long j2 = 0;
                atmsMapFragmentBinding.mDirtyFlags = 0;
            } finally {
                j = r0;
            }
        }
        MapActionListener mapActionListener = atmsMapFragmentBinding.mZoom;
        MapData mapData = atmsMapFragmentBinding.mData;
        Object obj = 1280;
        if ((j & 1280) == 0 || mapActionListener == null) {
            onClickListener = null;
            onClickListener2 = null;
            onClickListener3 = null;
            onClickListener4 = null;
        } else {
            OnClickListenerImpl onClickListenerImpl;
            OnClickListenerImpl1 onClickListenerImpl1;
            OnClickListenerImpl2 onClickListenerImpl2;
            OnClickListenerImpl3 onClickListenerImpl3;
            if (atmsMapFragmentBinding.mZoomOnScaleUpAndroidViewViewOnClickListener == null) {
                onClickListenerImpl = new OnClickListenerImpl();
                atmsMapFragmentBinding.mZoomOnScaleUpAndroidViewViewOnClickListener = onClickListenerImpl;
            } else {
                onClickListenerImpl = atmsMapFragmentBinding.mZoomOnScaleUpAndroidViewViewOnClickListener;
            }
            onClickListener2 = onClickListenerImpl.setValue(mapActionListener);
            if (atmsMapFragmentBinding.mZoomNavigateMeAndroidViewViewOnClickListener == null) {
                onClickListenerImpl1 = new OnClickListenerImpl1();
                atmsMapFragmentBinding.mZoomNavigateMeAndroidViewViewOnClickListener = onClickListenerImpl1;
            } else {
                onClickListenerImpl1 = atmsMapFragmentBinding.mZoomNavigateMeAndroidViewViewOnClickListener;
            }
            onClickListener3 = onClickListenerImpl1.setValue(mapActionListener);
            if (atmsMapFragmentBinding.mZoomOnScaleDownAndroidViewViewOnClickListener == null) {
                onClickListenerImpl2 = new OnClickListenerImpl2();
                atmsMapFragmentBinding.mZoomOnScaleDownAndroidViewViewOnClickListener = onClickListenerImpl2;
            } else {
                onClickListenerImpl2 = atmsMapFragmentBinding.mZoomOnScaleDownAndroidViewViewOnClickListener;
            }
            onClickListener4 = onClickListenerImpl2.setValue(mapActionListener);
            if (atmsMapFragmentBinding.mZoomOnLocationAndroidViewViewOnClickListener == null) {
                onClickListenerImpl3 = new OnClickListenerImpl3();
                atmsMapFragmentBinding.mZoomOnLocationAndroidViewViewOnClickListener = onClickListenerImpl3;
            } else {
                onClickListenerImpl3 = atmsMapFragmentBinding.mZoomOnLocationAndroidViewViewOnClickListener;
            }
            onClickListener = onClickListenerImpl3.setValue(mapActionListener);
        }
        long j3 = 1568;
        long j4 = 1552;
        long j5 = 1544;
        long j6 = 1540;
        long j7 = 1538;
        long j8 = 1537;
        long j9 = 1600;
        String str;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        String str2;
        String str3;
        int i7;
        String str4;
        long j10;
        String str5;
        if ((j & 1791) != 0) {
            long j11;
            int i8;
            ObservableBoolean showMyLocation;
            boolean z;
            Object commissionAtmsSwitcherVisible;
            boolean z2;
            String str6;
            Object obj2;
            Object atmsAddress;
            String str7;
            Object detailsHeight;
            String str8;
            int i9;
            AtmInstructionType atmInstructionType;
            int i10;
            String str9;
            long j12;
            Object obj3;
            long j13;
            int i11;
            int i12;
            long j14;
            int i13;
            Object atmsName;
            if ((j & 1537) != 0) {
                Object atmsWorkingTime = mapData != null ? mapData.getAtmsWorkingTime() : null;
                updateRegistration(0, atmsWorkingTime);
                if (atmsWorkingTime != null) {
                    str = (String) atmsWorkingTime.get();
                    j11 = j & 1538;
                    i = 1;
                    i8 = 8;
                    if (j11 != 0) {
                        if (mapData == null) {
                            showMyLocation = mapData.getShowMyLocation();
                        } else {
                            obj = null;
                        }
                        updateRegistration(i, obj);
                        if (obj == null) {
                            z = obj.get();
                        } else {
                            z = false;
                        }
                        if (j11 != j2) {
                            j = z ? j | PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM : j | PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH;
                        }
                        if (z) {
                            i2 = i8;
                            j11 = j & j6;
                            if (j11 == j2) {
                                commissionAtmsSwitcherVisible = mapData == null ? mapData.getCommissionAtmsSwitcherVisible() : null;
                                updateRegistration(2, commissionAtmsSwitcherVisible);
                                if (commissionAtmsSwitcherVisible == null) {
                                    z2 = commissionAtmsSwitcherVisible.get();
                                } else {
                                    z2 = false;
                                }
                                if (j11 != j2) {
                                    j = z2 ? j | PlaybackStateCompat.ACTION_SET_REPEAT_MODE : j | PlaybackStateCompat.ACTION_PREPARE_FROM_URI;
                                }
                                i = z2 ? 0 : i8;
                            } else {
                                i = 0;
                            }
                            j11 = j & j5;
                            if (j11 == j2) {
                                commissionAtmsSwitcherVisible = mapData == null ? mapData.getLimits() : null;
                                updateRegistration(3, commissionAtmsSwitcherVisible);
                                str6 = commissionAtmsSwitcherVisible == null ? (String) commissionAtmsSwitcherVisible.get() : null;
                                obj2 = str6 == null ? 1 : null;
                                if (j11 != j2) {
                                    j = obj2 == null ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                }
                                if (obj2 == null) {
                                    i3 = i8;
                                    if ((j & j4) != j2) {
                                        atmsAddress = mapData == null ? mapData.getAtmsAddress() : null;
                                        updateRegistration(4, atmsAddress);
                                        if (atmsAddress != null) {
                                            str7 = (String) atmsAddress.get();
                                            if ((j & j3) == 0) {
                                                if (mapData == null) {
                                                    detailsHeight = mapData.getDetailsHeight();
                                                    str8 = str7;
                                                } else {
                                                    str8 = str7;
                                                    detailsHeight = null;
                                                }
                                                updateRegistration(5, detailsHeight);
                                                if (detailsHeight != null) {
                                                    i4 = detailsHeight.get();
                                                    j11 = j & j9;
                                                    if (j11 == 0) {
                                                        if (mapData == null) {
                                                            detailsHeight = mapData.getInstructionType();
                                                            i9 = i4;
                                                        } else {
                                                            i9 = i4;
                                                            detailsHeight = null;
                                                        }
                                                        updateRegistration(6, detailsHeight);
                                                        atmInstructionType = detailsHeight == null ? (AtmInstructionType) detailsHeight.get() : null;
                                                        if (atmInstructionType != AtmInstructionType.ATM) {
                                                            i10 = i2;
                                                            detailsHeight = 1;
                                                        } else {
                                                            i10 = i2;
                                                            detailsHeight = null;
                                                        }
                                                        if (atmInstructionType != AtmInstructionType.TERMINAL) {
                                                            str9 = str6;
                                                            obj = 1;
                                                        } else {
                                                            str9 = str6;
                                                            obj = null;
                                                        }
                                                        if (atmInstructionType != AtmInstructionType.OFFICE) {
                                                            j12 = 0;
                                                            obj3 = 1;
                                                        } else {
                                                            j12 = 0;
                                                            obj3 = null;
                                                        }
                                                        j13 = j11 == j12 ? detailsHeight == null ? j | 4194304 : j | PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE : j;
                                                        j11 = (j13 & j9) == j12 ? obj == null ? j13 | PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED : j13 | PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED : j13;
                                                        j12 = (j11 & j9) == j12 ? obj3 == null ? j11 | PlaybackStateCompat.ACTION_PREPARE : j11 | PlaybackStateCompat.ACTION_PLAY_FROM_URI : j11;
                                                        i11 = detailsHeight == null ? 0 : i8;
                                                        i12 = obj == null ? 0 : i8;
                                                        i4 = i11;
                                                        i5 = obj3 == null ? 0 : i8;
                                                        j14 = 1664;
                                                        i13 = i12;
                                                        j = j12;
                                                    } else {
                                                        i9 = i4;
                                                        i10 = i2;
                                                        str9 = str6;
                                                        i4 = 0;
                                                        i5 = 0;
                                                        j14 = 1664;
                                                        i13 = 0;
                                                    }
                                                    if ((j & j14) != 0) {
                                                        atmsName = mapData == null ? mapData.getAtmsName() : null;
                                                        updateRegistration(7, atmsName);
                                                        if (atmsName != null) {
                                                            i6 = i4;
                                                            i2 = i5;
                                                            str2 = (String) atmsName.get();
                                                            str3 = str;
                                                            i7 = i13;
                                                            str4 = str8;
                                                            i5 = i9;
                                                            i4 = i10;
                                                            str = str9;
                                                            j10 = 1280;
                                                            if ((j & j10) != 0) {
                                                                str5 = str;
                                                                atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                                                atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                                                atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                                                atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                                                            } else {
                                                                str5 = str;
                                                            }
                                                            if ((j & j7) != 0) {
                                                                atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                                                            }
                                                            if ((j & j6) != 0) {
                                                                atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                                                            }
                                                            if ((j & j3) != 0) {
                                                                ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                                                            }
                                                            if ((j & j9) != 0) {
                                                                atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                                                atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                                                atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                                                            }
                                                            if ((j & j5) != 0) {
                                                                atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                                                            }
                                                            if ((j & 1664) != 0) {
                                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                                                            }
                                                            if ((j & j4) != 0) {
                                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                                                            }
                                                            if ((j & j8) != 0) {
                                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                                                            }
                                                        }
                                                    }
                                                    i6 = i4;
                                                    i2 = i5;
                                                    str3 = str;
                                                    i7 = i13;
                                                    str4 = str8;
                                                    i5 = i9;
                                                    i4 = i10;
                                                    str = str9;
                                                    j10 = 1280;
                                                    str2 = null;
                                                    if ((j & j10) != 0) {
                                                        str5 = str;
                                                    } else {
                                                        str5 = str;
                                                        atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                                        atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                                        atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                                        atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                                                    }
                                                    if ((j & j7) != 0) {
                                                        atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                                                    }
                                                    if ((j & j6) != 0) {
                                                        atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                                                    }
                                                    if ((j & j3) != 0) {
                                                        ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                                                    }
                                                    if ((j & j9) != 0) {
                                                        atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                                        atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                                        atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                                                    }
                                                    if ((j & j5) != 0) {
                                                        atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                                                    }
                                                    if ((j & 1664) != 0) {
                                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                                                    }
                                                    if ((j & j4) != 0) {
                                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                                                    }
                                                    if ((j & j8) != 0) {
                                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                                                    }
                                                }
                                            }
                                            str8 = str7;
                                            i4 = 0;
                                            j11 = j & j9;
                                            if (j11 == 0) {
                                                i9 = i4;
                                                i10 = i2;
                                                str9 = str6;
                                                i4 = 0;
                                                i5 = 0;
                                                j14 = 1664;
                                                i13 = 0;
                                            } else {
                                                if (mapData == null) {
                                                    i9 = i4;
                                                    detailsHeight = null;
                                                } else {
                                                    detailsHeight = mapData.getInstructionType();
                                                    i9 = i4;
                                                }
                                                updateRegistration(6, detailsHeight);
                                                if (detailsHeight == null) {
                                                }
                                                if (atmInstructionType != AtmInstructionType.ATM) {
                                                    i10 = i2;
                                                    detailsHeight = null;
                                                } else {
                                                    i10 = i2;
                                                    detailsHeight = 1;
                                                }
                                                if (atmInstructionType != AtmInstructionType.TERMINAL) {
                                                    str9 = str6;
                                                    obj = null;
                                                } else {
                                                    str9 = str6;
                                                    obj = 1;
                                                }
                                                if (atmInstructionType != AtmInstructionType.OFFICE) {
                                                    j12 = 0;
                                                    obj3 = null;
                                                } else {
                                                    j12 = 0;
                                                    obj3 = 1;
                                                }
                                                if (j11 == j12) {
                                                }
                                                if ((j13 & j9) == j12) {
                                                }
                                                if ((j11 & j9) == j12) {
                                                }
                                                if (detailsHeight == null) {
                                                }
                                                if (obj == null) {
                                                }
                                                if (obj3 == null) {
                                                }
                                                i4 = i11;
                                                i5 = obj3 == null ? 0 : i8;
                                                j14 = 1664;
                                                i13 = i12;
                                                j = j12;
                                            }
                                            if ((j & j14) != 0) {
                                                if (mapData == null) {
                                                }
                                                updateRegistration(7, atmsName);
                                                if (atmsName != null) {
                                                    i6 = i4;
                                                    i2 = i5;
                                                    str2 = (String) atmsName.get();
                                                    str3 = str;
                                                    i7 = i13;
                                                    str4 = str8;
                                                    i5 = i9;
                                                    i4 = i10;
                                                    str = str9;
                                                    j10 = 1280;
                                                    if ((j & j10) != 0) {
                                                        str5 = str;
                                                        atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                                        atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                                        atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                                        atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                                                    } else {
                                                        str5 = str;
                                                    }
                                                    if ((j & j7) != 0) {
                                                        atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                                                    }
                                                    if ((j & j6) != 0) {
                                                        atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                                                    }
                                                    if ((j & j3) != 0) {
                                                        ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                                                    }
                                                    if ((j & j9) != 0) {
                                                        atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                                        atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                                        atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                                                    }
                                                    if ((j & j5) != 0) {
                                                        atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                                                    }
                                                    if ((j & 1664) != 0) {
                                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                                                    }
                                                    if ((j & j4) != 0) {
                                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                                                    }
                                                    if ((j & j8) != 0) {
                                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                                                    }
                                                }
                                            }
                                            i6 = i4;
                                            i2 = i5;
                                            str3 = str;
                                            i7 = i13;
                                            str4 = str8;
                                            i5 = i9;
                                            i4 = i10;
                                            str = str9;
                                            j10 = 1280;
                                            str2 = null;
                                            if ((j & j10) != 0) {
                                                str5 = str;
                                            } else {
                                                str5 = str;
                                                atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                                atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                                atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                                atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                                            }
                                            if ((j & j7) != 0) {
                                                atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                                            }
                                            if ((j & j6) != 0) {
                                                atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                                            }
                                            if ((j & j3) != 0) {
                                                ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                                            }
                                            if ((j & j9) != 0) {
                                                atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                                atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                                atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                                            }
                                            if ((j & j5) != 0) {
                                                atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                                            }
                                            if ((j & 1664) != 0) {
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                                            }
                                            if ((j & j4) != 0) {
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                                            }
                                            if ((j & j8) != 0) {
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                                            }
                                        }
                                    }
                                    str7 = null;
                                    if ((j & j3) == 0) {
                                        str8 = str7;
                                    } else {
                                        if (mapData == null) {
                                            str8 = str7;
                                            detailsHeight = null;
                                        } else {
                                            detailsHeight = mapData.getDetailsHeight();
                                            str8 = str7;
                                        }
                                        updateRegistration(5, detailsHeight);
                                        if (detailsHeight != null) {
                                            i4 = detailsHeight.get();
                                            j11 = j & j9;
                                            if (j11 == 0) {
                                                if (mapData == null) {
                                                    detailsHeight = mapData.getInstructionType();
                                                    i9 = i4;
                                                } else {
                                                    i9 = i4;
                                                    detailsHeight = null;
                                                }
                                                updateRegistration(6, detailsHeight);
                                                if (detailsHeight == null) {
                                                }
                                                if (atmInstructionType != AtmInstructionType.ATM) {
                                                    i10 = i2;
                                                    detailsHeight = 1;
                                                } else {
                                                    i10 = i2;
                                                    detailsHeight = null;
                                                }
                                                if (atmInstructionType != AtmInstructionType.TERMINAL) {
                                                    str9 = str6;
                                                    obj = 1;
                                                } else {
                                                    str9 = str6;
                                                    obj = null;
                                                }
                                                if (atmInstructionType != AtmInstructionType.OFFICE) {
                                                    j12 = 0;
                                                    obj3 = 1;
                                                } else {
                                                    j12 = 0;
                                                    obj3 = null;
                                                }
                                                if (j11 == j12) {
                                                    if (detailsHeight == null) {
                                                    }
                                                }
                                                if ((j13 & j9) == j12) {
                                                    if (obj == null) {
                                                    }
                                                }
                                                if ((j11 & j9) == j12) {
                                                    if (obj3 == null) {
                                                    }
                                                }
                                                if (detailsHeight == null) {
                                                }
                                                if (obj == null) {
                                                }
                                                if (obj3 == null) {
                                                }
                                                i4 = i11;
                                                i5 = obj3 == null ? 0 : i8;
                                                j14 = 1664;
                                                i13 = i12;
                                                j = j12;
                                            } else {
                                                i9 = i4;
                                                i10 = i2;
                                                str9 = str6;
                                                i4 = 0;
                                                i5 = 0;
                                                j14 = 1664;
                                                i13 = 0;
                                            }
                                            if ((j & j14) != 0) {
                                                if (mapData == null) {
                                                }
                                                updateRegistration(7, atmsName);
                                                if (atmsName != null) {
                                                    i6 = i4;
                                                    i2 = i5;
                                                    str2 = (String) atmsName.get();
                                                    str3 = str;
                                                    i7 = i13;
                                                    str4 = str8;
                                                    i5 = i9;
                                                    i4 = i10;
                                                    str = str9;
                                                    j10 = 1280;
                                                    if ((j & j10) != 0) {
                                                        str5 = str;
                                                        atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                                        atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                                        atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                                        atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                                                    } else {
                                                        str5 = str;
                                                    }
                                                    if ((j & j7) != 0) {
                                                        atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                                                    }
                                                    if ((j & j6) != 0) {
                                                        atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                                                    }
                                                    if ((j & j3) != 0) {
                                                        ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                                                    }
                                                    if ((j & j9) != 0) {
                                                        atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                                        atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                                        atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                                                    }
                                                    if ((j & j5) != 0) {
                                                        atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                                                    }
                                                    if ((j & 1664) != 0) {
                                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                                                    }
                                                    if ((j & j4) != 0) {
                                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                                                    }
                                                    if ((j & j8) != 0) {
                                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                                                    }
                                                }
                                            }
                                            i6 = i4;
                                            i2 = i5;
                                            str3 = str;
                                            i7 = i13;
                                            str4 = str8;
                                            i5 = i9;
                                            i4 = i10;
                                            str = str9;
                                            j10 = 1280;
                                            str2 = null;
                                            if ((j & j10) != 0) {
                                                str5 = str;
                                            } else {
                                                str5 = str;
                                                atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                                atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                                atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                                atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                                            }
                                            if ((j & j7) != 0) {
                                                atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                                            }
                                            if ((j & j6) != 0) {
                                                atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                                            }
                                            if ((j & j3) != 0) {
                                                ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                                            }
                                            if ((j & j9) != 0) {
                                                atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                                atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                                atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                                            }
                                            if ((j & j5) != 0) {
                                                atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                                            }
                                            if ((j & 1664) != 0) {
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                                            }
                                            if ((j & j4) != 0) {
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                                            }
                                            if ((j & j8) != 0) {
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                                            }
                                        }
                                    }
                                    i4 = 0;
                                    j11 = j & j9;
                                    if (j11 == 0) {
                                        i9 = i4;
                                        i10 = i2;
                                        str9 = str6;
                                        i4 = 0;
                                        i5 = 0;
                                        j14 = 1664;
                                        i13 = 0;
                                    } else {
                                        if (mapData == null) {
                                            i9 = i4;
                                            detailsHeight = null;
                                        } else {
                                            detailsHeight = mapData.getInstructionType();
                                            i9 = i4;
                                        }
                                        updateRegistration(6, detailsHeight);
                                        if (detailsHeight == null) {
                                        }
                                        if (atmInstructionType != AtmInstructionType.ATM) {
                                            i10 = i2;
                                            detailsHeight = null;
                                        } else {
                                            i10 = i2;
                                            detailsHeight = 1;
                                        }
                                        if (atmInstructionType != AtmInstructionType.TERMINAL) {
                                            str9 = str6;
                                            obj = null;
                                        } else {
                                            str9 = str6;
                                            obj = 1;
                                        }
                                        if (atmInstructionType != AtmInstructionType.OFFICE) {
                                            j12 = 0;
                                            obj3 = null;
                                        } else {
                                            j12 = 0;
                                            obj3 = 1;
                                        }
                                        if (j11 == j12) {
                                        }
                                        if ((j13 & j9) == j12) {
                                        }
                                        if ((j11 & j9) == j12) {
                                        }
                                        if (detailsHeight == null) {
                                        }
                                        if (obj == null) {
                                        }
                                        if (obj3 == null) {
                                        }
                                        i4 = i11;
                                        i5 = obj3 == null ? 0 : i8;
                                        j14 = 1664;
                                        i13 = i12;
                                        j = j12;
                                    }
                                    if ((j & j14) != 0) {
                                        if (mapData == null) {
                                        }
                                        updateRegistration(7, atmsName);
                                        if (atmsName != null) {
                                            i6 = i4;
                                            i2 = i5;
                                            str2 = (String) atmsName.get();
                                            str3 = str;
                                            i7 = i13;
                                            str4 = str8;
                                            i5 = i9;
                                            i4 = i10;
                                            str = str9;
                                            j10 = 1280;
                                            if ((j & j10) != 0) {
                                                str5 = str;
                                                atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                                atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                                atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                                atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                                            } else {
                                                str5 = str;
                                            }
                                            if ((j & j7) != 0) {
                                                atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                                            }
                                            if ((j & j6) != 0) {
                                                atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                                            }
                                            if ((j & j3) != 0) {
                                                ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                                            }
                                            if ((j & j9) != 0) {
                                                atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                                atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                                atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                                            }
                                            if ((j & j5) != 0) {
                                                atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                                            }
                                            if ((j & 1664) != 0) {
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                                            }
                                            if ((j & j4) != 0) {
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                                            }
                                            if ((j & j8) != 0) {
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                                            }
                                        }
                                    }
                                    i6 = i4;
                                    i2 = i5;
                                    str3 = str;
                                    i7 = i13;
                                    str4 = str8;
                                    i5 = i9;
                                    i4 = i10;
                                    str = str9;
                                    j10 = 1280;
                                    str2 = null;
                                    if ((j & j10) != 0) {
                                        str5 = str;
                                    } else {
                                        str5 = str;
                                        atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                        atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                        atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                        atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                                    }
                                    if ((j & j7) != 0) {
                                        atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                                    }
                                    if ((j & j6) != 0) {
                                        atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                                    }
                                    if ((j & j3) != 0) {
                                        ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                                    }
                                    if ((j & j9) != 0) {
                                        atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                        atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                        atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                                    }
                                    if ((j & j5) != 0) {
                                        atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                                    }
                                    if ((j & 1664) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                                    }
                                    if ((j & j4) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                                    }
                                    if ((j & j8) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                                    }
                                }
                            } else {
                                str6 = null;
                            }
                            i3 = 0;
                            if ((j & j4) != j2) {
                                if (mapData == null) {
                                }
                                updateRegistration(4, atmsAddress);
                                if (atmsAddress != null) {
                                    str7 = (String) atmsAddress.get();
                                    if ((j & j3) == 0) {
                                        if (mapData == null) {
                                            detailsHeight = mapData.getDetailsHeight();
                                            str8 = str7;
                                        } else {
                                            str8 = str7;
                                            detailsHeight = null;
                                        }
                                        updateRegistration(5, detailsHeight);
                                        if (detailsHeight != null) {
                                            i4 = detailsHeight.get();
                                            j11 = j & j9;
                                            if (j11 == 0) {
                                                if (mapData == null) {
                                                    detailsHeight = mapData.getInstructionType();
                                                    i9 = i4;
                                                } else {
                                                    i9 = i4;
                                                    detailsHeight = null;
                                                }
                                                updateRegistration(6, detailsHeight);
                                                if (detailsHeight == null) {
                                                }
                                                if (atmInstructionType != AtmInstructionType.ATM) {
                                                    i10 = i2;
                                                    detailsHeight = 1;
                                                } else {
                                                    i10 = i2;
                                                    detailsHeight = null;
                                                }
                                                if (atmInstructionType != AtmInstructionType.TERMINAL) {
                                                    str9 = str6;
                                                    obj = 1;
                                                } else {
                                                    str9 = str6;
                                                    obj = null;
                                                }
                                                if (atmInstructionType != AtmInstructionType.OFFICE) {
                                                    j12 = 0;
                                                    obj3 = 1;
                                                } else {
                                                    j12 = 0;
                                                    obj3 = null;
                                                }
                                                if (j11 == j12) {
                                                    if (detailsHeight == null) {
                                                    }
                                                }
                                                if ((j13 & j9) == j12) {
                                                    if (obj == null) {
                                                    }
                                                }
                                                if ((j11 & j9) == j12) {
                                                    if (obj3 == null) {
                                                    }
                                                }
                                                if (detailsHeight == null) {
                                                }
                                                if (obj == null) {
                                                }
                                                if (obj3 == null) {
                                                }
                                                i4 = i11;
                                                i5 = obj3 == null ? 0 : i8;
                                                j14 = 1664;
                                                i13 = i12;
                                                j = j12;
                                            } else {
                                                i9 = i4;
                                                i10 = i2;
                                                str9 = str6;
                                                i4 = 0;
                                                i5 = 0;
                                                j14 = 1664;
                                                i13 = 0;
                                            }
                                            if ((j & j14) != 0) {
                                                if (mapData == null) {
                                                }
                                                updateRegistration(7, atmsName);
                                                if (atmsName != null) {
                                                    i6 = i4;
                                                    i2 = i5;
                                                    str2 = (String) atmsName.get();
                                                    str3 = str;
                                                    i7 = i13;
                                                    str4 = str8;
                                                    i5 = i9;
                                                    i4 = i10;
                                                    str = str9;
                                                    j10 = 1280;
                                                    if ((j & j10) != 0) {
                                                        str5 = str;
                                                        atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                                        atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                                        atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                                        atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                                                    } else {
                                                        str5 = str;
                                                    }
                                                    if ((j & j7) != 0) {
                                                        atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                                                    }
                                                    if ((j & j6) != 0) {
                                                        atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                                                    }
                                                    if ((j & j3) != 0) {
                                                        ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                                                    }
                                                    if ((j & j9) != 0) {
                                                        atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                                        atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                                        atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                                                    }
                                                    if ((j & j5) != 0) {
                                                        atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                                                    }
                                                    if ((j & 1664) != 0) {
                                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                                                    }
                                                    if ((j & j4) != 0) {
                                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                                                    }
                                                    if ((j & j8) != 0) {
                                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                                                    }
                                                }
                                            }
                                            i6 = i4;
                                            i2 = i5;
                                            str3 = str;
                                            i7 = i13;
                                            str4 = str8;
                                            i5 = i9;
                                            i4 = i10;
                                            str = str9;
                                            j10 = 1280;
                                            str2 = null;
                                            if ((j & j10) != 0) {
                                                str5 = str;
                                            } else {
                                                str5 = str;
                                                atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                                atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                                atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                                atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                                            }
                                            if ((j & j7) != 0) {
                                                atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                                            }
                                            if ((j & j6) != 0) {
                                                atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                                            }
                                            if ((j & j3) != 0) {
                                                ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                                            }
                                            if ((j & j9) != 0) {
                                                atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                                atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                                atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                                            }
                                            if ((j & j5) != 0) {
                                                atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                                            }
                                            if ((j & 1664) != 0) {
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                                            }
                                            if ((j & j4) != 0) {
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                                            }
                                            if ((j & j8) != 0) {
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                                            }
                                        }
                                    }
                                    str8 = str7;
                                    i4 = 0;
                                    j11 = j & j9;
                                    if (j11 == 0) {
                                        i9 = i4;
                                        i10 = i2;
                                        str9 = str6;
                                        i4 = 0;
                                        i5 = 0;
                                        j14 = 1664;
                                        i13 = 0;
                                    } else {
                                        if (mapData == null) {
                                            i9 = i4;
                                            detailsHeight = null;
                                        } else {
                                            detailsHeight = mapData.getInstructionType();
                                            i9 = i4;
                                        }
                                        updateRegistration(6, detailsHeight);
                                        if (detailsHeight == null) {
                                        }
                                        if (atmInstructionType != AtmInstructionType.ATM) {
                                            i10 = i2;
                                            detailsHeight = null;
                                        } else {
                                            i10 = i2;
                                            detailsHeight = 1;
                                        }
                                        if (atmInstructionType != AtmInstructionType.TERMINAL) {
                                            str9 = str6;
                                            obj = null;
                                        } else {
                                            str9 = str6;
                                            obj = 1;
                                        }
                                        if (atmInstructionType != AtmInstructionType.OFFICE) {
                                            j12 = 0;
                                            obj3 = null;
                                        } else {
                                            j12 = 0;
                                            obj3 = 1;
                                        }
                                        if (j11 == j12) {
                                        }
                                        if ((j13 & j9) == j12) {
                                        }
                                        if ((j11 & j9) == j12) {
                                        }
                                        if (detailsHeight == null) {
                                        }
                                        if (obj == null) {
                                        }
                                        if (obj3 == null) {
                                        }
                                        i4 = i11;
                                        i5 = obj3 == null ? 0 : i8;
                                        j14 = 1664;
                                        i13 = i12;
                                        j = j12;
                                    }
                                    if ((j & j14) != 0) {
                                        if (mapData == null) {
                                        }
                                        updateRegistration(7, atmsName);
                                        if (atmsName != null) {
                                            i6 = i4;
                                            i2 = i5;
                                            str2 = (String) atmsName.get();
                                            str3 = str;
                                            i7 = i13;
                                            str4 = str8;
                                            i5 = i9;
                                            i4 = i10;
                                            str = str9;
                                            j10 = 1280;
                                            if ((j & j10) != 0) {
                                                str5 = str;
                                                atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                                atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                                atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                                atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                                            } else {
                                                str5 = str;
                                            }
                                            if ((j & j7) != 0) {
                                                atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                                            }
                                            if ((j & j6) != 0) {
                                                atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                                            }
                                            if ((j & j3) != 0) {
                                                ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                                            }
                                            if ((j & j9) != 0) {
                                                atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                                atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                                atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                                            }
                                            if ((j & j5) != 0) {
                                                atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                                            }
                                            if ((j & 1664) != 0) {
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                                            }
                                            if ((j & j4) != 0) {
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                                            }
                                            if ((j & j8) != 0) {
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                                            }
                                        }
                                    }
                                    i6 = i4;
                                    i2 = i5;
                                    str3 = str;
                                    i7 = i13;
                                    str4 = str8;
                                    i5 = i9;
                                    i4 = i10;
                                    str = str9;
                                    j10 = 1280;
                                    str2 = null;
                                    if ((j & j10) != 0) {
                                        str5 = str;
                                    } else {
                                        str5 = str;
                                        atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                        atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                        atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                        atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                                    }
                                    if ((j & j7) != 0) {
                                        atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                                    }
                                    if ((j & j6) != 0) {
                                        atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                                    }
                                    if ((j & j3) != 0) {
                                        ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                                    }
                                    if ((j & j9) != 0) {
                                        atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                        atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                        atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                                    }
                                    if ((j & j5) != 0) {
                                        atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                                    }
                                    if ((j & 1664) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                                    }
                                    if ((j & j4) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                                    }
                                    if ((j & j8) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                                    }
                                }
                            }
                            str7 = null;
                            if ((j & j3) == 0) {
                                str8 = str7;
                            } else {
                                if (mapData == null) {
                                    str8 = str7;
                                    detailsHeight = null;
                                } else {
                                    detailsHeight = mapData.getDetailsHeight();
                                    str8 = str7;
                                }
                                updateRegistration(5, detailsHeight);
                                if (detailsHeight != null) {
                                    i4 = detailsHeight.get();
                                    j11 = j & j9;
                                    if (j11 == 0) {
                                        if (mapData == null) {
                                            detailsHeight = mapData.getInstructionType();
                                            i9 = i4;
                                        } else {
                                            i9 = i4;
                                            detailsHeight = null;
                                        }
                                        updateRegistration(6, detailsHeight);
                                        if (detailsHeight == null) {
                                        }
                                        if (atmInstructionType != AtmInstructionType.ATM) {
                                            i10 = i2;
                                            detailsHeight = 1;
                                        } else {
                                            i10 = i2;
                                            detailsHeight = null;
                                        }
                                        if (atmInstructionType != AtmInstructionType.TERMINAL) {
                                            str9 = str6;
                                            obj = 1;
                                        } else {
                                            str9 = str6;
                                            obj = null;
                                        }
                                        if (atmInstructionType != AtmInstructionType.OFFICE) {
                                            j12 = 0;
                                            obj3 = 1;
                                        } else {
                                            j12 = 0;
                                            obj3 = null;
                                        }
                                        if (j11 == j12) {
                                            if (detailsHeight == null) {
                                            }
                                        }
                                        if ((j13 & j9) == j12) {
                                            if (obj == null) {
                                            }
                                        }
                                        if ((j11 & j9) == j12) {
                                            if (obj3 == null) {
                                            }
                                        }
                                        if (detailsHeight == null) {
                                        }
                                        if (obj == null) {
                                        }
                                        if (obj3 == null) {
                                        }
                                        i4 = i11;
                                        i5 = obj3 == null ? 0 : i8;
                                        j14 = 1664;
                                        i13 = i12;
                                        j = j12;
                                    } else {
                                        i9 = i4;
                                        i10 = i2;
                                        str9 = str6;
                                        i4 = 0;
                                        i5 = 0;
                                        j14 = 1664;
                                        i13 = 0;
                                    }
                                    if ((j & j14) != 0) {
                                        if (mapData == null) {
                                        }
                                        updateRegistration(7, atmsName);
                                        if (atmsName != null) {
                                            i6 = i4;
                                            i2 = i5;
                                            str2 = (String) atmsName.get();
                                            str3 = str;
                                            i7 = i13;
                                            str4 = str8;
                                            i5 = i9;
                                            i4 = i10;
                                            str = str9;
                                            j10 = 1280;
                                            if ((j & j10) != 0) {
                                                str5 = str;
                                                atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                                atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                                atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                                atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                                            } else {
                                                str5 = str;
                                            }
                                            if ((j & j7) != 0) {
                                                atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                                            }
                                            if ((j & j6) != 0) {
                                                atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                                            }
                                            if ((j & j3) != 0) {
                                                ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                                            }
                                            if ((j & j9) != 0) {
                                                atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                                atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                                atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                                            }
                                            if ((j & j5) != 0) {
                                                atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                                            }
                                            if ((j & 1664) != 0) {
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                                            }
                                            if ((j & j4) != 0) {
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                                            }
                                            if ((j & j8) != 0) {
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                                            }
                                        }
                                    }
                                    i6 = i4;
                                    i2 = i5;
                                    str3 = str;
                                    i7 = i13;
                                    str4 = str8;
                                    i5 = i9;
                                    i4 = i10;
                                    str = str9;
                                    j10 = 1280;
                                    str2 = null;
                                    if ((j & j10) != 0) {
                                        str5 = str;
                                    } else {
                                        str5 = str;
                                        atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                        atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                        atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                        atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                                    }
                                    if ((j & j7) != 0) {
                                        atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                                    }
                                    if ((j & j6) != 0) {
                                        atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                                    }
                                    if ((j & j3) != 0) {
                                        ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                                    }
                                    if ((j & j9) != 0) {
                                        atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                        atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                        atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                                    }
                                    if ((j & j5) != 0) {
                                        atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                                    }
                                    if ((j & 1664) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                                    }
                                    if ((j & j4) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                                    }
                                    if ((j & j8) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                                    }
                                }
                            }
                            i4 = 0;
                            j11 = j & j9;
                            if (j11 == 0) {
                                i9 = i4;
                                i10 = i2;
                                str9 = str6;
                                i4 = 0;
                                i5 = 0;
                                j14 = 1664;
                                i13 = 0;
                            } else {
                                if (mapData == null) {
                                    i9 = i4;
                                    detailsHeight = null;
                                } else {
                                    detailsHeight = mapData.getInstructionType();
                                    i9 = i4;
                                }
                                updateRegistration(6, detailsHeight);
                                if (detailsHeight == null) {
                                }
                                if (atmInstructionType != AtmInstructionType.ATM) {
                                    i10 = i2;
                                    detailsHeight = null;
                                } else {
                                    i10 = i2;
                                    detailsHeight = 1;
                                }
                                if (atmInstructionType != AtmInstructionType.TERMINAL) {
                                    str9 = str6;
                                    obj = null;
                                } else {
                                    str9 = str6;
                                    obj = 1;
                                }
                                if (atmInstructionType != AtmInstructionType.OFFICE) {
                                    j12 = 0;
                                    obj3 = null;
                                } else {
                                    j12 = 0;
                                    obj3 = 1;
                                }
                                if (j11 == j12) {
                                }
                                if ((j13 & j9) == j12) {
                                }
                                if ((j11 & j9) == j12) {
                                }
                                if (detailsHeight == null) {
                                }
                                if (obj == null) {
                                }
                                if (obj3 == null) {
                                }
                                i4 = i11;
                                i5 = obj3 == null ? 0 : i8;
                                j14 = 1664;
                                i13 = i12;
                                j = j12;
                            }
                            if ((j & j14) != 0) {
                                if (mapData == null) {
                                }
                                updateRegistration(7, atmsName);
                                if (atmsName != null) {
                                    i6 = i4;
                                    i2 = i5;
                                    str2 = (String) atmsName.get();
                                    str3 = str;
                                    i7 = i13;
                                    str4 = str8;
                                    i5 = i9;
                                    i4 = i10;
                                    str = str9;
                                    j10 = 1280;
                                    if ((j & j10) != 0) {
                                        str5 = str;
                                        atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                        atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                        atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                        atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                                    } else {
                                        str5 = str;
                                    }
                                    if ((j & j7) != 0) {
                                        atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                                    }
                                    if ((j & j6) != 0) {
                                        atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                                    }
                                    if ((j & j3) != 0) {
                                        ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                                    }
                                    if ((j & j9) != 0) {
                                        atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                        atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                        atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                                    }
                                    if ((j & j5) != 0) {
                                        atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                                    }
                                    if ((j & 1664) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                                    }
                                    if ((j & j4) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                                    }
                                    if ((j & j8) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                                    }
                                }
                            }
                            i6 = i4;
                            i2 = i5;
                            str3 = str;
                            i7 = i13;
                            str4 = str8;
                            i5 = i9;
                            i4 = i10;
                            str = str9;
                            j10 = 1280;
                            str2 = null;
                            if ((j & j10) != 0) {
                                str5 = str;
                            } else {
                                str5 = str;
                                atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                            }
                            if ((j & j7) != 0) {
                                atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                            }
                            if ((j & j6) != 0) {
                                atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                            }
                            if ((j & j3) != 0) {
                                ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                            }
                            if ((j & j9) != 0) {
                                atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                            }
                            if ((j & j5) != 0) {
                                atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                            }
                            if ((j & 1664) != 0) {
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                            }
                            if ((j & j4) != 0) {
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                            }
                            if ((j & j8) != 0) {
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                            }
                        }
                    }
                    i2 = 0;
                    j11 = j & j6;
                    if (j11 == j2) {
                        i = 0;
                    } else {
                        if (mapData == null) {
                        }
                        updateRegistration(2, commissionAtmsSwitcherVisible);
                        if (commissionAtmsSwitcherVisible == null) {
                            z2 = false;
                        } else {
                            z2 = commissionAtmsSwitcherVisible.get();
                        }
                        if (j11 != j2) {
                            if (z2) {
                            }
                            j = z2 ? j | PlaybackStateCompat.ACTION_SET_REPEAT_MODE : j | PlaybackStateCompat.ACTION_PREPARE_FROM_URI;
                        }
                        if (z2) {
                        }
                        i = z2 ? 0 : i8;
                    }
                    j11 = j & j5;
                    if (j11 == j2) {
                        str6 = null;
                    } else {
                        if (mapData == null) {
                        }
                        updateRegistration(3, commissionAtmsSwitcherVisible);
                        if (commissionAtmsSwitcherVisible == null) {
                        }
                        if (str6 == null) {
                        }
                        if (j11 != j2) {
                            if (obj2 == null) {
                            }
                            j = obj2 == null ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                        }
                        if (obj2 == null) {
                            i3 = i8;
                            if ((j & j4) != j2) {
                                if (mapData == null) {
                                }
                                updateRegistration(4, atmsAddress);
                                if (atmsAddress != null) {
                                    str7 = (String) atmsAddress.get();
                                    if ((j & j3) == 0) {
                                        if (mapData == null) {
                                            detailsHeight = mapData.getDetailsHeight();
                                            str8 = str7;
                                        } else {
                                            str8 = str7;
                                            detailsHeight = null;
                                        }
                                        updateRegistration(5, detailsHeight);
                                        if (detailsHeight != null) {
                                            i4 = detailsHeight.get();
                                            j11 = j & j9;
                                            if (j11 == 0) {
                                                if (mapData == null) {
                                                    detailsHeight = mapData.getInstructionType();
                                                    i9 = i4;
                                                } else {
                                                    i9 = i4;
                                                    detailsHeight = null;
                                                }
                                                updateRegistration(6, detailsHeight);
                                                if (detailsHeight == null) {
                                                }
                                                if (atmInstructionType != AtmInstructionType.ATM) {
                                                    i10 = i2;
                                                    detailsHeight = 1;
                                                } else {
                                                    i10 = i2;
                                                    detailsHeight = null;
                                                }
                                                if (atmInstructionType != AtmInstructionType.TERMINAL) {
                                                    str9 = str6;
                                                    obj = 1;
                                                } else {
                                                    str9 = str6;
                                                    obj = null;
                                                }
                                                if (atmInstructionType != AtmInstructionType.OFFICE) {
                                                    j12 = 0;
                                                    obj3 = 1;
                                                } else {
                                                    j12 = 0;
                                                    obj3 = null;
                                                }
                                                if (j11 == j12) {
                                                    if (detailsHeight == null) {
                                                    }
                                                }
                                                if ((j13 & j9) == j12) {
                                                    if (obj == null) {
                                                    }
                                                }
                                                if ((j11 & j9) == j12) {
                                                    if (obj3 == null) {
                                                    }
                                                }
                                                if (detailsHeight == null) {
                                                }
                                                if (obj == null) {
                                                }
                                                if (obj3 == null) {
                                                }
                                                i4 = i11;
                                                i5 = obj3 == null ? 0 : i8;
                                                j14 = 1664;
                                                i13 = i12;
                                                j = j12;
                                            } else {
                                                i9 = i4;
                                                i10 = i2;
                                                str9 = str6;
                                                i4 = 0;
                                                i5 = 0;
                                                j14 = 1664;
                                                i13 = 0;
                                            }
                                            if ((j & j14) != 0) {
                                                if (mapData == null) {
                                                }
                                                updateRegistration(7, atmsName);
                                                if (atmsName != null) {
                                                    i6 = i4;
                                                    i2 = i5;
                                                    str2 = (String) atmsName.get();
                                                    str3 = str;
                                                    i7 = i13;
                                                    str4 = str8;
                                                    i5 = i9;
                                                    i4 = i10;
                                                    str = str9;
                                                    j10 = 1280;
                                                    if ((j & j10) != 0) {
                                                        str5 = str;
                                                        atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                                        atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                                        atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                                        atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                                                    } else {
                                                        str5 = str;
                                                    }
                                                    if ((j & j7) != 0) {
                                                        atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                                                    }
                                                    if ((j & j6) != 0) {
                                                        atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                                                    }
                                                    if ((j & j3) != 0) {
                                                        ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                                                    }
                                                    if ((j & j9) != 0) {
                                                        atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                                        atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                                        atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                                                    }
                                                    if ((j & j5) != 0) {
                                                        atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                                                    }
                                                    if ((j & 1664) != 0) {
                                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                                                    }
                                                    if ((j & j4) != 0) {
                                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                                                    }
                                                    if ((j & j8) != 0) {
                                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                                                    }
                                                }
                                            }
                                            i6 = i4;
                                            i2 = i5;
                                            str3 = str;
                                            i7 = i13;
                                            str4 = str8;
                                            i5 = i9;
                                            i4 = i10;
                                            str = str9;
                                            j10 = 1280;
                                            str2 = null;
                                            if ((j & j10) != 0) {
                                                str5 = str;
                                            } else {
                                                str5 = str;
                                                atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                                atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                                atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                                atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                                            }
                                            if ((j & j7) != 0) {
                                                atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                                            }
                                            if ((j & j6) != 0) {
                                                atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                                            }
                                            if ((j & j3) != 0) {
                                                ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                                            }
                                            if ((j & j9) != 0) {
                                                atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                                atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                                atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                                            }
                                            if ((j & j5) != 0) {
                                                atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                                            }
                                            if ((j & 1664) != 0) {
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                                            }
                                            if ((j & j4) != 0) {
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                                            }
                                            if ((j & j8) != 0) {
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                                            }
                                        }
                                    }
                                    str8 = str7;
                                    i4 = 0;
                                    j11 = j & j9;
                                    if (j11 == 0) {
                                        i9 = i4;
                                        i10 = i2;
                                        str9 = str6;
                                        i4 = 0;
                                        i5 = 0;
                                        j14 = 1664;
                                        i13 = 0;
                                    } else {
                                        if (mapData == null) {
                                            i9 = i4;
                                            detailsHeight = null;
                                        } else {
                                            detailsHeight = mapData.getInstructionType();
                                            i9 = i4;
                                        }
                                        updateRegistration(6, detailsHeight);
                                        if (detailsHeight == null) {
                                        }
                                        if (atmInstructionType != AtmInstructionType.ATM) {
                                            i10 = i2;
                                            detailsHeight = null;
                                        } else {
                                            i10 = i2;
                                            detailsHeight = 1;
                                        }
                                        if (atmInstructionType != AtmInstructionType.TERMINAL) {
                                            str9 = str6;
                                            obj = null;
                                        } else {
                                            str9 = str6;
                                            obj = 1;
                                        }
                                        if (atmInstructionType != AtmInstructionType.OFFICE) {
                                            j12 = 0;
                                            obj3 = null;
                                        } else {
                                            j12 = 0;
                                            obj3 = 1;
                                        }
                                        if (j11 == j12) {
                                        }
                                        if ((j13 & j9) == j12) {
                                        }
                                        if ((j11 & j9) == j12) {
                                        }
                                        if (detailsHeight == null) {
                                        }
                                        if (obj == null) {
                                        }
                                        if (obj3 == null) {
                                        }
                                        i4 = i11;
                                        i5 = obj3 == null ? 0 : i8;
                                        j14 = 1664;
                                        i13 = i12;
                                        j = j12;
                                    }
                                    if ((j & j14) != 0) {
                                        if (mapData == null) {
                                        }
                                        updateRegistration(7, atmsName);
                                        if (atmsName != null) {
                                            i6 = i4;
                                            i2 = i5;
                                            str2 = (String) atmsName.get();
                                            str3 = str;
                                            i7 = i13;
                                            str4 = str8;
                                            i5 = i9;
                                            i4 = i10;
                                            str = str9;
                                            j10 = 1280;
                                            if ((j & j10) != 0) {
                                                str5 = str;
                                                atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                                atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                                atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                                atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                                            } else {
                                                str5 = str;
                                            }
                                            if ((j & j7) != 0) {
                                                atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                                            }
                                            if ((j & j6) != 0) {
                                                atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                                            }
                                            if ((j & j3) != 0) {
                                                ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                                            }
                                            if ((j & j9) != 0) {
                                                atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                                atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                                atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                                            }
                                            if ((j & j5) != 0) {
                                                atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                                            }
                                            if ((j & 1664) != 0) {
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                                            }
                                            if ((j & j4) != 0) {
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                                            }
                                            if ((j & j8) != 0) {
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                                            }
                                        }
                                    }
                                    i6 = i4;
                                    i2 = i5;
                                    str3 = str;
                                    i7 = i13;
                                    str4 = str8;
                                    i5 = i9;
                                    i4 = i10;
                                    str = str9;
                                    j10 = 1280;
                                    str2 = null;
                                    if ((j & j10) != 0) {
                                        str5 = str;
                                    } else {
                                        str5 = str;
                                        atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                        atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                        atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                        atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                                    }
                                    if ((j & j7) != 0) {
                                        atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                                    }
                                    if ((j & j6) != 0) {
                                        atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                                    }
                                    if ((j & j3) != 0) {
                                        ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                                    }
                                    if ((j & j9) != 0) {
                                        atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                        atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                        atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                                    }
                                    if ((j & j5) != 0) {
                                        atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                                    }
                                    if ((j & 1664) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                                    }
                                    if ((j & j4) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                                    }
                                    if ((j & j8) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                                    }
                                }
                            }
                            str7 = null;
                            if ((j & j3) == 0) {
                                str8 = str7;
                            } else {
                                if (mapData == null) {
                                    str8 = str7;
                                    detailsHeight = null;
                                } else {
                                    detailsHeight = mapData.getDetailsHeight();
                                    str8 = str7;
                                }
                                updateRegistration(5, detailsHeight);
                                if (detailsHeight != null) {
                                    i4 = detailsHeight.get();
                                    j11 = j & j9;
                                    if (j11 == 0) {
                                        if (mapData == null) {
                                            detailsHeight = mapData.getInstructionType();
                                            i9 = i4;
                                        } else {
                                            i9 = i4;
                                            detailsHeight = null;
                                        }
                                        updateRegistration(6, detailsHeight);
                                        if (detailsHeight == null) {
                                        }
                                        if (atmInstructionType != AtmInstructionType.ATM) {
                                            i10 = i2;
                                            detailsHeight = 1;
                                        } else {
                                            i10 = i2;
                                            detailsHeight = null;
                                        }
                                        if (atmInstructionType != AtmInstructionType.TERMINAL) {
                                            str9 = str6;
                                            obj = 1;
                                        } else {
                                            str9 = str6;
                                            obj = null;
                                        }
                                        if (atmInstructionType != AtmInstructionType.OFFICE) {
                                            j12 = 0;
                                            obj3 = 1;
                                        } else {
                                            j12 = 0;
                                            obj3 = null;
                                        }
                                        if (j11 == j12) {
                                            if (detailsHeight == null) {
                                            }
                                        }
                                        if ((j13 & j9) == j12) {
                                            if (obj == null) {
                                            }
                                        }
                                        if ((j11 & j9) == j12) {
                                            if (obj3 == null) {
                                            }
                                        }
                                        if (detailsHeight == null) {
                                        }
                                        if (obj == null) {
                                        }
                                        if (obj3 == null) {
                                        }
                                        i4 = i11;
                                        i5 = obj3 == null ? 0 : i8;
                                        j14 = 1664;
                                        i13 = i12;
                                        j = j12;
                                    } else {
                                        i9 = i4;
                                        i10 = i2;
                                        str9 = str6;
                                        i4 = 0;
                                        i5 = 0;
                                        j14 = 1664;
                                        i13 = 0;
                                    }
                                    if ((j & j14) != 0) {
                                        if (mapData == null) {
                                        }
                                        updateRegistration(7, atmsName);
                                        if (atmsName != null) {
                                            i6 = i4;
                                            i2 = i5;
                                            str2 = (String) atmsName.get();
                                            str3 = str;
                                            i7 = i13;
                                            str4 = str8;
                                            i5 = i9;
                                            i4 = i10;
                                            str = str9;
                                            j10 = 1280;
                                            if ((j & j10) != 0) {
                                                str5 = str;
                                                atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                                atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                                atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                                atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                                            } else {
                                                str5 = str;
                                            }
                                            if ((j & j7) != 0) {
                                                atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                                            }
                                            if ((j & j6) != 0) {
                                                atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                                            }
                                            if ((j & j3) != 0) {
                                                ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                                            }
                                            if ((j & j9) != 0) {
                                                atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                                atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                                atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                                            }
                                            if ((j & j5) != 0) {
                                                atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                                            }
                                            if ((j & 1664) != 0) {
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                                            }
                                            if ((j & j4) != 0) {
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                                            }
                                            if ((j & j8) != 0) {
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                                            }
                                        }
                                    }
                                    i6 = i4;
                                    i2 = i5;
                                    str3 = str;
                                    i7 = i13;
                                    str4 = str8;
                                    i5 = i9;
                                    i4 = i10;
                                    str = str9;
                                    j10 = 1280;
                                    str2 = null;
                                    if ((j & j10) != 0) {
                                        str5 = str;
                                    } else {
                                        str5 = str;
                                        atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                        atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                        atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                        atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                                    }
                                    if ((j & j7) != 0) {
                                        atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                                    }
                                    if ((j & j6) != 0) {
                                        atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                                    }
                                    if ((j & j3) != 0) {
                                        ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                                    }
                                    if ((j & j9) != 0) {
                                        atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                        atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                        atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                                    }
                                    if ((j & j5) != 0) {
                                        atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                                    }
                                    if ((j & 1664) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                                    }
                                    if ((j & j4) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                                    }
                                    if ((j & j8) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                                    }
                                }
                            }
                            i4 = 0;
                            j11 = j & j9;
                            if (j11 == 0) {
                                i9 = i4;
                                i10 = i2;
                                str9 = str6;
                                i4 = 0;
                                i5 = 0;
                                j14 = 1664;
                                i13 = 0;
                            } else {
                                if (mapData == null) {
                                    i9 = i4;
                                    detailsHeight = null;
                                } else {
                                    detailsHeight = mapData.getInstructionType();
                                    i9 = i4;
                                }
                                updateRegistration(6, detailsHeight);
                                if (detailsHeight == null) {
                                }
                                if (atmInstructionType != AtmInstructionType.ATM) {
                                    i10 = i2;
                                    detailsHeight = null;
                                } else {
                                    i10 = i2;
                                    detailsHeight = 1;
                                }
                                if (atmInstructionType != AtmInstructionType.TERMINAL) {
                                    str9 = str6;
                                    obj = null;
                                } else {
                                    str9 = str6;
                                    obj = 1;
                                }
                                if (atmInstructionType != AtmInstructionType.OFFICE) {
                                    j12 = 0;
                                    obj3 = null;
                                } else {
                                    j12 = 0;
                                    obj3 = 1;
                                }
                                if (j11 == j12) {
                                }
                                if ((j13 & j9) == j12) {
                                }
                                if ((j11 & j9) == j12) {
                                }
                                if (detailsHeight == null) {
                                }
                                if (obj == null) {
                                }
                                if (obj3 == null) {
                                }
                                i4 = i11;
                                i5 = obj3 == null ? 0 : i8;
                                j14 = 1664;
                                i13 = i12;
                                j = j12;
                            }
                            if ((j & j14) != 0) {
                                if (mapData == null) {
                                }
                                updateRegistration(7, atmsName);
                                if (atmsName != null) {
                                    i6 = i4;
                                    i2 = i5;
                                    str2 = (String) atmsName.get();
                                    str3 = str;
                                    i7 = i13;
                                    str4 = str8;
                                    i5 = i9;
                                    i4 = i10;
                                    str = str9;
                                    j10 = 1280;
                                    if ((j & j10) != 0) {
                                        str5 = str;
                                        atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                        atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                        atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                        atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                                    } else {
                                        str5 = str;
                                    }
                                    if ((j & j7) != 0) {
                                        atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                                    }
                                    if ((j & j6) != 0) {
                                        atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                                    }
                                    if ((j & j3) != 0) {
                                        ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                                    }
                                    if ((j & j9) != 0) {
                                        atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                        atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                        atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                                    }
                                    if ((j & j5) != 0) {
                                        atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                                    }
                                    if ((j & 1664) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                                    }
                                    if ((j & j4) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                                    }
                                    if ((j & j8) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                                    }
                                }
                            }
                            i6 = i4;
                            i2 = i5;
                            str3 = str;
                            i7 = i13;
                            str4 = str8;
                            i5 = i9;
                            i4 = i10;
                            str = str9;
                            j10 = 1280;
                            str2 = null;
                            if ((j & j10) != 0) {
                                str5 = str;
                            } else {
                                str5 = str;
                                atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                            }
                            if ((j & j7) != 0) {
                                atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                            }
                            if ((j & j6) != 0) {
                                atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                            }
                            if ((j & j3) != 0) {
                                ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                            }
                            if ((j & j9) != 0) {
                                atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                            }
                            if ((j & j5) != 0) {
                                atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                            }
                            if ((j & 1664) != 0) {
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                            }
                            if ((j & j4) != 0) {
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                            }
                            if ((j & j8) != 0) {
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                            }
                        }
                    }
                    i3 = 0;
                    if ((j & j4) != j2) {
                        if (mapData == null) {
                        }
                        updateRegistration(4, atmsAddress);
                        if (atmsAddress != null) {
                            str7 = (String) atmsAddress.get();
                            if ((j & j3) == 0) {
                                if (mapData == null) {
                                    detailsHeight = mapData.getDetailsHeight();
                                    str8 = str7;
                                } else {
                                    str8 = str7;
                                    detailsHeight = null;
                                }
                                updateRegistration(5, detailsHeight);
                                if (detailsHeight != null) {
                                    i4 = detailsHeight.get();
                                    j11 = j & j9;
                                    if (j11 == 0) {
                                        if (mapData == null) {
                                            detailsHeight = mapData.getInstructionType();
                                            i9 = i4;
                                        } else {
                                            i9 = i4;
                                            detailsHeight = null;
                                        }
                                        updateRegistration(6, detailsHeight);
                                        if (detailsHeight == null) {
                                        }
                                        if (atmInstructionType != AtmInstructionType.ATM) {
                                            i10 = i2;
                                            detailsHeight = 1;
                                        } else {
                                            i10 = i2;
                                            detailsHeight = null;
                                        }
                                        if (atmInstructionType != AtmInstructionType.TERMINAL) {
                                            str9 = str6;
                                            obj = 1;
                                        } else {
                                            str9 = str6;
                                            obj = null;
                                        }
                                        if (atmInstructionType != AtmInstructionType.OFFICE) {
                                            j12 = 0;
                                            obj3 = 1;
                                        } else {
                                            j12 = 0;
                                            obj3 = null;
                                        }
                                        if (j11 == j12) {
                                            if (detailsHeight == null) {
                                            }
                                        }
                                        if ((j13 & j9) == j12) {
                                            if (obj == null) {
                                            }
                                        }
                                        if ((j11 & j9) == j12) {
                                            if (obj3 == null) {
                                            }
                                        }
                                        if (detailsHeight == null) {
                                        }
                                        if (obj == null) {
                                        }
                                        if (obj3 == null) {
                                        }
                                        i4 = i11;
                                        i5 = obj3 == null ? 0 : i8;
                                        j14 = 1664;
                                        i13 = i12;
                                        j = j12;
                                    } else {
                                        i9 = i4;
                                        i10 = i2;
                                        str9 = str6;
                                        i4 = 0;
                                        i5 = 0;
                                        j14 = 1664;
                                        i13 = 0;
                                    }
                                    if ((j & j14) != 0) {
                                        if (mapData == null) {
                                        }
                                        updateRegistration(7, atmsName);
                                        if (atmsName != null) {
                                            i6 = i4;
                                            i2 = i5;
                                            str2 = (String) atmsName.get();
                                            str3 = str;
                                            i7 = i13;
                                            str4 = str8;
                                            i5 = i9;
                                            i4 = i10;
                                            str = str9;
                                            j10 = 1280;
                                            if ((j & j10) != 0) {
                                                str5 = str;
                                                atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                                atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                                atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                                atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                                            } else {
                                                str5 = str;
                                            }
                                            if ((j & j7) != 0) {
                                                atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                                            }
                                            if ((j & j6) != 0) {
                                                atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                                            }
                                            if ((j & j3) != 0) {
                                                ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                                            }
                                            if ((j & j9) != 0) {
                                                atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                                atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                                atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                                            }
                                            if ((j & j5) != 0) {
                                                atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                                            }
                                            if ((j & 1664) != 0) {
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                                            }
                                            if ((j & j4) != 0) {
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                                            }
                                            if ((j & j8) != 0) {
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                                            }
                                        }
                                    }
                                    i6 = i4;
                                    i2 = i5;
                                    str3 = str;
                                    i7 = i13;
                                    str4 = str8;
                                    i5 = i9;
                                    i4 = i10;
                                    str = str9;
                                    j10 = 1280;
                                    str2 = null;
                                    if ((j & j10) != 0) {
                                        str5 = str;
                                    } else {
                                        str5 = str;
                                        atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                        atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                        atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                        atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                                    }
                                    if ((j & j7) != 0) {
                                        atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                                    }
                                    if ((j & j6) != 0) {
                                        atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                                    }
                                    if ((j & j3) != 0) {
                                        ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                                    }
                                    if ((j & j9) != 0) {
                                        atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                        atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                        atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                                    }
                                    if ((j & j5) != 0) {
                                        atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                                    }
                                    if ((j & 1664) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                                    }
                                    if ((j & j4) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                                    }
                                    if ((j & j8) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                                    }
                                }
                            }
                            str8 = str7;
                            i4 = 0;
                            j11 = j & j9;
                            if (j11 == 0) {
                                i9 = i4;
                                i10 = i2;
                                str9 = str6;
                                i4 = 0;
                                i5 = 0;
                                j14 = 1664;
                                i13 = 0;
                            } else {
                                if (mapData == null) {
                                    i9 = i4;
                                    detailsHeight = null;
                                } else {
                                    detailsHeight = mapData.getInstructionType();
                                    i9 = i4;
                                }
                                updateRegistration(6, detailsHeight);
                                if (detailsHeight == null) {
                                }
                                if (atmInstructionType != AtmInstructionType.ATM) {
                                    i10 = i2;
                                    detailsHeight = null;
                                } else {
                                    i10 = i2;
                                    detailsHeight = 1;
                                }
                                if (atmInstructionType != AtmInstructionType.TERMINAL) {
                                    str9 = str6;
                                    obj = null;
                                } else {
                                    str9 = str6;
                                    obj = 1;
                                }
                                if (atmInstructionType != AtmInstructionType.OFFICE) {
                                    j12 = 0;
                                    obj3 = null;
                                } else {
                                    j12 = 0;
                                    obj3 = 1;
                                }
                                if (j11 == j12) {
                                }
                                if ((j13 & j9) == j12) {
                                }
                                if ((j11 & j9) == j12) {
                                }
                                if (detailsHeight == null) {
                                }
                                if (obj == null) {
                                }
                                if (obj3 == null) {
                                }
                                i4 = i11;
                                i5 = obj3 == null ? 0 : i8;
                                j14 = 1664;
                                i13 = i12;
                                j = j12;
                            }
                            if ((j & j14) != 0) {
                                if (mapData == null) {
                                }
                                updateRegistration(7, atmsName);
                                if (atmsName != null) {
                                    i6 = i4;
                                    i2 = i5;
                                    str2 = (String) atmsName.get();
                                    str3 = str;
                                    i7 = i13;
                                    str4 = str8;
                                    i5 = i9;
                                    i4 = i10;
                                    str = str9;
                                    j10 = 1280;
                                    if ((j & j10) != 0) {
                                        str5 = str;
                                        atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                        atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                        atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                        atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                                    } else {
                                        str5 = str;
                                    }
                                    if ((j & j7) != 0) {
                                        atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                                    }
                                    if ((j & j6) != 0) {
                                        atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                                    }
                                    if ((j & j3) != 0) {
                                        ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                                    }
                                    if ((j & j9) != 0) {
                                        atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                        atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                        atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                                    }
                                    if ((j & j5) != 0) {
                                        atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                                    }
                                    if ((j & 1664) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                                    }
                                    if ((j & j4) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                                    }
                                    if ((j & j8) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                                    }
                                }
                            }
                            i6 = i4;
                            i2 = i5;
                            str3 = str;
                            i7 = i13;
                            str4 = str8;
                            i5 = i9;
                            i4 = i10;
                            str = str9;
                            j10 = 1280;
                            str2 = null;
                            if ((j & j10) != 0) {
                                str5 = str;
                            } else {
                                str5 = str;
                                atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                            }
                            if ((j & j7) != 0) {
                                atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                            }
                            if ((j & j6) != 0) {
                                atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                            }
                            if ((j & j3) != 0) {
                                ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                            }
                            if ((j & j9) != 0) {
                                atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                            }
                            if ((j & j5) != 0) {
                                atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                            }
                            if ((j & 1664) != 0) {
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                            }
                            if ((j & j4) != 0) {
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                            }
                            if ((j & j8) != 0) {
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                            }
                        }
                    }
                    str7 = null;
                    if ((j & j3) == 0) {
                        str8 = str7;
                    } else {
                        if (mapData == null) {
                            str8 = str7;
                            detailsHeight = null;
                        } else {
                            detailsHeight = mapData.getDetailsHeight();
                            str8 = str7;
                        }
                        updateRegistration(5, detailsHeight);
                        if (detailsHeight != null) {
                            i4 = detailsHeight.get();
                            j11 = j & j9;
                            if (j11 == 0) {
                                if (mapData == null) {
                                    detailsHeight = mapData.getInstructionType();
                                    i9 = i4;
                                } else {
                                    i9 = i4;
                                    detailsHeight = null;
                                }
                                updateRegistration(6, detailsHeight);
                                if (detailsHeight == null) {
                                }
                                if (atmInstructionType != AtmInstructionType.ATM) {
                                    i10 = i2;
                                    detailsHeight = 1;
                                } else {
                                    i10 = i2;
                                    detailsHeight = null;
                                }
                                if (atmInstructionType != AtmInstructionType.TERMINAL) {
                                    str9 = str6;
                                    obj = 1;
                                } else {
                                    str9 = str6;
                                    obj = null;
                                }
                                if (atmInstructionType != AtmInstructionType.OFFICE) {
                                    j12 = 0;
                                    obj3 = 1;
                                } else {
                                    j12 = 0;
                                    obj3 = null;
                                }
                                if (j11 == j12) {
                                    if (detailsHeight == null) {
                                    }
                                }
                                if ((j13 & j9) == j12) {
                                    if (obj == null) {
                                    }
                                }
                                if ((j11 & j9) == j12) {
                                    if (obj3 == null) {
                                    }
                                }
                                if (detailsHeight == null) {
                                }
                                if (obj == null) {
                                }
                                if (obj3 == null) {
                                }
                                i4 = i11;
                                i5 = obj3 == null ? 0 : i8;
                                j14 = 1664;
                                i13 = i12;
                                j = j12;
                            } else {
                                i9 = i4;
                                i10 = i2;
                                str9 = str6;
                                i4 = 0;
                                i5 = 0;
                                j14 = 1664;
                                i13 = 0;
                            }
                            if ((j & j14) != 0) {
                                if (mapData == null) {
                                }
                                updateRegistration(7, atmsName);
                                if (atmsName != null) {
                                    i6 = i4;
                                    i2 = i5;
                                    str2 = (String) atmsName.get();
                                    str3 = str;
                                    i7 = i13;
                                    str4 = str8;
                                    i5 = i9;
                                    i4 = i10;
                                    str = str9;
                                    j10 = 1280;
                                    if ((j & j10) != 0) {
                                        str5 = str;
                                        atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                        atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                        atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                        atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                                    } else {
                                        str5 = str;
                                    }
                                    if ((j & j7) != 0) {
                                        atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                                    }
                                    if ((j & j6) != 0) {
                                        atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                                    }
                                    if ((j & j3) != 0) {
                                        ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                                    }
                                    if ((j & j9) != 0) {
                                        atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                        atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                        atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                                    }
                                    if ((j & j5) != 0) {
                                        atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                                    }
                                    if ((j & 1664) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                                    }
                                    if ((j & j4) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                                    }
                                    if ((j & j8) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                                    }
                                }
                            }
                            i6 = i4;
                            i2 = i5;
                            str3 = str;
                            i7 = i13;
                            str4 = str8;
                            i5 = i9;
                            i4 = i10;
                            str = str9;
                            j10 = 1280;
                            str2 = null;
                            if ((j & j10) != 0) {
                                str5 = str;
                            } else {
                                str5 = str;
                                atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                            }
                            if ((j & j7) != 0) {
                                atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                            }
                            if ((j & j6) != 0) {
                                atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                            }
                            if ((j & j3) != 0) {
                                ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                            }
                            if ((j & j9) != 0) {
                                atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                            }
                            if ((j & j5) != 0) {
                                atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                            }
                            if ((j & 1664) != 0) {
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                            }
                            if ((j & j4) != 0) {
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                            }
                            if ((j & j8) != 0) {
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                            }
                        }
                    }
                    i4 = 0;
                    j11 = j & j9;
                    if (j11 == 0) {
                        i9 = i4;
                        i10 = i2;
                        str9 = str6;
                        i4 = 0;
                        i5 = 0;
                        j14 = 1664;
                        i13 = 0;
                    } else {
                        if (mapData == null) {
                            i9 = i4;
                            detailsHeight = null;
                        } else {
                            detailsHeight = mapData.getInstructionType();
                            i9 = i4;
                        }
                        updateRegistration(6, detailsHeight);
                        if (detailsHeight == null) {
                        }
                        if (atmInstructionType != AtmInstructionType.ATM) {
                            i10 = i2;
                            detailsHeight = null;
                        } else {
                            i10 = i2;
                            detailsHeight = 1;
                        }
                        if (atmInstructionType != AtmInstructionType.TERMINAL) {
                            str9 = str6;
                            obj = null;
                        } else {
                            str9 = str6;
                            obj = 1;
                        }
                        if (atmInstructionType != AtmInstructionType.OFFICE) {
                            j12 = 0;
                            obj3 = null;
                        } else {
                            j12 = 0;
                            obj3 = 1;
                        }
                        if (j11 == j12) {
                        }
                        if ((j13 & j9) == j12) {
                        }
                        if ((j11 & j9) == j12) {
                        }
                        if (detailsHeight == null) {
                        }
                        if (obj == null) {
                        }
                        if (obj3 == null) {
                        }
                        i4 = i11;
                        i5 = obj3 == null ? 0 : i8;
                        j14 = 1664;
                        i13 = i12;
                        j = j12;
                    }
                    if ((j & j14) != 0) {
                        if (mapData == null) {
                        }
                        updateRegistration(7, atmsName);
                        if (atmsName != null) {
                            i6 = i4;
                            i2 = i5;
                            str2 = (String) atmsName.get();
                            str3 = str;
                            i7 = i13;
                            str4 = str8;
                            i5 = i9;
                            i4 = i10;
                            str = str9;
                            j10 = 1280;
                            if ((j & j10) != 0) {
                                str5 = str;
                                atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                            } else {
                                str5 = str;
                            }
                            if ((j & j7) != 0) {
                                atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                            }
                            if ((j & j6) != 0) {
                                atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                            }
                            if ((j & j3) != 0) {
                                ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                            }
                            if ((j & j9) != 0) {
                                atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                            }
                            if ((j & j5) != 0) {
                                atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                            }
                            if ((j & 1664) != 0) {
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                            }
                            if ((j & j4) != 0) {
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                            }
                            if ((j & j8) != 0) {
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                            }
                        }
                    }
                    i6 = i4;
                    i2 = i5;
                    str3 = str;
                    i7 = i13;
                    str4 = str8;
                    i5 = i9;
                    i4 = i10;
                    str = str9;
                    j10 = 1280;
                    str2 = null;
                    if ((j & j10) != 0) {
                        str5 = str;
                    } else {
                        str5 = str;
                        atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                        atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                        atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                        atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                    }
                    if ((j & j7) != 0) {
                        atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                    }
                    if ((j & j6) != 0) {
                        atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                    }
                    if ((j & j3) != 0) {
                        ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                    }
                    if ((j & j9) != 0) {
                        atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                        atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                        atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                    }
                    if ((j & j5) != 0) {
                        atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                    }
                    if ((j & 1664) != 0) {
                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                    }
                    if ((j & j4) != 0) {
                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                    }
                    if ((j & j8) != 0) {
                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                    }
                }
            }
            str = null;
            j11 = j & 1538;
            i = 1;
            i8 = 8;
            if (j11 != 0) {
                if (mapData == null) {
                    obj = null;
                } else {
                    showMyLocation = mapData.getShowMyLocation();
                }
                updateRegistration(i, obj);
                if (obj == null) {
                    z = false;
                } else {
                    z = obj.get();
                }
                if (j11 != j2) {
                    if (z) {
                    }
                    j = z ? j | PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM : j | PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH;
                }
                if (z) {
                    i2 = i8;
                    j11 = j & j6;
                    if (j11 == j2) {
                        if (mapData == null) {
                        }
                        updateRegistration(2, commissionAtmsSwitcherVisible);
                        if (commissionAtmsSwitcherVisible == null) {
                            z2 = commissionAtmsSwitcherVisible.get();
                        } else {
                            z2 = false;
                        }
                        if (j11 != j2) {
                            if (z2) {
                            }
                            j = z2 ? j | PlaybackStateCompat.ACTION_SET_REPEAT_MODE : j | PlaybackStateCompat.ACTION_PREPARE_FROM_URI;
                        }
                        if (z2) {
                        }
                        i = z2 ? 0 : i8;
                    } else {
                        i = 0;
                    }
                    j11 = j & j5;
                    if (j11 == j2) {
                        if (mapData == null) {
                        }
                        updateRegistration(3, commissionAtmsSwitcherVisible);
                        if (commissionAtmsSwitcherVisible == null) {
                        }
                        if (str6 == null) {
                        }
                        if (j11 != j2) {
                            if (obj2 == null) {
                            }
                            j = obj2 == null ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                        }
                        if (obj2 == null) {
                            i3 = i8;
                            if ((j & j4) != j2) {
                                if (mapData == null) {
                                }
                                updateRegistration(4, atmsAddress);
                                if (atmsAddress != null) {
                                    str7 = (String) atmsAddress.get();
                                    if ((j & j3) == 0) {
                                        if (mapData == null) {
                                            detailsHeight = mapData.getDetailsHeight();
                                            str8 = str7;
                                        } else {
                                            str8 = str7;
                                            detailsHeight = null;
                                        }
                                        updateRegistration(5, detailsHeight);
                                        if (detailsHeight != null) {
                                            i4 = detailsHeight.get();
                                            j11 = j & j9;
                                            if (j11 == 0) {
                                                if (mapData == null) {
                                                    detailsHeight = mapData.getInstructionType();
                                                    i9 = i4;
                                                } else {
                                                    i9 = i4;
                                                    detailsHeight = null;
                                                }
                                                updateRegistration(6, detailsHeight);
                                                if (detailsHeight == null) {
                                                }
                                                if (atmInstructionType != AtmInstructionType.ATM) {
                                                    i10 = i2;
                                                    detailsHeight = 1;
                                                } else {
                                                    i10 = i2;
                                                    detailsHeight = null;
                                                }
                                                if (atmInstructionType != AtmInstructionType.TERMINAL) {
                                                    str9 = str6;
                                                    obj = 1;
                                                } else {
                                                    str9 = str6;
                                                    obj = null;
                                                }
                                                if (atmInstructionType != AtmInstructionType.OFFICE) {
                                                    j12 = 0;
                                                    obj3 = 1;
                                                } else {
                                                    j12 = 0;
                                                    obj3 = null;
                                                }
                                                if (j11 == j12) {
                                                    if (detailsHeight == null) {
                                                    }
                                                }
                                                if ((j13 & j9) == j12) {
                                                    if (obj == null) {
                                                    }
                                                }
                                                if ((j11 & j9) == j12) {
                                                    if (obj3 == null) {
                                                    }
                                                }
                                                if (detailsHeight == null) {
                                                }
                                                if (obj == null) {
                                                }
                                                if (obj3 == null) {
                                                }
                                                i4 = i11;
                                                i5 = obj3 == null ? 0 : i8;
                                                j14 = 1664;
                                                i13 = i12;
                                                j = j12;
                                            } else {
                                                i9 = i4;
                                                i10 = i2;
                                                str9 = str6;
                                                i4 = 0;
                                                i5 = 0;
                                                j14 = 1664;
                                                i13 = 0;
                                            }
                                            if ((j & j14) != 0) {
                                                if (mapData == null) {
                                                }
                                                updateRegistration(7, atmsName);
                                                if (atmsName != null) {
                                                    i6 = i4;
                                                    i2 = i5;
                                                    str2 = (String) atmsName.get();
                                                    str3 = str;
                                                    i7 = i13;
                                                    str4 = str8;
                                                    i5 = i9;
                                                    i4 = i10;
                                                    str = str9;
                                                    j10 = 1280;
                                                    if ((j & j10) != 0) {
                                                        str5 = str;
                                                        atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                                        atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                                        atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                                        atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                                                    } else {
                                                        str5 = str;
                                                    }
                                                    if ((j & j7) != 0) {
                                                        atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                                                    }
                                                    if ((j & j6) != 0) {
                                                        atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                                                    }
                                                    if ((j & j3) != 0) {
                                                        ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                                                    }
                                                    if ((j & j9) != 0) {
                                                        atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                                        atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                                        atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                                                    }
                                                    if ((j & j5) != 0) {
                                                        atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                                                    }
                                                    if ((j & 1664) != 0) {
                                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                                                    }
                                                    if ((j & j4) != 0) {
                                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                                                    }
                                                    if ((j & j8) != 0) {
                                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                                                    }
                                                }
                                            }
                                            i6 = i4;
                                            i2 = i5;
                                            str3 = str;
                                            i7 = i13;
                                            str4 = str8;
                                            i5 = i9;
                                            i4 = i10;
                                            str = str9;
                                            j10 = 1280;
                                            str2 = null;
                                            if ((j & j10) != 0) {
                                                str5 = str;
                                            } else {
                                                str5 = str;
                                                atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                                atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                                atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                                atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                                            }
                                            if ((j & j7) != 0) {
                                                atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                                            }
                                            if ((j & j6) != 0) {
                                                atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                                            }
                                            if ((j & j3) != 0) {
                                                ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                                            }
                                            if ((j & j9) != 0) {
                                                atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                                atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                                atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                                            }
                                            if ((j & j5) != 0) {
                                                atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                                            }
                                            if ((j & 1664) != 0) {
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                                            }
                                            if ((j & j4) != 0) {
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                                            }
                                            if ((j & j8) != 0) {
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                                            }
                                        }
                                    }
                                    str8 = str7;
                                    i4 = 0;
                                    j11 = j & j9;
                                    if (j11 == 0) {
                                        i9 = i4;
                                        i10 = i2;
                                        str9 = str6;
                                        i4 = 0;
                                        i5 = 0;
                                        j14 = 1664;
                                        i13 = 0;
                                    } else {
                                        if (mapData == null) {
                                            i9 = i4;
                                            detailsHeight = null;
                                        } else {
                                            detailsHeight = mapData.getInstructionType();
                                            i9 = i4;
                                        }
                                        updateRegistration(6, detailsHeight);
                                        if (detailsHeight == null) {
                                        }
                                        if (atmInstructionType != AtmInstructionType.ATM) {
                                            i10 = i2;
                                            detailsHeight = null;
                                        } else {
                                            i10 = i2;
                                            detailsHeight = 1;
                                        }
                                        if (atmInstructionType != AtmInstructionType.TERMINAL) {
                                            str9 = str6;
                                            obj = null;
                                        } else {
                                            str9 = str6;
                                            obj = 1;
                                        }
                                        if (atmInstructionType != AtmInstructionType.OFFICE) {
                                            j12 = 0;
                                            obj3 = null;
                                        } else {
                                            j12 = 0;
                                            obj3 = 1;
                                        }
                                        if (j11 == j12) {
                                        }
                                        if ((j13 & j9) == j12) {
                                        }
                                        if ((j11 & j9) == j12) {
                                        }
                                        if (detailsHeight == null) {
                                        }
                                        if (obj == null) {
                                        }
                                        if (obj3 == null) {
                                        }
                                        i4 = i11;
                                        i5 = obj3 == null ? 0 : i8;
                                        j14 = 1664;
                                        i13 = i12;
                                        j = j12;
                                    }
                                    if ((j & j14) != 0) {
                                        if (mapData == null) {
                                        }
                                        updateRegistration(7, atmsName);
                                        if (atmsName != null) {
                                            i6 = i4;
                                            i2 = i5;
                                            str2 = (String) atmsName.get();
                                            str3 = str;
                                            i7 = i13;
                                            str4 = str8;
                                            i5 = i9;
                                            i4 = i10;
                                            str = str9;
                                            j10 = 1280;
                                            if ((j & j10) != 0) {
                                                str5 = str;
                                                atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                                atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                                atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                                atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                                            } else {
                                                str5 = str;
                                            }
                                            if ((j & j7) != 0) {
                                                atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                                            }
                                            if ((j & j6) != 0) {
                                                atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                                            }
                                            if ((j & j3) != 0) {
                                                ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                                            }
                                            if ((j & j9) != 0) {
                                                atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                                atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                                atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                                            }
                                            if ((j & j5) != 0) {
                                                atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                                            }
                                            if ((j & 1664) != 0) {
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                                            }
                                            if ((j & j4) != 0) {
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                                            }
                                            if ((j & j8) != 0) {
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                                            }
                                        }
                                    }
                                    i6 = i4;
                                    i2 = i5;
                                    str3 = str;
                                    i7 = i13;
                                    str4 = str8;
                                    i5 = i9;
                                    i4 = i10;
                                    str = str9;
                                    j10 = 1280;
                                    str2 = null;
                                    if ((j & j10) != 0) {
                                        str5 = str;
                                    } else {
                                        str5 = str;
                                        atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                        atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                        atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                        atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                                    }
                                    if ((j & j7) != 0) {
                                        atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                                    }
                                    if ((j & j6) != 0) {
                                        atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                                    }
                                    if ((j & j3) != 0) {
                                        ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                                    }
                                    if ((j & j9) != 0) {
                                        atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                        atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                        atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                                    }
                                    if ((j & j5) != 0) {
                                        atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                                    }
                                    if ((j & 1664) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                                    }
                                    if ((j & j4) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                                    }
                                    if ((j & j8) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                                    }
                                }
                            }
                            str7 = null;
                            if ((j & j3) == 0) {
                                str8 = str7;
                            } else {
                                if (mapData == null) {
                                    str8 = str7;
                                    detailsHeight = null;
                                } else {
                                    detailsHeight = mapData.getDetailsHeight();
                                    str8 = str7;
                                }
                                updateRegistration(5, detailsHeight);
                                if (detailsHeight != null) {
                                    i4 = detailsHeight.get();
                                    j11 = j & j9;
                                    if (j11 == 0) {
                                        if (mapData == null) {
                                            detailsHeight = mapData.getInstructionType();
                                            i9 = i4;
                                        } else {
                                            i9 = i4;
                                            detailsHeight = null;
                                        }
                                        updateRegistration(6, detailsHeight);
                                        if (detailsHeight == null) {
                                        }
                                        if (atmInstructionType != AtmInstructionType.ATM) {
                                            i10 = i2;
                                            detailsHeight = 1;
                                        } else {
                                            i10 = i2;
                                            detailsHeight = null;
                                        }
                                        if (atmInstructionType != AtmInstructionType.TERMINAL) {
                                            str9 = str6;
                                            obj = 1;
                                        } else {
                                            str9 = str6;
                                            obj = null;
                                        }
                                        if (atmInstructionType != AtmInstructionType.OFFICE) {
                                            j12 = 0;
                                            obj3 = 1;
                                        } else {
                                            j12 = 0;
                                            obj3 = null;
                                        }
                                        if (j11 == j12) {
                                            if (detailsHeight == null) {
                                            }
                                        }
                                        if ((j13 & j9) == j12) {
                                            if (obj == null) {
                                            }
                                        }
                                        if ((j11 & j9) == j12) {
                                            if (obj3 == null) {
                                            }
                                        }
                                        if (detailsHeight == null) {
                                        }
                                        if (obj == null) {
                                        }
                                        if (obj3 == null) {
                                        }
                                        i4 = i11;
                                        i5 = obj3 == null ? 0 : i8;
                                        j14 = 1664;
                                        i13 = i12;
                                        j = j12;
                                    } else {
                                        i9 = i4;
                                        i10 = i2;
                                        str9 = str6;
                                        i4 = 0;
                                        i5 = 0;
                                        j14 = 1664;
                                        i13 = 0;
                                    }
                                    if ((j & j14) != 0) {
                                        if (mapData == null) {
                                        }
                                        updateRegistration(7, atmsName);
                                        if (atmsName != null) {
                                            i6 = i4;
                                            i2 = i5;
                                            str2 = (String) atmsName.get();
                                            str3 = str;
                                            i7 = i13;
                                            str4 = str8;
                                            i5 = i9;
                                            i4 = i10;
                                            str = str9;
                                            j10 = 1280;
                                            if ((j & j10) != 0) {
                                                str5 = str;
                                                atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                                atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                                atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                                atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                                            } else {
                                                str5 = str;
                                            }
                                            if ((j & j7) != 0) {
                                                atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                                            }
                                            if ((j & j6) != 0) {
                                                atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                                            }
                                            if ((j & j3) != 0) {
                                                ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                                            }
                                            if ((j & j9) != 0) {
                                                atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                                atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                                atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                                            }
                                            if ((j & j5) != 0) {
                                                atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                                            }
                                            if ((j & 1664) != 0) {
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                                            }
                                            if ((j & j4) != 0) {
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                                            }
                                            if ((j & j8) != 0) {
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                                            }
                                        }
                                    }
                                    i6 = i4;
                                    i2 = i5;
                                    str3 = str;
                                    i7 = i13;
                                    str4 = str8;
                                    i5 = i9;
                                    i4 = i10;
                                    str = str9;
                                    j10 = 1280;
                                    str2 = null;
                                    if ((j & j10) != 0) {
                                        str5 = str;
                                    } else {
                                        str5 = str;
                                        atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                        atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                        atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                        atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                                    }
                                    if ((j & j7) != 0) {
                                        atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                                    }
                                    if ((j & j6) != 0) {
                                        atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                                    }
                                    if ((j & j3) != 0) {
                                        ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                                    }
                                    if ((j & j9) != 0) {
                                        atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                        atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                        atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                                    }
                                    if ((j & j5) != 0) {
                                        atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                                    }
                                    if ((j & 1664) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                                    }
                                    if ((j & j4) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                                    }
                                    if ((j & j8) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                                    }
                                }
                            }
                            i4 = 0;
                            j11 = j & j9;
                            if (j11 == 0) {
                                i9 = i4;
                                i10 = i2;
                                str9 = str6;
                                i4 = 0;
                                i5 = 0;
                                j14 = 1664;
                                i13 = 0;
                            } else {
                                if (mapData == null) {
                                    i9 = i4;
                                    detailsHeight = null;
                                } else {
                                    detailsHeight = mapData.getInstructionType();
                                    i9 = i4;
                                }
                                updateRegistration(6, detailsHeight);
                                if (detailsHeight == null) {
                                }
                                if (atmInstructionType != AtmInstructionType.ATM) {
                                    i10 = i2;
                                    detailsHeight = null;
                                } else {
                                    i10 = i2;
                                    detailsHeight = 1;
                                }
                                if (atmInstructionType != AtmInstructionType.TERMINAL) {
                                    str9 = str6;
                                    obj = null;
                                } else {
                                    str9 = str6;
                                    obj = 1;
                                }
                                if (atmInstructionType != AtmInstructionType.OFFICE) {
                                    j12 = 0;
                                    obj3 = null;
                                } else {
                                    j12 = 0;
                                    obj3 = 1;
                                }
                                if (j11 == j12) {
                                }
                                if ((j13 & j9) == j12) {
                                }
                                if ((j11 & j9) == j12) {
                                }
                                if (detailsHeight == null) {
                                }
                                if (obj == null) {
                                }
                                if (obj3 == null) {
                                }
                                i4 = i11;
                                i5 = obj3 == null ? 0 : i8;
                                j14 = 1664;
                                i13 = i12;
                                j = j12;
                            }
                            if ((j & j14) != 0) {
                                if (mapData == null) {
                                }
                                updateRegistration(7, atmsName);
                                if (atmsName != null) {
                                    i6 = i4;
                                    i2 = i5;
                                    str2 = (String) atmsName.get();
                                    str3 = str;
                                    i7 = i13;
                                    str4 = str8;
                                    i5 = i9;
                                    i4 = i10;
                                    str = str9;
                                    j10 = 1280;
                                    if ((j & j10) != 0) {
                                        str5 = str;
                                        atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                        atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                        atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                        atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                                    } else {
                                        str5 = str;
                                    }
                                    if ((j & j7) != 0) {
                                        atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                                    }
                                    if ((j & j6) != 0) {
                                        atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                                    }
                                    if ((j & j3) != 0) {
                                        ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                                    }
                                    if ((j & j9) != 0) {
                                        atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                        atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                        atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                                    }
                                    if ((j & j5) != 0) {
                                        atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                                    }
                                    if ((j & 1664) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                                    }
                                    if ((j & j4) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                                    }
                                    if ((j & j8) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                                    }
                                }
                            }
                            i6 = i4;
                            i2 = i5;
                            str3 = str;
                            i7 = i13;
                            str4 = str8;
                            i5 = i9;
                            i4 = i10;
                            str = str9;
                            j10 = 1280;
                            str2 = null;
                            if ((j & j10) != 0) {
                                str5 = str;
                            } else {
                                str5 = str;
                                atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                            }
                            if ((j & j7) != 0) {
                                atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                            }
                            if ((j & j6) != 0) {
                                atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                            }
                            if ((j & j3) != 0) {
                                ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                            }
                            if ((j & j9) != 0) {
                                atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                            }
                            if ((j & j5) != 0) {
                                atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                            }
                            if ((j & 1664) != 0) {
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                            }
                            if ((j & j4) != 0) {
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                            }
                            if ((j & j8) != 0) {
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                            }
                        }
                    } else {
                        str6 = null;
                    }
                    i3 = 0;
                    if ((j & j4) != j2) {
                        if (mapData == null) {
                        }
                        updateRegistration(4, atmsAddress);
                        if (atmsAddress != null) {
                            str7 = (String) atmsAddress.get();
                            if ((j & j3) == 0) {
                                if (mapData == null) {
                                    detailsHeight = mapData.getDetailsHeight();
                                    str8 = str7;
                                } else {
                                    str8 = str7;
                                    detailsHeight = null;
                                }
                                updateRegistration(5, detailsHeight);
                                if (detailsHeight != null) {
                                    i4 = detailsHeight.get();
                                    j11 = j & j9;
                                    if (j11 == 0) {
                                        if (mapData == null) {
                                            detailsHeight = mapData.getInstructionType();
                                            i9 = i4;
                                        } else {
                                            i9 = i4;
                                            detailsHeight = null;
                                        }
                                        updateRegistration(6, detailsHeight);
                                        if (detailsHeight == null) {
                                        }
                                        if (atmInstructionType != AtmInstructionType.ATM) {
                                            i10 = i2;
                                            detailsHeight = 1;
                                        } else {
                                            i10 = i2;
                                            detailsHeight = null;
                                        }
                                        if (atmInstructionType != AtmInstructionType.TERMINAL) {
                                            str9 = str6;
                                            obj = 1;
                                        } else {
                                            str9 = str6;
                                            obj = null;
                                        }
                                        if (atmInstructionType != AtmInstructionType.OFFICE) {
                                            j12 = 0;
                                            obj3 = 1;
                                        } else {
                                            j12 = 0;
                                            obj3 = null;
                                        }
                                        if (j11 == j12) {
                                            if (detailsHeight == null) {
                                            }
                                        }
                                        if ((j13 & j9) == j12) {
                                            if (obj == null) {
                                            }
                                        }
                                        if ((j11 & j9) == j12) {
                                            if (obj3 == null) {
                                            }
                                        }
                                        if (detailsHeight == null) {
                                        }
                                        if (obj == null) {
                                        }
                                        if (obj3 == null) {
                                        }
                                        i4 = i11;
                                        i5 = obj3 == null ? 0 : i8;
                                        j14 = 1664;
                                        i13 = i12;
                                        j = j12;
                                    } else {
                                        i9 = i4;
                                        i10 = i2;
                                        str9 = str6;
                                        i4 = 0;
                                        i5 = 0;
                                        j14 = 1664;
                                        i13 = 0;
                                    }
                                    if ((j & j14) != 0) {
                                        if (mapData == null) {
                                        }
                                        updateRegistration(7, atmsName);
                                        if (atmsName != null) {
                                            i6 = i4;
                                            i2 = i5;
                                            str2 = (String) atmsName.get();
                                            str3 = str;
                                            i7 = i13;
                                            str4 = str8;
                                            i5 = i9;
                                            i4 = i10;
                                            str = str9;
                                            j10 = 1280;
                                            if ((j & j10) != 0) {
                                                str5 = str;
                                                atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                                atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                                atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                                atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                                            } else {
                                                str5 = str;
                                            }
                                            if ((j & j7) != 0) {
                                                atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                                            }
                                            if ((j & j6) != 0) {
                                                atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                                            }
                                            if ((j & j3) != 0) {
                                                ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                                            }
                                            if ((j & j9) != 0) {
                                                atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                                atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                                atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                                            }
                                            if ((j & j5) != 0) {
                                                atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                                            }
                                            if ((j & 1664) != 0) {
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                                            }
                                            if ((j & j4) != 0) {
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                                            }
                                            if ((j & j8) != 0) {
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                                            }
                                        }
                                    }
                                    i6 = i4;
                                    i2 = i5;
                                    str3 = str;
                                    i7 = i13;
                                    str4 = str8;
                                    i5 = i9;
                                    i4 = i10;
                                    str = str9;
                                    j10 = 1280;
                                    str2 = null;
                                    if ((j & j10) != 0) {
                                        str5 = str;
                                    } else {
                                        str5 = str;
                                        atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                        atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                        atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                        atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                                    }
                                    if ((j & j7) != 0) {
                                        atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                                    }
                                    if ((j & j6) != 0) {
                                        atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                                    }
                                    if ((j & j3) != 0) {
                                        ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                                    }
                                    if ((j & j9) != 0) {
                                        atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                        atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                        atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                                    }
                                    if ((j & j5) != 0) {
                                        atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                                    }
                                    if ((j & 1664) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                                    }
                                    if ((j & j4) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                                    }
                                    if ((j & j8) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                                    }
                                }
                            }
                            str8 = str7;
                            i4 = 0;
                            j11 = j & j9;
                            if (j11 == 0) {
                                i9 = i4;
                                i10 = i2;
                                str9 = str6;
                                i4 = 0;
                                i5 = 0;
                                j14 = 1664;
                                i13 = 0;
                            } else {
                                if (mapData == null) {
                                    i9 = i4;
                                    detailsHeight = null;
                                } else {
                                    detailsHeight = mapData.getInstructionType();
                                    i9 = i4;
                                }
                                updateRegistration(6, detailsHeight);
                                if (detailsHeight == null) {
                                }
                                if (atmInstructionType != AtmInstructionType.ATM) {
                                    i10 = i2;
                                    detailsHeight = null;
                                } else {
                                    i10 = i2;
                                    detailsHeight = 1;
                                }
                                if (atmInstructionType != AtmInstructionType.TERMINAL) {
                                    str9 = str6;
                                    obj = null;
                                } else {
                                    str9 = str6;
                                    obj = 1;
                                }
                                if (atmInstructionType != AtmInstructionType.OFFICE) {
                                    j12 = 0;
                                    obj3 = null;
                                } else {
                                    j12 = 0;
                                    obj3 = 1;
                                }
                                if (j11 == j12) {
                                }
                                if ((j13 & j9) == j12) {
                                }
                                if ((j11 & j9) == j12) {
                                }
                                if (detailsHeight == null) {
                                }
                                if (obj == null) {
                                }
                                if (obj3 == null) {
                                }
                                i4 = i11;
                                i5 = obj3 == null ? 0 : i8;
                                j14 = 1664;
                                i13 = i12;
                                j = j12;
                            }
                            if ((j & j14) != 0) {
                                if (mapData == null) {
                                }
                                updateRegistration(7, atmsName);
                                if (atmsName != null) {
                                    i6 = i4;
                                    i2 = i5;
                                    str2 = (String) atmsName.get();
                                    str3 = str;
                                    i7 = i13;
                                    str4 = str8;
                                    i5 = i9;
                                    i4 = i10;
                                    str = str9;
                                    j10 = 1280;
                                    if ((j & j10) != 0) {
                                        str5 = str;
                                        atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                        atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                        atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                        atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                                    } else {
                                        str5 = str;
                                    }
                                    if ((j & j7) != 0) {
                                        atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                                    }
                                    if ((j & j6) != 0) {
                                        atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                                    }
                                    if ((j & j3) != 0) {
                                        ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                                    }
                                    if ((j & j9) != 0) {
                                        atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                        atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                        atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                                    }
                                    if ((j & j5) != 0) {
                                        atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                                    }
                                    if ((j & 1664) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                                    }
                                    if ((j & j4) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                                    }
                                    if ((j & j8) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                                    }
                                }
                            }
                            i6 = i4;
                            i2 = i5;
                            str3 = str;
                            i7 = i13;
                            str4 = str8;
                            i5 = i9;
                            i4 = i10;
                            str = str9;
                            j10 = 1280;
                            str2 = null;
                            if ((j & j10) != 0) {
                                str5 = str;
                            } else {
                                str5 = str;
                                atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                            }
                            if ((j & j7) != 0) {
                                atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                            }
                            if ((j & j6) != 0) {
                                atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                            }
                            if ((j & j3) != 0) {
                                ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                            }
                            if ((j & j9) != 0) {
                                atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                            }
                            if ((j & j5) != 0) {
                                atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                            }
                            if ((j & 1664) != 0) {
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                            }
                            if ((j & j4) != 0) {
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                            }
                            if ((j & j8) != 0) {
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                            }
                        }
                    }
                    str7 = null;
                    if ((j & j3) == 0) {
                        str8 = str7;
                    } else {
                        if (mapData == null) {
                            str8 = str7;
                            detailsHeight = null;
                        } else {
                            detailsHeight = mapData.getDetailsHeight();
                            str8 = str7;
                        }
                        updateRegistration(5, detailsHeight);
                        if (detailsHeight != null) {
                            i4 = detailsHeight.get();
                            j11 = j & j9;
                            if (j11 == 0) {
                                if (mapData == null) {
                                    detailsHeight = mapData.getInstructionType();
                                    i9 = i4;
                                } else {
                                    i9 = i4;
                                    detailsHeight = null;
                                }
                                updateRegistration(6, detailsHeight);
                                if (detailsHeight == null) {
                                }
                                if (atmInstructionType != AtmInstructionType.ATM) {
                                    i10 = i2;
                                    detailsHeight = 1;
                                } else {
                                    i10 = i2;
                                    detailsHeight = null;
                                }
                                if (atmInstructionType != AtmInstructionType.TERMINAL) {
                                    str9 = str6;
                                    obj = 1;
                                } else {
                                    str9 = str6;
                                    obj = null;
                                }
                                if (atmInstructionType != AtmInstructionType.OFFICE) {
                                    j12 = 0;
                                    obj3 = 1;
                                } else {
                                    j12 = 0;
                                    obj3 = null;
                                }
                                if (j11 == j12) {
                                    if (detailsHeight == null) {
                                    }
                                }
                                if ((j13 & j9) == j12) {
                                    if (obj == null) {
                                    }
                                }
                                if ((j11 & j9) == j12) {
                                    if (obj3 == null) {
                                    }
                                }
                                if (detailsHeight == null) {
                                }
                                if (obj == null) {
                                }
                                if (obj3 == null) {
                                }
                                i4 = i11;
                                i5 = obj3 == null ? 0 : i8;
                                j14 = 1664;
                                i13 = i12;
                                j = j12;
                            } else {
                                i9 = i4;
                                i10 = i2;
                                str9 = str6;
                                i4 = 0;
                                i5 = 0;
                                j14 = 1664;
                                i13 = 0;
                            }
                            if ((j & j14) != 0) {
                                if (mapData == null) {
                                }
                                updateRegistration(7, atmsName);
                                if (atmsName != null) {
                                    i6 = i4;
                                    i2 = i5;
                                    str2 = (String) atmsName.get();
                                    str3 = str;
                                    i7 = i13;
                                    str4 = str8;
                                    i5 = i9;
                                    i4 = i10;
                                    str = str9;
                                    j10 = 1280;
                                    if ((j & j10) != 0) {
                                        str5 = str;
                                        atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                        atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                        atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                        atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                                    } else {
                                        str5 = str;
                                    }
                                    if ((j & j7) != 0) {
                                        atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                                    }
                                    if ((j & j6) != 0) {
                                        atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                                    }
                                    if ((j & j3) != 0) {
                                        ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                                    }
                                    if ((j & j9) != 0) {
                                        atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                        atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                        atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                                    }
                                    if ((j & j5) != 0) {
                                        atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                                    }
                                    if ((j & 1664) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                                    }
                                    if ((j & j4) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                                    }
                                    if ((j & j8) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                                    }
                                }
                            }
                            i6 = i4;
                            i2 = i5;
                            str3 = str;
                            i7 = i13;
                            str4 = str8;
                            i5 = i9;
                            i4 = i10;
                            str = str9;
                            j10 = 1280;
                            str2 = null;
                            if ((j & j10) != 0) {
                                str5 = str;
                            } else {
                                str5 = str;
                                atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                            }
                            if ((j & j7) != 0) {
                                atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                            }
                            if ((j & j6) != 0) {
                                atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                            }
                            if ((j & j3) != 0) {
                                ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                            }
                            if ((j & j9) != 0) {
                                atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                            }
                            if ((j & j5) != 0) {
                                atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                            }
                            if ((j & 1664) != 0) {
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                            }
                            if ((j & j4) != 0) {
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                            }
                            if ((j & j8) != 0) {
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                            }
                        }
                    }
                    i4 = 0;
                    j11 = j & j9;
                    if (j11 == 0) {
                        i9 = i4;
                        i10 = i2;
                        str9 = str6;
                        i4 = 0;
                        i5 = 0;
                        j14 = 1664;
                        i13 = 0;
                    } else {
                        if (mapData == null) {
                            i9 = i4;
                            detailsHeight = null;
                        } else {
                            detailsHeight = mapData.getInstructionType();
                            i9 = i4;
                        }
                        updateRegistration(6, detailsHeight);
                        if (detailsHeight == null) {
                        }
                        if (atmInstructionType != AtmInstructionType.ATM) {
                            i10 = i2;
                            detailsHeight = null;
                        } else {
                            i10 = i2;
                            detailsHeight = 1;
                        }
                        if (atmInstructionType != AtmInstructionType.TERMINAL) {
                            str9 = str6;
                            obj = null;
                        } else {
                            str9 = str6;
                            obj = 1;
                        }
                        if (atmInstructionType != AtmInstructionType.OFFICE) {
                            j12 = 0;
                            obj3 = null;
                        } else {
                            j12 = 0;
                            obj3 = 1;
                        }
                        if (j11 == j12) {
                        }
                        if ((j13 & j9) == j12) {
                        }
                        if ((j11 & j9) == j12) {
                        }
                        if (detailsHeight == null) {
                        }
                        if (obj == null) {
                        }
                        if (obj3 == null) {
                        }
                        i4 = i11;
                        i5 = obj3 == null ? 0 : i8;
                        j14 = 1664;
                        i13 = i12;
                        j = j12;
                    }
                    if ((j & j14) != 0) {
                        if (mapData == null) {
                        }
                        updateRegistration(7, atmsName);
                        if (atmsName != null) {
                            i6 = i4;
                            i2 = i5;
                            str2 = (String) atmsName.get();
                            str3 = str;
                            i7 = i13;
                            str4 = str8;
                            i5 = i9;
                            i4 = i10;
                            str = str9;
                            j10 = 1280;
                            if ((j & j10) != 0) {
                                str5 = str;
                                atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                            } else {
                                str5 = str;
                            }
                            if ((j & j7) != 0) {
                                atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                            }
                            if ((j & j6) != 0) {
                                atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                            }
                            if ((j & j3) != 0) {
                                ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                            }
                            if ((j & j9) != 0) {
                                atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                            }
                            if ((j & j5) != 0) {
                                atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                            }
                            if ((j & 1664) != 0) {
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                            }
                            if ((j & j4) != 0) {
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                            }
                            if ((j & j8) != 0) {
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                            }
                        }
                    }
                    i6 = i4;
                    i2 = i5;
                    str3 = str;
                    i7 = i13;
                    str4 = str8;
                    i5 = i9;
                    i4 = i10;
                    str = str9;
                    j10 = 1280;
                    str2 = null;
                    if ((j & j10) != 0) {
                        str5 = str;
                    } else {
                        str5 = str;
                        atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                        atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                        atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                        atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                    }
                    if ((j & j7) != 0) {
                        atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                    }
                    if ((j & j6) != 0) {
                        atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                    }
                    if ((j & j3) != 0) {
                        ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                    }
                    if ((j & j9) != 0) {
                        atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                        atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                        atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                    }
                    if ((j & j5) != 0) {
                        atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                    }
                    if ((j & 1664) != 0) {
                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                    }
                    if ((j & j4) != 0) {
                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                    }
                    if ((j & j8) != 0) {
                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                    }
                }
            }
            i2 = 0;
            j11 = j & j6;
            if (j11 == j2) {
                i = 0;
            } else {
                if (mapData == null) {
                }
                updateRegistration(2, commissionAtmsSwitcherVisible);
                if (commissionAtmsSwitcherVisible == null) {
                    z2 = false;
                } else {
                    z2 = commissionAtmsSwitcherVisible.get();
                }
                if (j11 != j2) {
                    if (z2) {
                    }
                    j = z2 ? j | PlaybackStateCompat.ACTION_SET_REPEAT_MODE : j | PlaybackStateCompat.ACTION_PREPARE_FROM_URI;
                }
                if (z2) {
                }
                i = z2 ? 0 : i8;
            }
            j11 = j & j5;
            if (j11 == j2) {
                str6 = null;
            } else {
                if (mapData == null) {
                }
                updateRegistration(3, commissionAtmsSwitcherVisible);
                if (commissionAtmsSwitcherVisible == null) {
                }
                if (str6 == null) {
                }
                if (j11 != j2) {
                    if (obj2 == null) {
                    }
                    j = obj2 == null ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                }
                if (obj2 == null) {
                    i3 = i8;
                    if ((j & j4) != j2) {
                        if (mapData == null) {
                        }
                        updateRegistration(4, atmsAddress);
                        if (atmsAddress != null) {
                            str7 = (String) atmsAddress.get();
                            if ((j & j3) == 0) {
                                if (mapData == null) {
                                    detailsHeight = mapData.getDetailsHeight();
                                    str8 = str7;
                                } else {
                                    str8 = str7;
                                    detailsHeight = null;
                                }
                                updateRegistration(5, detailsHeight);
                                if (detailsHeight != null) {
                                    i4 = detailsHeight.get();
                                    j11 = j & j9;
                                    if (j11 == 0) {
                                        if (mapData == null) {
                                            detailsHeight = mapData.getInstructionType();
                                            i9 = i4;
                                        } else {
                                            i9 = i4;
                                            detailsHeight = null;
                                        }
                                        updateRegistration(6, detailsHeight);
                                        if (detailsHeight == null) {
                                        }
                                        if (atmInstructionType != AtmInstructionType.ATM) {
                                            i10 = i2;
                                            detailsHeight = 1;
                                        } else {
                                            i10 = i2;
                                            detailsHeight = null;
                                        }
                                        if (atmInstructionType != AtmInstructionType.TERMINAL) {
                                            str9 = str6;
                                            obj = 1;
                                        } else {
                                            str9 = str6;
                                            obj = null;
                                        }
                                        if (atmInstructionType != AtmInstructionType.OFFICE) {
                                            j12 = 0;
                                            obj3 = 1;
                                        } else {
                                            j12 = 0;
                                            obj3 = null;
                                        }
                                        if (j11 == j12) {
                                            if (detailsHeight == null) {
                                            }
                                        }
                                        if ((j13 & j9) == j12) {
                                            if (obj == null) {
                                            }
                                        }
                                        if ((j11 & j9) == j12) {
                                            if (obj3 == null) {
                                            }
                                        }
                                        if (detailsHeight == null) {
                                        }
                                        if (obj == null) {
                                        }
                                        if (obj3 == null) {
                                        }
                                        i4 = i11;
                                        i5 = obj3 == null ? 0 : i8;
                                        j14 = 1664;
                                        i13 = i12;
                                        j = j12;
                                    } else {
                                        i9 = i4;
                                        i10 = i2;
                                        str9 = str6;
                                        i4 = 0;
                                        i5 = 0;
                                        j14 = 1664;
                                        i13 = 0;
                                    }
                                    if ((j & j14) != 0) {
                                        if (mapData == null) {
                                        }
                                        updateRegistration(7, atmsName);
                                        if (atmsName != null) {
                                            i6 = i4;
                                            i2 = i5;
                                            str2 = (String) atmsName.get();
                                            str3 = str;
                                            i7 = i13;
                                            str4 = str8;
                                            i5 = i9;
                                            i4 = i10;
                                            str = str9;
                                            j10 = 1280;
                                            if ((j & j10) != 0) {
                                                str5 = str;
                                                atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                                atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                                atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                                atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                                            } else {
                                                str5 = str;
                                            }
                                            if ((j & j7) != 0) {
                                                atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                                            }
                                            if ((j & j6) != 0) {
                                                atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                                            }
                                            if ((j & j3) != 0) {
                                                ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                                            }
                                            if ((j & j9) != 0) {
                                                atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                                atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                                atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                                            }
                                            if ((j & j5) != 0) {
                                                atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                                            }
                                            if ((j & 1664) != 0) {
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                                            }
                                            if ((j & j4) != 0) {
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                                            }
                                            if ((j & j8) != 0) {
                                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                                            }
                                        }
                                    }
                                    i6 = i4;
                                    i2 = i5;
                                    str3 = str;
                                    i7 = i13;
                                    str4 = str8;
                                    i5 = i9;
                                    i4 = i10;
                                    str = str9;
                                    j10 = 1280;
                                    str2 = null;
                                    if ((j & j10) != 0) {
                                        str5 = str;
                                    } else {
                                        str5 = str;
                                        atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                        atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                        atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                        atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                                    }
                                    if ((j & j7) != 0) {
                                        atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                                    }
                                    if ((j & j6) != 0) {
                                        atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                                    }
                                    if ((j & j3) != 0) {
                                        ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                                    }
                                    if ((j & j9) != 0) {
                                        atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                        atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                        atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                                    }
                                    if ((j & j5) != 0) {
                                        atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                                    }
                                    if ((j & 1664) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                                    }
                                    if ((j & j4) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                                    }
                                    if ((j & j8) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                                    }
                                }
                            }
                            str8 = str7;
                            i4 = 0;
                            j11 = j & j9;
                            if (j11 == 0) {
                                i9 = i4;
                                i10 = i2;
                                str9 = str6;
                                i4 = 0;
                                i5 = 0;
                                j14 = 1664;
                                i13 = 0;
                            } else {
                                if (mapData == null) {
                                    i9 = i4;
                                    detailsHeight = null;
                                } else {
                                    detailsHeight = mapData.getInstructionType();
                                    i9 = i4;
                                }
                                updateRegistration(6, detailsHeight);
                                if (detailsHeight == null) {
                                }
                                if (atmInstructionType != AtmInstructionType.ATM) {
                                    i10 = i2;
                                    detailsHeight = null;
                                } else {
                                    i10 = i2;
                                    detailsHeight = 1;
                                }
                                if (atmInstructionType != AtmInstructionType.TERMINAL) {
                                    str9 = str6;
                                    obj = null;
                                } else {
                                    str9 = str6;
                                    obj = 1;
                                }
                                if (atmInstructionType != AtmInstructionType.OFFICE) {
                                    j12 = 0;
                                    obj3 = null;
                                } else {
                                    j12 = 0;
                                    obj3 = 1;
                                }
                                if (j11 == j12) {
                                }
                                if ((j13 & j9) == j12) {
                                }
                                if ((j11 & j9) == j12) {
                                }
                                if (detailsHeight == null) {
                                }
                                if (obj == null) {
                                }
                                if (obj3 == null) {
                                }
                                i4 = i11;
                                i5 = obj3 == null ? 0 : i8;
                                j14 = 1664;
                                i13 = i12;
                                j = j12;
                            }
                            if ((j & j14) != 0) {
                                if (mapData == null) {
                                }
                                updateRegistration(7, atmsName);
                                if (atmsName != null) {
                                    i6 = i4;
                                    i2 = i5;
                                    str2 = (String) atmsName.get();
                                    str3 = str;
                                    i7 = i13;
                                    str4 = str8;
                                    i5 = i9;
                                    i4 = i10;
                                    str = str9;
                                    j10 = 1280;
                                    if ((j & j10) != 0) {
                                        str5 = str;
                                        atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                        atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                        atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                        atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                                    } else {
                                        str5 = str;
                                    }
                                    if ((j & j7) != 0) {
                                        atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                                    }
                                    if ((j & j6) != 0) {
                                        atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                                    }
                                    if ((j & j3) != 0) {
                                        ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                                    }
                                    if ((j & j9) != 0) {
                                        atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                        atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                        atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                                    }
                                    if ((j & j5) != 0) {
                                        atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                                    }
                                    if ((j & 1664) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                                    }
                                    if ((j & j4) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                                    }
                                    if ((j & j8) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                                    }
                                }
                            }
                            i6 = i4;
                            i2 = i5;
                            str3 = str;
                            i7 = i13;
                            str4 = str8;
                            i5 = i9;
                            i4 = i10;
                            str = str9;
                            j10 = 1280;
                            str2 = null;
                            if ((j & j10) != 0) {
                                str5 = str;
                            } else {
                                str5 = str;
                                atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                            }
                            if ((j & j7) != 0) {
                                atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                            }
                            if ((j & j6) != 0) {
                                atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                            }
                            if ((j & j3) != 0) {
                                ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                            }
                            if ((j & j9) != 0) {
                                atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                            }
                            if ((j & j5) != 0) {
                                atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                            }
                            if ((j & 1664) != 0) {
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                            }
                            if ((j & j4) != 0) {
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                            }
                            if ((j & j8) != 0) {
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                            }
                        }
                    }
                    str7 = null;
                    if ((j & j3) == 0) {
                        str8 = str7;
                    } else {
                        if (mapData == null) {
                            str8 = str7;
                            detailsHeight = null;
                        } else {
                            detailsHeight = mapData.getDetailsHeight();
                            str8 = str7;
                        }
                        updateRegistration(5, detailsHeight);
                        if (detailsHeight != null) {
                            i4 = detailsHeight.get();
                            j11 = j & j9;
                            if (j11 == 0) {
                                if (mapData == null) {
                                    detailsHeight = mapData.getInstructionType();
                                    i9 = i4;
                                } else {
                                    i9 = i4;
                                    detailsHeight = null;
                                }
                                updateRegistration(6, detailsHeight);
                                if (detailsHeight == null) {
                                }
                                if (atmInstructionType != AtmInstructionType.ATM) {
                                    i10 = i2;
                                    detailsHeight = 1;
                                } else {
                                    i10 = i2;
                                    detailsHeight = null;
                                }
                                if (atmInstructionType != AtmInstructionType.TERMINAL) {
                                    str9 = str6;
                                    obj = 1;
                                } else {
                                    str9 = str6;
                                    obj = null;
                                }
                                if (atmInstructionType != AtmInstructionType.OFFICE) {
                                    j12 = 0;
                                    obj3 = 1;
                                } else {
                                    j12 = 0;
                                    obj3 = null;
                                }
                                if (j11 == j12) {
                                    if (detailsHeight == null) {
                                    }
                                }
                                if ((j13 & j9) == j12) {
                                    if (obj == null) {
                                    }
                                }
                                if ((j11 & j9) == j12) {
                                    if (obj3 == null) {
                                    }
                                }
                                if (detailsHeight == null) {
                                }
                                if (obj == null) {
                                }
                                if (obj3 == null) {
                                }
                                i4 = i11;
                                i5 = obj3 == null ? 0 : i8;
                                j14 = 1664;
                                i13 = i12;
                                j = j12;
                            } else {
                                i9 = i4;
                                i10 = i2;
                                str9 = str6;
                                i4 = 0;
                                i5 = 0;
                                j14 = 1664;
                                i13 = 0;
                            }
                            if ((j & j14) != 0) {
                                if (mapData == null) {
                                }
                                updateRegistration(7, atmsName);
                                if (atmsName != null) {
                                    i6 = i4;
                                    i2 = i5;
                                    str2 = (String) atmsName.get();
                                    str3 = str;
                                    i7 = i13;
                                    str4 = str8;
                                    i5 = i9;
                                    i4 = i10;
                                    str = str9;
                                    j10 = 1280;
                                    if ((j & j10) != 0) {
                                        str5 = str;
                                        atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                        atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                        atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                        atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                                    } else {
                                        str5 = str;
                                    }
                                    if ((j & j7) != 0) {
                                        atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                                    }
                                    if ((j & j6) != 0) {
                                        atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                                    }
                                    if ((j & j3) != 0) {
                                        ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                                    }
                                    if ((j & j9) != 0) {
                                        atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                        atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                        atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                                    }
                                    if ((j & j5) != 0) {
                                        atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                                    }
                                    if ((j & 1664) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                                    }
                                    if ((j & j4) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                                    }
                                    if ((j & j8) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                                    }
                                }
                            }
                            i6 = i4;
                            i2 = i5;
                            str3 = str;
                            i7 = i13;
                            str4 = str8;
                            i5 = i9;
                            i4 = i10;
                            str = str9;
                            j10 = 1280;
                            str2 = null;
                            if ((j & j10) != 0) {
                                str5 = str;
                            } else {
                                str5 = str;
                                atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                            }
                            if ((j & j7) != 0) {
                                atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                            }
                            if ((j & j6) != 0) {
                                atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                            }
                            if ((j & j3) != 0) {
                                ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                            }
                            if ((j & j9) != 0) {
                                atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                            }
                            if ((j & j5) != 0) {
                                atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                            }
                            if ((j & 1664) != 0) {
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                            }
                            if ((j & j4) != 0) {
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                            }
                            if ((j & j8) != 0) {
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                            }
                        }
                    }
                    i4 = 0;
                    j11 = j & j9;
                    if (j11 == 0) {
                        i9 = i4;
                        i10 = i2;
                        str9 = str6;
                        i4 = 0;
                        i5 = 0;
                        j14 = 1664;
                        i13 = 0;
                    } else {
                        if (mapData == null) {
                            i9 = i4;
                            detailsHeight = null;
                        } else {
                            detailsHeight = mapData.getInstructionType();
                            i9 = i4;
                        }
                        updateRegistration(6, detailsHeight);
                        if (detailsHeight == null) {
                        }
                        if (atmInstructionType != AtmInstructionType.ATM) {
                            i10 = i2;
                            detailsHeight = null;
                        } else {
                            i10 = i2;
                            detailsHeight = 1;
                        }
                        if (atmInstructionType != AtmInstructionType.TERMINAL) {
                            str9 = str6;
                            obj = null;
                        } else {
                            str9 = str6;
                            obj = 1;
                        }
                        if (atmInstructionType != AtmInstructionType.OFFICE) {
                            j12 = 0;
                            obj3 = null;
                        } else {
                            j12 = 0;
                            obj3 = 1;
                        }
                        if (j11 == j12) {
                        }
                        if ((j13 & j9) == j12) {
                        }
                        if ((j11 & j9) == j12) {
                        }
                        if (detailsHeight == null) {
                        }
                        if (obj == null) {
                        }
                        if (obj3 == null) {
                        }
                        i4 = i11;
                        i5 = obj3 == null ? 0 : i8;
                        j14 = 1664;
                        i13 = i12;
                        j = j12;
                    }
                    if ((j & j14) != 0) {
                        if (mapData == null) {
                        }
                        updateRegistration(7, atmsName);
                        if (atmsName != null) {
                            i6 = i4;
                            i2 = i5;
                            str2 = (String) atmsName.get();
                            str3 = str;
                            i7 = i13;
                            str4 = str8;
                            i5 = i9;
                            i4 = i10;
                            str = str9;
                            j10 = 1280;
                            if ((j & j10) != 0) {
                                str5 = str;
                                atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                            } else {
                                str5 = str;
                            }
                            if ((j & j7) != 0) {
                                atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                            }
                            if ((j & j6) != 0) {
                                atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                            }
                            if ((j & j3) != 0) {
                                ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                            }
                            if ((j & j9) != 0) {
                                atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                            }
                            if ((j & j5) != 0) {
                                atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                            }
                            if ((j & 1664) != 0) {
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                            }
                            if ((j & j4) != 0) {
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                            }
                            if ((j & j8) != 0) {
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                            }
                        }
                    }
                    i6 = i4;
                    i2 = i5;
                    str3 = str;
                    i7 = i13;
                    str4 = str8;
                    i5 = i9;
                    i4 = i10;
                    str = str9;
                    j10 = 1280;
                    str2 = null;
                    if ((j & j10) != 0) {
                        str5 = str;
                    } else {
                        str5 = str;
                        atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                        atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                        atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                        atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                    }
                    if ((j & j7) != 0) {
                        atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                    }
                    if ((j & j6) != 0) {
                        atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                    }
                    if ((j & j3) != 0) {
                        ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                    }
                    if ((j & j9) != 0) {
                        atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                        atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                        atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                    }
                    if ((j & j5) != 0) {
                        atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                    }
                    if ((j & 1664) != 0) {
                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                    }
                    if ((j & j4) != 0) {
                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                    }
                    if ((j & j8) != 0) {
                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                    }
                }
            }
            i3 = 0;
            if ((j & j4) != j2) {
                if (mapData == null) {
                }
                updateRegistration(4, atmsAddress);
                if (atmsAddress != null) {
                    str7 = (String) atmsAddress.get();
                    if ((j & j3) == 0) {
                        if (mapData == null) {
                            detailsHeight = mapData.getDetailsHeight();
                            str8 = str7;
                        } else {
                            str8 = str7;
                            detailsHeight = null;
                        }
                        updateRegistration(5, detailsHeight);
                        if (detailsHeight != null) {
                            i4 = detailsHeight.get();
                            j11 = j & j9;
                            if (j11 == 0) {
                                if (mapData == null) {
                                    detailsHeight = mapData.getInstructionType();
                                    i9 = i4;
                                } else {
                                    i9 = i4;
                                    detailsHeight = null;
                                }
                                updateRegistration(6, detailsHeight);
                                if (detailsHeight == null) {
                                }
                                if (atmInstructionType != AtmInstructionType.ATM) {
                                    i10 = i2;
                                    detailsHeight = 1;
                                } else {
                                    i10 = i2;
                                    detailsHeight = null;
                                }
                                if (atmInstructionType != AtmInstructionType.TERMINAL) {
                                    str9 = str6;
                                    obj = 1;
                                } else {
                                    str9 = str6;
                                    obj = null;
                                }
                                if (atmInstructionType != AtmInstructionType.OFFICE) {
                                    j12 = 0;
                                    obj3 = 1;
                                } else {
                                    j12 = 0;
                                    obj3 = null;
                                }
                                if (j11 == j12) {
                                    if (detailsHeight == null) {
                                    }
                                }
                                if ((j13 & j9) == j12) {
                                    if (obj == null) {
                                    }
                                }
                                if ((j11 & j9) == j12) {
                                    if (obj3 == null) {
                                    }
                                }
                                if (detailsHeight == null) {
                                }
                                if (obj == null) {
                                }
                                if (obj3 == null) {
                                }
                                i4 = i11;
                                i5 = obj3 == null ? 0 : i8;
                                j14 = 1664;
                                i13 = i12;
                                j = j12;
                            } else {
                                i9 = i4;
                                i10 = i2;
                                str9 = str6;
                                i4 = 0;
                                i5 = 0;
                                j14 = 1664;
                                i13 = 0;
                            }
                            if ((j & j14) != 0) {
                                if (mapData == null) {
                                }
                                updateRegistration(7, atmsName);
                                if (atmsName != null) {
                                    i6 = i4;
                                    i2 = i5;
                                    str2 = (String) atmsName.get();
                                    str3 = str;
                                    i7 = i13;
                                    str4 = str8;
                                    i5 = i9;
                                    i4 = i10;
                                    str = str9;
                                    j10 = 1280;
                                    if ((j & j10) != 0) {
                                        str5 = str;
                                        atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                        atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                        atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                        atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                                    } else {
                                        str5 = str;
                                    }
                                    if ((j & j7) != 0) {
                                        atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                                    }
                                    if ((j & j6) != 0) {
                                        atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                                    }
                                    if ((j & j3) != 0) {
                                        ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                                    }
                                    if ((j & j9) != 0) {
                                        atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                        atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                        atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                                    }
                                    if ((j & j5) != 0) {
                                        atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                                    }
                                    if ((j & 1664) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                                    }
                                    if ((j & j4) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                                    }
                                    if ((j & j8) != 0) {
                                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                                    }
                                }
                            }
                            i6 = i4;
                            i2 = i5;
                            str3 = str;
                            i7 = i13;
                            str4 = str8;
                            i5 = i9;
                            i4 = i10;
                            str = str9;
                            j10 = 1280;
                            str2 = null;
                            if ((j & j10) != 0) {
                                str5 = str;
                            } else {
                                str5 = str;
                                atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                            }
                            if ((j & j7) != 0) {
                                atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                            }
                            if ((j & j6) != 0) {
                                atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                            }
                            if ((j & j3) != 0) {
                                ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                            }
                            if ((j & j9) != 0) {
                                atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                            }
                            if ((j & j5) != 0) {
                                atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                            }
                            if ((j & 1664) != 0) {
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                            }
                            if ((j & j4) != 0) {
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                            }
                            if ((j & j8) != 0) {
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                            }
                        }
                    }
                    str8 = str7;
                    i4 = 0;
                    j11 = j & j9;
                    if (j11 == 0) {
                        i9 = i4;
                        i10 = i2;
                        str9 = str6;
                        i4 = 0;
                        i5 = 0;
                        j14 = 1664;
                        i13 = 0;
                    } else {
                        if (mapData == null) {
                            i9 = i4;
                            detailsHeight = null;
                        } else {
                            detailsHeight = mapData.getInstructionType();
                            i9 = i4;
                        }
                        updateRegistration(6, detailsHeight);
                        if (detailsHeight == null) {
                        }
                        if (atmInstructionType != AtmInstructionType.ATM) {
                            i10 = i2;
                            detailsHeight = null;
                        } else {
                            i10 = i2;
                            detailsHeight = 1;
                        }
                        if (atmInstructionType != AtmInstructionType.TERMINAL) {
                            str9 = str6;
                            obj = null;
                        } else {
                            str9 = str6;
                            obj = 1;
                        }
                        if (atmInstructionType != AtmInstructionType.OFFICE) {
                            j12 = 0;
                            obj3 = null;
                        } else {
                            j12 = 0;
                            obj3 = 1;
                        }
                        if (j11 == j12) {
                        }
                        if ((j13 & j9) == j12) {
                        }
                        if ((j11 & j9) == j12) {
                        }
                        if (detailsHeight == null) {
                        }
                        if (obj == null) {
                        }
                        if (obj3 == null) {
                        }
                        i4 = i11;
                        i5 = obj3 == null ? 0 : i8;
                        j14 = 1664;
                        i13 = i12;
                        j = j12;
                    }
                    if ((j & j14) != 0) {
                        if (mapData == null) {
                        }
                        updateRegistration(7, atmsName);
                        if (atmsName != null) {
                            i6 = i4;
                            i2 = i5;
                            str2 = (String) atmsName.get();
                            str3 = str;
                            i7 = i13;
                            str4 = str8;
                            i5 = i9;
                            i4 = i10;
                            str = str9;
                            j10 = 1280;
                            if ((j & j10) != 0) {
                                str5 = str;
                                atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                            } else {
                                str5 = str;
                            }
                            if ((j & j7) != 0) {
                                atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                            }
                            if ((j & j6) != 0) {
                                atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                            }
                            if ((j & j3) != 0) {
                                ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                            }
                            if ((j & j9) != 0) {
                                atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                            }
                            if ((j & j5) != 0) {
                                atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                            }
                            if ((j & 1664) != 0) {
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                            }
                            if ((j & j4) != 0) {
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                            }
                            if ((j & j8) != 0) {
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                            }
                        }
                    }
                    i6 = i4;
                    i2 = i5;
                    str3 = str;
                    i7 = i13;
                    str4 = str8;
                    i5 = i9;
                    i4 = i10;
                    str = str9;
                    j10 = 1280;
                    str2 = null;
                    if ((j & j10) != 0) {
                        str5 = str;
                    } else {
                        str5 = str;
                        atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                        atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                        atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                        atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                    }
                    if ((j & j7) != 0) {
                        atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                    }
                    if ((j & j6) != 0) {
                        atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                    }
                    if ((j & j3) != 0) {
                        ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                    }
                    if ((j & j9) != 0) {
                        atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                        atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                        atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                    }
                    if ((j & j5) != 0) {
                        atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                    }
                    if ((j & 1664) != 0) {
                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                    }
                    if ((j & j4) != 0) {
                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                    }
                    if ((j & j8) != 0) {
                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                    }
                }
            }
            str7 = null;
            if ((j & j3) == 0) {
                str8 = str7;
            } else {
                if (mapData == null) {
                    str8 = str7;
                    detailsHeight = null;
                } else {
                    detailsHeight = mapData.getDetailsHeight();
                    str8 = str7;
                }
                updateRegistration(5, detailsHeight);
                if (detailsHeight != null) {
                    i4 = detailsHeight.get();
                    j11 = j & j9;
                    if (j11 == 0) {
                        if (mapData == null) {
                            detailsHeight = mapData.getInstructionType();
                            i9 = i4;
                        } else {
                            i9 = i4;
                            detailsHeight = null;
                        }
                        updateRegistration(6, detailsHeight);
                        if (detailsHeight == null) {
                        }
                        if (atmInstructionType != AtmInstructionType.ATM) {
                            i10 = i2;
                            detailsHeight = 1;
                        } else {
                            i10 = i2;
                            detailsHeight = null;
                        }
                        if (atmInstructionType != AtmInstructionType.TERMINAL) {
                            str9 = str6;
                            obj = 1;
                        } else {
                            str9 = str6;
                            obj = null;
                        }
                        if (atmInstructionType != AtmInstructionType.OFFICE) {
                            j12 = 0;
                            obj3 = 1;
                        } else {
                            j12 = 0;
                            obj3 = null;
                        }
                        if (j11 == j12) {
                            if (detailsHeight == null) {
                            }
                        }
                        if ((j13 & j9) == j12) {
                            if (obj == null) {
                            }
                        }
                        if ((j11 & j9) == j12) {
                            if (obj3 == null) {
                            }
                        }
                        if (detailsHeight == null) {
                        }
                        if (obj == null) {
                        }
                        if (obj3 == null) {
                        }
                        i4 = i11;
                        i5 = obj3 == null ? 0 : i8;
                        j14 = 1664;
                        i13 = i12;
                        j = j12;
                    } else {
                        i9 = i4;
                        i10 = i2;
                        str9 = str6;
                        i4 = 0;
                        i5 = 0;
                        j14 = 1664;
                        i13 = 0;
                    }
                    if ((j & j14) != 0) {
                        if (mapData == null) {
                        }
                        updateRegistration(7, atmsName);
                        if (atmsName != null) {
                            i6 = i4;
                            i2 = i5;
                            str2 = (String) atmsName.get();
                            str3 = str;
                            i7 = i13;
                            str4 = str8;
                            i5 = i9;
                            i4 = i10;
                            str = str9;
                            j10 = 1280;
                            if ((j & j10) != 0) {
                                str5 = str;
                                atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                                atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                                atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                                atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                            } else {
                                str5 = str;
                            }
                            if ((j & j7) != 0) {
                                atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                            }
                            if ((j & j6) != 0) {
                                atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                            }
                            if ((j & j3) != 0) {
                                ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                            }
                            if ((j & j9) != 0) {
                                atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                                atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                                atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                            }
                            if ((j & j5) != 0) {
                                atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                            }
                            if ((j & 1664) != 0) {
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                            }
                            if ((j & j4) != 0) {
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                            }
                            if ((j & j8) != 0) {
                                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                            }
                        }
                    }
                    i6 = i4;
                    i2 = i5;
                    str3 = str;
                    i7 = i13;
                    str4 = str8;
                    i5 = i9;
                    i4 = i10;
                    str = str9;
                    j10 = 1280;
                    str2 = null;
                    if ((j & j10) != 0) {
                        str5 = str;
                    } else {
                        str5 = str;
                        atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                        atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                        atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                        atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                    }
                    if ((j & j7) != 0) {
                        atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                    }
                    if ((j & j6) != 0) {
                        atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                    }
                    if ((j & j3) != 0) {
                        ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                    }
                    if ((j & j9) != 0) {
                        atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                        atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                        atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                    }
                    if ((j & j5) != 0) {
                        atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                    }
                    if ((j & 1664) != 0) {
                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                    }
                    if ((j & j4) != 0) {
                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                    }
                    if ((j & j8) != 0) {
                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                    }
                }
            }
            i4 = 0;
            j11 = j & j9;
            if (j11 == 0) {
                i9 = i4;
                i10 = i2;
                str9 = str6;
                i4 = 0;
                i5 = 0;
                j14 = 1664;
                i13 = 0;
            } else {
                if (mapData == null) {
                    i9 = i4;
                    detailsHeight = null;
                } else {
                    detailsHeight = mapData.getInstructionType();
                    i9 = i4;
                }
                updateRegistration(6, detailsHeight);
                if (detailsHeight == null) {
                }
                if (atmInstructionType != AtmInstructionType.ATM) {
                    i10 = i2;
                    detailsHeight = null;
                } else {
                    i10 = i2;
                    detailsHeight = 1;
                }
                if (atmInstructionType != AtmInstructionType.TERMINAL) {
                    str9 = str6;
                    obj = null;
                } else {
                    str9 = str6;
                    obj = 1;
                }
                if (atmInstructionType != AtmInstructionType.OFFICE) {
                    j12 = 0;
                    obj3 = null;
                } else {
                    j12 = 0;
                    obj3 = 1;
                }
                if (j11 == j12) {
                }
                if ((j13 & j9) == j12) {
                }
                if ((j11 & j9) == j12) {
                }
                if (detailsHeight == null) {
                }
                if (obj == null) {
                }
                if (obj3 == null) {
                }
                i4 = i11;
                i5 = obj3 == null ? 0 : i8;
                j14 = 1664;
                i13 = i12;
                j = j12;
            }
            if ((j & j14) != 0) {
                if (mapData == null) {
                }
                updateRegistration(7, atmsName);
                if (atmsName != null) {
                    i6 = i4;
                    i2 = i5;
                    str2 = (String) atmsName.get();
                    str3 = str;
                    i7 = i13;
                    str4 = str8;
                    i5 = i9;
                    i4 = i10;
                    str = str9;
                    j10 = 1280;
                    if ((j & j10) != 0) {
                        str5 = str;
                        atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                        atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                        atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                        atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
                    } else {
                        str5 = str;
                    }
                    if ((j & j7) != 0) {
                        atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
                    }
                    if ((j & j6) != 0) {
                        atmsMapFragmentBinding.commissionAtms.setVisibility(i);
                    }
                    if ((j & j3) != 0) {
                        ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
                    }
                    if ((j & j9) != 0) {
                        atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                        atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                        atmsMapFragmentBinding.mboundView9.setVisibility(i6);
                    }
                    if ((j & j5) != 0) {
                        atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
                    }
                    if ((j & 1664) != 0) {
                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
                    }
                    if ((j & j4) != 0) {
                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
                    }
                    if ((j & j8) != 0) {
                        TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
                    }
                }
            }
            i6 = i4;
            i2 = i5;
            str3 = str;
            i7 = i13;
            str4 = str8;
            i5 = i9;
            i4 = i10;
            str = str9;
            j10 = 1280;
            str2 = null;
            if ((j & j10) != 0) {
                str5 = str;
            } else {
                str5 = str;
                atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
                atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
                atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
                atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
            }
            if ((j & j7) != 0) {
                atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
            }
            if ((j & j6) != 0) {
                atmsMapFragmentBinding.commissionAtms.setVisibility(i);
            }
            if ((j & j3) != 0) {
                ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
            }
            if ((j & j9) != 0) {
                atmsMapFragmentBinding.mboundView10.setVisibility(i7);
                atmsMapFragmentBinding.mboundView11.setVisibility(i2);
                atmsMapFragmentBinding.mboundView9.setVisibility(i6);
            }
            if ((j & j5) != 0) {
                atmsMapFragmentBinding.mboundView12.setVisibility(i3);
                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
            }
            if ((j & 1664) != 0) {
                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
            }
            if ((j & j4) != 0) {
                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
            }
            if ((j & j8) != 0) {
                TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
            }
        }
        j10 = 1280;
        i4 = 0;
        i5 = 0;
        i7 = 0;
        i2 = 0;
        i6 = 0;
        i = 0;
        str = null;
        i3 = 0;
        str2 = null;
        str4 = null;
        str3 = null;
        if ((j & j10) != 0) {
            str5 = str;
            atmsMapFragmentBinding.buttonLocation.setOnClickListener(onClickListener);
            atmsMapFragmentBinding.fab.setOnClickListener(onClickListener3);
            atmsMapFragmentBinding.mboundView2.setOnClickListener(onClickListener2);
            atmsMapFragmentBinding.mboundView3.setOnClickListener(onClickListener4);
        } else {
            str5 = str;
        }
        if ((j & j7) != 0) {
            atmsMapFragmentBinding.buttonLocation.setVisibility(i4);
        }
        if ((j & j6) != 0) {
            atmsMapFragmentBinding.commissionAtms.setVisibility(i);
        }
        if ((j & j3) != 0) {
            ViewBindingAdapter.setPaddingBottom(atmsMapFragmentBinding.mboundView1, (float) i5);
        }
        if ((j & j9) != 0) {
            atmsMapFragmentBinding.mboundView10.setVisibility(i7);
            atmsMapFragmentBinding.mboundView11.setVisibility(i2);
            atmsMapFragmentBinding.mboundView9.setVisibility(i6);
        }
        if ((j & j5) != 0) {
            atmsMapFragmentBinding.mboundView12.setVisibility(i3);
            TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView13, str5);
        }
        if ((j & 1664) != 0) {
            TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView6, str2);
        }
        if ((j & j4) != 0) {
            TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView7, str4);
        }
        if ((j & j8) != 0) {
            TextViewBindingAdapter.setText(atmsMapFragmentBinding.mboundView8, str3);
        }
    }

    public static AtmsMapFragmentBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static AtmsMapFragmentBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (AtmsMapFragmentBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.atms_map_fragment, viewGroup, z, dataBindingComponent);
    }

    public static AtmsMapFragmentBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static AtmsMapFragmentBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.atms_map_fragment, null, false), dataBindingComponent);
    }

    public static AtmsMapFragmentBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static AtmsMapFragmentBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/atms_map_fragment_0".equals(view.getTag())) {
            return new AtmsMapFragmentBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
