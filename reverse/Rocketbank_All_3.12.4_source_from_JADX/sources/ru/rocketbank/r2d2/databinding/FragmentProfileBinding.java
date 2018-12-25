package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ObservableField;
import android.databinding.ObservableInt;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.databinding.adapters.TextViewBindingAdapter;
import android.graphics.drawable.Drawable;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v7.widget.Toolbar;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.github.ksoichiro.android.observablescrollview.ObservableRecyclerView;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.profile.ProfileData;
import ru.rocketbank.r2d2.data.binding.profile.ProfileHandler;

public class FragmentProfileBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final FrameLayout appBar;
    public final View cardOverlay;
    public final ImageView coverImage;
    public final ObservableRecyclerView feed;
    public final View headerOverlay;
    private ProfileData mData;
    private long mDirtyFlags = -1;
    private ProfileHandler mHandler;
    private OnClickListenerImpl1 mHandlerOnAvatarChangeAndroidViewViewOnClickListener;
    private OnClickListenerImpl mHandlerOnCoverChangeAndroidViewViewOnClickListener;
    private final FrameLayout mboundView0;
    public final RocketTextView realToolbarTitle;
    public final SwipeRefreshLayout swipeRefresh;
    public final Toolbar toolbar;
    public final Toolbar toolbarReal;
    public final RocketTextView userName;
    public final ImageView userPic;

    public static class OnClickListenerImpl1 implements OnClickListener {
        private ProfileHandler value;

        public OnClickListenerImpl1 setValue(ProfileHandler profileHandler) {
            this.value = profileHandler;
            return profileHandler == null ? null : this;
        }

        public void onClick(View view) {
            this.value.onAvatarChange(view);
        }
    }

    public static class OnClickListenerImpl implements OnClickListener {
        private ProfileHandler value;

        public OnClickListenerImpl setValue(ProfileHandler profileHandler) {
            this.value = profileHandler;
            return profileHandler == null ? null : this;
        }

        public void onClick(View view) {
            this.value.onCoverChange(view);
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.header_overlay, 8);
        sViewsWithIds.put(C0859R.id.swipeRefresh, 9);
        sViewsWithIds.put(C0859R.id.feed, 10);
        sViewsWithIds.put(C0859R.id.real_toolbar_title, 11);
    }

    public FragmentProfileBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 6);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 12, sIncludes, sViewsWithIds);
        this.appBar = (FrameLayout) dataBindingComponent[1];
        this.appBar.setTag(null);
        this.cardOverlay = (View) dataBindingComponent[6];
        this.cardOverlay.setTag(null);
        this.coverImage = (ImageView) dataBindingComponent[2];
        this.coverImage.setTag(null);
        this.feed = (ObservableRecyclerView) dataBindingComponent[10];
        this.headerOverlay = (View) dataBindingComponent[8];
        this.mboundView0 = (FrameLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.realToolbarTitle = (RocketTextView) dataBindingComponent[11];
        this.swipeRefresh = (SwipeRefreshLayout) dataBindingComponent[9];
        this.toolbar = (Toolbar) dataBindingComponent[5];
        this.toolbar.setTag(null);
        this.toolbarReal = (Toolbar) dataBindingComponent[7];
        this.toolbarReal.setTag(null);
        this.userName = (RocketTextView) dataBindingComponent[4];
        this.userName.setTag(null);
        this.userPic = (ImageView) dataBindingComponent[3];
        this.userPic.setTag(null);
        setRootTag(view);
        invalidateAll();
    }

    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 256;
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
        if (40 == i) {
            setHandler((ProfileHandler) obj);
        } else if (24 != i) {
            return false;
        } else {
            setData((ProfileData) obj);
        }
        return true;
    }

    public void setHandler(ProfileHandler profileHandler) {
        this.mHandler = profileHandler;
        synchronized (this) {
            this.mDirtyFlags |= 64;
        }
        notifyPropertyChanged(40);
        super.requestRebind();
    }

    public ProfileHandler getHandler() {
        return this.mHandler;
    }

    public void setData(ProfileData profileData) {
        this.mData = profileData;
        synchronized (this) {
            this.mDirtyFlags |= 128;
        }
        notifyPropertyChanged(24);
        super.requestRebind();
    }

    public ProfileData getData() {
        return this.mData;
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeDataToolbarTranslation((ObservableInt) obj, i2);
            case 1:
                return onChangeDataUserName((ObservableField) obj, i2);
            case 2:
                return onChangeDataToolbarBackDrawable((ObservableField) obj, i2);
            case 3:
                return onChangeDataParallaxTranslation((ObservableInt) obj, i2);
            case 4:
                return onChangeDataOverlayTranslation((ObservableInt) obj, i2);
            case 5:
                return onChangeDataToolbarWhiteBackDrawable((ObservableField) obj, i2);
            default:
                return false;
        }
    }

    private boolean onChangeDataToolbarTranslation(ObservableInt observableInt, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    private boolean onChangeDataUserName(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        return true;
    }

    private boolean onChangeDataToolbarBackDrawable(ObservableField<Drawable> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        return true;
    }

    private boolean onChangeDataParallaxTranslation(ObservableInt observableInt, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        return true;
    }

    private boolean onChangeDataOverlayTranslation(ObservableInt observableInt, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 16;
        }
        return true;
    }

    private boolean onChangeDataToolbarWhiteBackDrawable(ObservableField<Drawable> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 32;
        }
        return true;
    }

    protected void executeBindings() {
        long j;
        OnClickListener onClickListener;
        OnClickListener onClickListener2;
        FragmentProfileBinding fragmentProfileBinding = this;
        synchronized (this) {
            try {
                j = fragmentProfileBinding.mDirtyFlags;
                long j2 = 0;
                fragmentProfileBinding.mDirtyFlags = 0;
            } finally {
                j = r0;
            }
        }
        ProfileHandler profileHandler = fragmentProfileBinding.mHandler;
        ProfileData profileData = fragmentProfileBinding.mData;
        long j3 = j & 320;
        if (j3 == 0 || profileHandler == null) {
            onClickListener = null;
            onClickListener2 = null;
        } else {
            OnClickListenerImpl onClickListenerImpl;
            OnClickListenerImpl1 onClickListenerImpl1;
            if (fragmentProfileBinding.mHandlerOnCoverChangeAndroidViewViewOnClickListener == null) {
                onClickListenerImpl = new OnClickListenerImpl();
                fragmentProfileBinding.mHandlerOnCoverChangeAndroidViewViewOnClickListener = onClickListenerImpl;
            } else {
                onClickListenerImpl = fragmentProfileBinding.mHandlerOnCoverChangeAndroidViewViewOnClickListener;
            }
            onClickListener2 = onClickListenerImpl.setValue(profileHandler);
            if (fragmentProfileBinding.mHandlerOnAvatarChangeAndroidViewViewOnClickListener == null) {
                onClickListenerImpl1 = new OnClickListenerImpl1();
                fragmentProfileBinding.mHandlerOnAvatarChangeAndroidViewViewOnClickListener = onClickListenerImpl1;
            } else {
                onClickListenerImpl1 = fragmentProfileBinding.mHandlerOnAvatarChangeAndroidViewViewOnClickListener;
            }
            onClickListener = onClickListenerImpl1.setValue(profileHandler);
        }
        long j4 = 400;
        long j5 = 392;
        long j6 = 388;
        long j7 = 386;
        long j8 = 385;
        Object obj = null;
        int i;
        CharSequence charSequence;
        Drawable drawable;
        int i2;
        Drawable drawable2;
        int i3;
        if ((j & 447) != 0) {
            ObservableField userName;
            Object toolbarBackDrawable;
            Object parallaxTranslation;
            Object overlayTranslation;
            int i4;
            long j9;
            if ((j & 385) != 0) {
                Object toolbarTranslation = profileData != null ? profileData.getToolbarTranslation() : null;
                updateRegistration(0, toolbarTranslation);
                if (toolbarTranslation != null) {
                    i = toolbarTranslation.get();
                    if ((j & 386) != 0) {
                        if (profileData == null) {
                            userName = profileData.getUserName();
                        } else {
                            obj = null;
                        }
                        updateRegistration(1, obj);
                        if (obj != null) {
                            charSequence = (String) obj.get();
                            if ((j & j6) != j2) {
                                toolbarBackDrawable = profileData == null ? profileData.getToolbarBackDrawable() : null;
                                updateRegistration(2, toolbarBackDrawable);
                                if (toolbarBackDrawable != null) {
                                    drawable = (Drawable) toolbarBackDrawable.get();
                                    if ((j & j5) != j2) {
                                        parallaxTranslation = profileData == null ? profileData.getParallaxTranslation() : null;
                                        updateRegistration(3, parallaxTranslation);
                                        if (parallaxTranslation != null) {
                                            i2 = parallaxTranslation.get();
                                            if ((j & j4) != 0) {
                                                overlayTranslation = profileData == null ? profileData.getOverlayTranslation() : null;
                                                updateRegistration(4, overlayTranslation);
                                                if (overlayTranslation != null) {
                                                    i4 = overlayTranslation.get();
                                                    j9 = 416;
                                                    if ((j & j9) != 0) {
                                                        overlayTranslation = profileData == null ? profileData.getToolbarWhiteBackDrawable() : null;
                                                        updateRegistration(5, overlayTranslation);
                                                        if (overlayTranslation != null) {
                                                            drawable2 = (Drawable) overlayTranslation.get();
                                                            i3 = i4;
                                                            if ((j & j5) != 0 && getBuildSdkInt() >= 11) {
                                                                fragmentProfileBinding.appBar.setTranslationY((float) i2);
                                                            }
                                                            if ((j & 400) != 0 && getBuildSdkInt() >= 11) {
                                                                fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                                                            }
                                                            if (j3 != 0) {
                                                                fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                                                fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                                                            }
                                                            if ((j & 416) != 0) {
                                                                fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                                                            }
                                                            if ((j & j8) != 0 && getBuildSdkInt() >= 11) {
                                                                fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                                                            }
                                                            if ((j & j6) != 0) {
                                                                fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                                                            }
                                                            if ((j & j7) != 0) {
                                                                TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                                                            }
                                                        }
                                                    }
                                                    i3 = i4;
                                                    drawable2 = null;
                                                    fragmentProfileBinding.appBar.setTranslationY((float) i2);
                                                    fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                                                    if (j3 != 0) {
                                                        fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                                        fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                                                    }
                                                    if ((j & 416) != 0) {
                                                        fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                                                    }
                                                    fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                                                    if ((j & j6) != 0) {
                                                        fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                                                    }
                                                    if ((j & j7) != 0) {
                                                        TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                                                    }
                                                }
                                            }
                                            j9 = 416;
                                            i4 = 0;
                                            if ((j & j9) != 0) {
                                                if (profileData == null) {
                                                }
                                                updateRegistration(5, overlayTranslation);
                                                if (overlayTranslation != null) {
                                                    drawable2 = (Drawable) overlayTranslation.get();
                                                    i3 = i4;
                                                    fragmentProfileBinding.appBar.setTranslationY((float) i2);
                                                    fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                                                    if (j3 != 0) {
                                                        fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                                        fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                                                    }
                                                    if ((j & 416) != 0) {
                                                        fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                                                    }
                                                    fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                                                    if ((j & j6) != 0) {
                                                        fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                                                    }
                                                    if ((j & j7) != 0) {
                                                        TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                                                    }
                                                }
                                            }
                                            i3 = i4;
                                            drawable2 = null;
                                            fragmentProfileBinding.appBar.setTranslationY((float) i2);
                                            fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                                            if (j3 != 0) {
                                                fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                                fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                                            }
                                            if ((j & 416) != 0) {
                                                fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                                            }
                                            fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                                            if ((j & j6) != 0) {
                                                fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                                            }
                                            if ((j & j7) != 0) {
                                                TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                                            }
                                        }
                                    }
                                    i2 = 0;
                                    if ((j & j4) != 0) {
                                        if (profileData == null) {
                                        }
                                        updateRegistration(4, overlayTranslation);
                                        if (overlayTranslation != null) {
                                            i4 = overlayTranslation.get();
                                            j9 = 416;
                                            if ((j & j9) != 0) {
                                                if (profileData == null) {
                                                }
                                                updateRegistration(5, overlayTranslation);
                                                if (overlayTranslation != null) {
                                                    drawable2 = (Drawable) overlayTranslation.get();
                                                    i3 = i4;
                                                    fragmentProfileBinding.appBar.setTranslationY((float) i2);
                                                    fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                                                    if (j3 != 0) {
                                                        fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                                        fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                                                    }
                                                    if ((j & 416) != 0) {
                                                        fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                                                    }
                                                    fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                                                    if ((j & j6) != 0) {
                                                        fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                                                    }
                                                    if ((j & j7) != 0) {
                                                        TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                                                    }
                                                }
                                            }
                                            i3 = i4;
                                            drawable2 = null;
                                            fragmentProfileBinding.appBar.setTranslationY((float) i2);
                                            fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                                            if (j3 != 0) {
                                                fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                                fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                                            }
                                            if ((j & 416) != 0) {
                                                fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                                            }
                                            fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                                            if ((j & j6) != 0) {
                                                fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                                            }
                                            if ((j & j7) != 0) {
                                                TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                                            }
                                        }
                                    }
                                    j9 = 416;
                                    i4 = 0;
                                    if ((j & j9) != 0) {
                                        if (profileData == null) {
                                        }
                                        updateRegistration(5, overlayTranslation);
                                        if (overlayTranslation != null) {
                                            drawable2 = (Drawable) overlayTranslation.get();
                                            i3 = i4;
                                            fragmentProfileBinding.appBar.setTranslationY((float) i2);
                                            fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                                            if (j3 != 0) {
                                                fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                                fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                                            }
                                            if ((j & 416) != 0) {
                                                fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                                            }
                                            fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                                            if ((j & j6) != 0) {
                                                fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                                            }
                                            if ((j & j7) != 0) {
                                                TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                                            }
                                        }
                                    }
                                    i3 = i4;
                                    drawable2 = null;
                                    fragmentProfileBinding.appBar.setTranslationY((float) i2);
                                    fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                                    if (j3 != 0) {
                                        fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                        fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                                    }
                                    if ((j & 416) != 0) {
                                        fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                                    }
                                    fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                                    if ((j & j6) != 0) {
                                        fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                                    }
                                    if ((j & j7) != 0) {
                                        TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                                    }
                                }
                            }
                            drawable = null;
                            if ((j & j5) != j2) {
                                if (profileData == null) {
                                }
                                updateRegistration(3, parallaxTranslation);
                                if (parallaxTranslation != null) {
                                    i2 = parallaxTranslation.get();
                                    if ((j & j4) != 0) {
                                        if (profileData == null) {
                                        }
                                        updateRegistration(4, overlayTranslation);
                                        if (overlayTranslation != null) {
                                            i4 = overlayTranslation.get();
                                            j9 = 416;
                                            if ((j & j9) != 0) {
                                                if (profileData == null) {
                                                }
                                                updateRegistration(5, overlayTranslation);
                                                if (overlayTranslation != null) {
                                                    drawable2 = (Drawable) overlayTranslation.get();
                                                    i3 = i4;
                                                    fragmentProfileBinding.appBar.setTranslationY((float) i2);
                                                    fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                                                    if (j3 != 0) {
                                                        fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                                        fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                                                    }
                                                    if ((j & 416) != 0) {
                                                        fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                                                    }
                                                    fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                                                    if ((j & j6) != 0) {
                                                        fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                                                    }
                                                    if ((j & j7) != 0) {
                                                        TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                                                    }
                                                }
                                            }
                                            i3 = i4;
                                            drawable2 = null;
                                            fragmentProfileBinding.appBar.setTranslationY((float) i2);
                                            fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                                            if (j3 != 0) {
                                                fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                                fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                                            }
                                            if ((j & 416) != 0) {
                                                fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                                            }
                                            fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                                            if ((j & j6) != 0) {
                                                fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                                            }
                                            if ((j & j7) != 0) {
                                                TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                                            }
                                        }
                                    }
                                    j9 = 416;
                                    i4 = 0;
                                    if ((j & j9) != 0) {
                                        if (profileData == null) {
                                        }
                                        updateRegistration(5, overlayTranslation);
                                        if (overlayTranslation != null) {
                                            drawable2 = (Drawable) overlayTranslation.get();
                                            i3 = i4;
                                            fragmentProfileBinding.appBar.setTranslationY((float) i2);
                                            fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                                            if (j3 != 0) {
                                                fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                                fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                                            }
                                            if ((j & 416) != 0) {
                                                fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                                            }
                                            fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                                            if ((j & j6) != 0) {
                                                fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                                            }
                                            if ((j & j7) != 0) {
                                                TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                                            }
                                        }
                                    }
                                    i3 = i4;
                                    drawable2 = null;
                                    fragmentProfileBinding.appBar.setTranslationY((float) i2);
                                    fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                                    if (j3 != 0) {
                                        fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                        fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                                    }
                                    if ((j & 416) != 0) {
                                        fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                                    }
                                    fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                                    if ((j & j6) != 0) {
                                        fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                                    }
                                    if ((j & j7) != 0) {
                                        TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                                    }
                                }
                            }
                            i2 = 0;
                            if ((j & j4) != 0) {
                                if (profileData == null) {
                                }
                                updateRegistration(4, overlayTranslation);
                                if (overlayTranslation != null) {
                                    i4 = overlayTranslation.get();
                                    j9 = 416;
                                    if ((j & j9) != 0) {
                                        if (profileData == null) {
                                        }
                                        updateRegistration(5, overlayTranslation);
                                        if (overlayTranslation != null) {
                                            drawable2 = (Drawable) overlayTranslation.get();
                                            i3 = i4;
                                            fragmentProfileBinding.appBar.setTranslationY((float) i2);
                                            fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                                            if (j3 != 0) {
                                                fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                                fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                                            }
                                            if ((j & 416) != 0) {
                                                fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                                            }
                                            fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                                            if ((j & j6) != 0) {
                                                fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                                            }
                                            if ((j & j7) != 0) {
                                                TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                                            }
                                        }
                                    }
                                    i3 = i4;
                                    drawable2 = null;
                                    fragmentProfileBinding.appBar.setTranslationY((float) i2);
                                    fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                                    if (j3 != 0) {
                                        fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                        fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                                    }
                                    if ((j & 416) != 0) {
                                        fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                                    }
                                    fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                                    if ((j & j6) != 0) {
                                        fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                                    }
                                    if ((j & j7) != 0) {
                                        TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                                    }
                                }
                            }
                            j9 = 416;
                            i4 = 0;
                            if ((j & j9) != 0) {
                                if (profileData == null) {
                                }
                                updateRegistration(5, overlayTranslation);
                                if (overlayTranslation != null) {
                                    drawable2 = (Drawable) overlayTranslation.get();
                                    i3 = i4;
                                    fragmentProfileBinding.appBar.setTranslationY((float) i2);
                                    fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                                    if (j3 != 0) {
                                        fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                        fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                                    }
                                    if ((j & 416) != 0) {
                                        fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                                    }
                                    fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                                    if ((j & j6) != 0) {
                                        fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                                    }
                                    if ((j & j7) != 0) {
                                        TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                                    }
                                }
                            }
                            i3 = i4;
                            drawable2 = null;
                            fragmentProfileBinding.appBar.setTranslationY((float) i2);
                            fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                            if (j3 != 0) {
                                fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                            }
                            if ((j & 416) != 0) {
                                fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                            }
                            fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                            if ((j & j6) != 0) {
                                fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                            }
                            if ((j & j7) != 0) {
                                TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                            }
                        }
                    }
                    charSequence = null;
                    if ((j & j6) != j2) {
                        if (profileData == null) {
                        }
                        updateRegistration(2, toolbarBackDrawable);
                        if (toolbarBackDrawable != null) {
                            drawable = (Drawable) toolbarBackDrawable.get();
                            if ((j & j5) != j2) {
                                if (profileData == null) {
                                }
                                updateRegistration(3, parallaxTranslation);
                                if (parallaxTranslation != null) {
                                    i2 = parallaxTranslation.get();
                                    if ((j & j4) != 0) {
                                        if (profileData == null) {
                                        }
                                        updateRegistration(4, overlayTranslation);
                                        if (overlayTranslation != null) {
                                            i4 = overlayTranslation.get();
                                            j9 = 416;
                                            if ((j & j9) != 0) {
                                                if (profileData == null) {
                                                }
                                                updateRegistration(5, overlayTranslation);
                                                if (overlayTranslation != null) {
                                                    drawable2 = (Drawable) overlayTranslation.get();
                                                    i3 = i4;
                                                    fragmentProfileBinding.appBar.setTranslationY((float) i2);
                                                    fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                                                    if (j3 != 0) {
                                                        fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                                        fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                                                    }
                                                    if ((j & 416) != 0) {
                                                        fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                                                    }
                                                    fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                                                    if ((j & j6) != 0) {
                                                        fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                                                    }
                                                    if ((j & j7) != 0) {
                                                        TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                                                    }
                                                }
                                            }
                                            i3 = i4;
                                            drawable2 = null;
                                            fragmentProfileBinding.appBar.setTranslationY((float) i2);
                                            fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                                            if (j3 != 0) {
                                                fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                                fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                                            }
                                            if ((j & 416) != 0) {
                                                fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                                            }
                                            fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                                            if ((j & j6) != 0) {
                                                fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                                            }
                                            if ((j & j7) != 0) {
                                                TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                                            }
                                        }
                                    }
                                    j9 = 416;
                                    i4 = 0;
                                    if ((j & j9) != 0) {
                                        if (profileData == null) {
                                        }
                                        updateRegistration(5, overlayTranslation);
                                        if (overlayTranslation != null) {
                                            drawable2 = (Drawable) overlayTranslation.get();
                                            i3 = i4;
                                            fragmentProfileBinding.appBar.setTranslationY((float) i2);
                                            fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                                            if (j3 != 0) {
                                                fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                                fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                                            }
                                            if ((j & 416) != 0) {
                                                fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                                            }
                                            fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                                            if ((j & j6) != 0) {
                                                fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                                            }
                                            if ((j & j7) != 0) {
                                                TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                                            }
                                        }
                                    }
                                    i3 = i4;
                                    drawable2 = null;
                                    fragmentProfileBinding.appBar.setTranslationY((float) i2);
                                    fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                                    if (j3 != 0) {
                                        fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                        fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                                    }
                                    if ((j & 416) != 0) {
                                        fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                                    }
                                    fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                                    if ((j & j6) != 0) {
                                        fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                                    }
                                    if ((j & j7) != 0) {
                                        TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                                    }
                                }
                            }
                            i2 = 0;
                            if ((j & j4) != 0) {
                                if (profileData == null) {
                                }
                                updateRegistration(4, overlayTranslation);
                                if (overlayTranslation != null) {
                                    i4 = overlayTranslation.get();
                                    j9 = 416;
                                    if ((j & j9) != 0) {
                                        if (profileData == null) {
                                        }
                                        updateRegistration(5, overlayTranslation);
                                        if (overlayTranslation != null) {
                                            drawable2 = (Drawable) overlayTranslation.get();
                                            i3 = i4;
                                            fragmentProfileBinding.appBar.setTranslationY((float) i2);
                                            fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                                            if (j3 != 0) {
                                                fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                                fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                                            }
                                            if ((j & 416) != 0) {
                                                fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                                            }
                                            fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                                            if ((j & j6) != 0) {
                                                fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                                            }
                                            if ((j & j7) != 0) {
                                                TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                                            }
                                        }
                                    }
                                    i3 = i4;
                                    drawable2 = null;
                                    fragmentProfileBinding.appBar.setTranslationY((float) i2);
                                    fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                                    if (j3 != 0) {
                                        fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                        fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                                    }
                                    if ((j & 416) != 0) {
                                        fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                                    }
                                    fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                                    if ((j & j6) != 0) {
                                        fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                                    }
                                    if ((j & j7) != 0) {
                                        TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                                    }
                                }
                            }
                            j9 = 416;
                            i4 = 0;
                            if ((j & j9) != 0) {
                                if (profileData == null) {
                                }
                                updateRegistration(5, overlayTranslation);
                                if (overlayTranslation != null) {
                                    drawable2 = (Drawable) overlayTranslation.get();
                                    i3 = i4;
                                    fragmentProfileBinding.appBar.setTranslationY((float) i2);
                                    fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                                    if (j3 != 0) {
                                        fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                        fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                                    }
                                    if ((j & 416) != 0) {
                                        fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                                    }
                                    fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                                    if ((j & j6) != 0) {
                                        fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                                    }
                                    if ((j & j7) != 0) {
                                        TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                                    }
                                }
                            }
                            i3 = i4;
                            drawable2 = null;
                            fragmentProfileBinding.appBar.setTranslationY((float) i2);
                            fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                            if (j3 != 0) {
                                fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                            }
                            if ((j & 416) != 0) {
                                fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                            }
                            fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                            if ((j & j6) != 0) {
                                fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                            }
                            if ((j & j7) != 0) {
                                TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                            }
                        }
                    }
                    drawable = null;
                    if ((j & j5) != j2) {
                        if (profileData == null) {
                        }
                        updateRegistration(3, parallaxTranslation);
                        if (parallaxTranslation != null) {
                            i2 = parallaxTranslation.get();
                            if ((j & j4) != 0) {
                                if (profileData == null) {
                                }
                                updateRegistration(4, overlayTranslation);
                                if (overlayTranslation != null) {
                                    i4 = overlayTranslation.get();
                                    j9 = 416;
                                    if ((j & j9) != 0) {
                                        if (profileData == null) {
                                        }
                                        updateRegistration(5, overlayTranslation);
                                        if (overlayTranslation != null) {
                                            drawable2 = (Drawable) overlayTranslation.get();
                                            i3 = i4;
                                            fragmentProfileBinding.appBar.setTranslationY((float) i2);
                                            fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                                            if (j3 != 0) {
                                                fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                                fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                                            }
                                            if ((j & 416) != 0) {
                                                fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                                            }
                                            fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                                            if ((j & j6) != 0) {
                                                fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                                            }
                                            if ((j & j7) != 0) {
                                                TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                                            }
                                        }
                                    }
                                    i3 = i4;
                                    drawable2 = null;
                                    fragmentProfileBinding.appBar.setTranslationY((float) i2);
                                    fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                                    if (j3 != 0) {
                                        fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                        fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                                    }
                                    if ((j & 416) != 0) {
                                        fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                                    }
                                    fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                                    if ((j & j6) != 0) {
                                        fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                                    }
                                    if ((j & j7) != 0) {
                                        TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                                    }
                                }
                            }
                            j9 = 416;
                            i4 = 0;
                            if ((j & j9) != 0) {
                                if (profileData == null) {
                                }
                                updateRegistration(5, overlayTranslation);
                                if (overlayTranslation != null) {
                                    drawable2 = (Drawable) overlayTranslation.get();
                                    i3 = i4;
                                    fragmentProfileBinding.appBar.setTranslationY((float) i2);
                                    fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                                    if (j3 != 0) {
                                        fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                        fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                                    }
                                    if ((j & 416) != 0) {
                                        fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                                    }
                                    fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                                    if ((j & j6) != 0) {
                                        fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                                    }
                                    if ((j & j7) != 0) {
                                        TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                                    }
                                }
                            }
                            i3 = i4;
                            drawable2 = null;
                            fragmentProfileBinding.appBar.setTranslationY((float) i2);
                            fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                            if (j3 != 0) {
                                fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                            }
                            if ((j & 416) != 0) {
                                fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                            }
                            fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                            if ((j & j6) != 0) {
                                fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                            }
                            if ((j & j7) != 0) {
                                TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                            }
                        }
                    }
                    i2 = 0;
                    if ((j & j4) != 0) {
                        if (profileData == null) {
                        }
                        updateRegistration(4, overlayTranslation);
                        if (overlayTranslation != null) {
                            i4 = overlayTranslation.get();
                            j9 = 416;
                            if ((j & j9) != 0) {
                                if (profileData == null) {
                                }
                                updateRegistration(5, overlayTranslation);
                                if (overlayTranslation != null) {
                                    drawable2 = (Drawable) overlayTranslation.get();
                                    i3 = i4;
                                    fragmentProfileBinding.appBar.setTranslationY((float) i2);
                                    fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                                    if (j3 != 0) {
                                        fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                        fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                                    }
                                    if ((j & 416) != 0) {
                                        fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                                    }
                                    fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                                    if ((j & j6) != 0) {
                                        fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                                    }
                                    if ((j & j7) != 0) {
                                        TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                                    }
                                }
                            }
                            i3 = i4;
                            drawable2 = null;
                            fragmentProfileBinding.appBar.setTranslationY((float) i2);
                            fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                            if (j3 != 0) {
                                fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                            }
                            if ((j & 416) != 0) {
                                fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                            }
                            fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                            if ((j & j6) != 0) {
                                fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                            }
                            if ((j & j7) != 0) {
                                TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                            }
                        }
                    }
                    j9 = 416;
                    i4 = 0;
                    if ((j & j9) != 0) {
                        if (profileData == null) {
                        }
                        updateRegistration(5, overlayTranslation);
                        if (overlayTranslation != null) {
                            drawable2 = (Drawable) overlayTranslation.get();
                            i3 = i4;
                            fragmentProfileBinding.appBar.setTranslationY((float) i2);
                            fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                            if (j3 != 0) {
                                fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                            }
                            if ((j & 416) != 0) {
                                fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                            }
                            fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                            if ((j & j6) != 0) {
                                fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                            }
                            if ((j & j7) != 0) {
                                TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                            }
                        }
                    }
                    i3 = i4;
                    drawable2 = null;
                    fragmentProfileBinding.appBar.setTranslationY((float) i2);
                    fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                    if (j3 != 0) {
                        fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                        fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                    }
                    if ((j & 416) != 0) {
                        fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                    }
                    fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                    if ((j & j6) != 0) {
                        fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                    }
                    if ((j & j7) != 0) {
                        TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                    }
                }
            }
            i = 0;
            if ((j & 386) != 0) {
                if (profileData == null) {
                    obj = null;
                } else {
                    userName = profileData.getUserName();
                }
                updateRegistration(1, obj);
                if (obj != null) {
                    charSequence = (String) obj.get();
                    if ((j & j6) != j2) {
                        if (profileData == null) {
                        }
                        updateRegistration(2, toolbarBackDrawable);
                        if (toolbarBackDrawable != null) {
                            drawable = (Drawable) toolbarBackDrawable.get();
                            if ((j & j5) != j2) {
                                if (profileData == null) {
                                }
                                updateRegistration(3, parallaxTranslation);
                                if (parallaxTranslation != null) {
                                    i2 = parallaxTranslation.get();
                                    if ((j & j4) != 0) {
                                        if (profileData == null) {
                                        }
                                        updateRegistration(4, overlayTranslation);
                                        if (overlayTranslation != null) {
                                            i4 = overlayTranslation.get();
                                            j9 = 416;
                                            if ((j & j9) != 0) {
                                                if (profileData == null) {
                                                }
                                                updateRegistration(5, overlayTranslation);
                                                if (overlayTranslation != null) {
                                                    drawable2 = (Drawable) overlayTranslation.get();
                                                    i3 = i4;
                                                    fragmentProfileBinding.appBar.setTranslationY((float) i2);
                                                    fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                                                    if (j3 != 0) {
                                                        fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                                        fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                                                    }
                                                    if ((j & 416) != 0) {
                                                        fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                                                    }
                                                    fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                                                    if ((j & j6) != 0) {
                                                        fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                                                    }
                                                    if ((j & j7) != 0) {
                                                        TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                                                    }
                                                }
                                            }
                                            i3 = i4;
                                            drawable2 = null;
                                            fragmentProfileBinding.appBar.setTranslationY((float) i2);
                                            fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                                            if (j3 != 0) {
                                                fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                                fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                                            }
                                            if ((j & 416) != 0) {
                                                fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                                            }
                                            fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                                            if ((j & j6) != 0) {
                                                fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                                            }
                                            if ((j & j7) != 0) {
                                                TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                                            }
                                        }
                                    }
                                    j9 = 416;
                                    i4 = 0;
                                    if ((j & j9) != 0) {
                                        if (profileData == null) {
                                        }
                                        updateRegistration(5, overlayTranslation);
                                        if (overlayTranslation != null) {
                                            drawable2 = (Drawable) overlayTranslation.get();
                                            i3 = i4;
                                            fragmentProfileBinding.appBar.setTranslationY((float) i2);
                                            fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                                            if (j3 != 0) {
                                                fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                                fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                                            }
                                            if ((j & 416) != 0) {
                                                fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                                            }
                                            fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                                            if ((j & j6) != 0) {
                                                fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                                            }
                                            if ((j & j7) != 0) {
                                                TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                                            }
                                        }
                                    }
                                    i3 = i4;
                                    drawable2 = null;
                                    fragmentProfileBinding.appBar.setTranslationY((float) i2);
                                    fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                                    if (j3 != 0) {
                                        fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                        fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                                    }
                                    if ((j & 416) != 0) {
                                        fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                                    }
                                    fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                                    if ((j & j6) != 0) {
                                        fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                                    }
                                    if ((j & j7) != 0) {
                                        TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                                    }
                                }
                            }
                            i2 = 0;
                            if ((j & j4) != 0) {
                                if (profileData == null) {
                                }
                                updateRegistration(4, overlayTranslation);
                                if (overlayTranslation != null) {
                                    i4 = overlayTranslation.get();
                                    j9 = 416;
                                    if ((j & j9) != 0) {
                                        if (profileData == null) {
                                        }
                                        updateRegistration(5, overlayTranslation);
                                        if (overlayTranslation != null) {
                                            drawable2 = (Drawable) overlayTranslation.get();
                                            i3 = i4;
                                            fragmentProfileBinding.appBar.setTranslationY((float) i2);
                                            fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                                            if (j3 != 0) {
                                                fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                                fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                                            }
                                            if ((j & 416) != 0) {
                                                fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                                            }
                                            fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                                            if ((j & j6) != 0) {
                                                fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                                            }
                                            if ((j & j7) != 0) {
                                                TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                                            }
                                        }
                                    }
                                    i3 = i4;
                                    drawable2 = null;
                                    fragmentProfileBinding.appBar.setTranslationY((float) i2);
                                    fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                                    if (j3 != 0) {
                                        fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                        fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                                    }
                                    if ((j & 416) != 0) {
                                        fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                                    }
                                    fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                                    if ((j & j6) != 0) {
                                        fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                                    }
                                    if ((j & j7) != 0) {
                                        TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                                    }
                                }
                            }
                            j9 = 416;
                            i4 = 0;
                            if ((j & j9) != 0) {
                                if (profileData == null) {
                                }
                                updateRegistration(5, overlayTranslation);
                                if (overlayTranslation != null) {
                                    drawable2 = (Drawable) overlayTranslation.get();
                                    i3 = i4;
                                    fragmentProfileBinding.appBar.setTranslationY((float) i2);
                                    fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                                    if (j3 != 0) {
                                        fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                        fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                                    }
                                    if ((j & 416) != 0) {
                                        fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                                    }
                                    fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                                    if ((j & j6) != 0) {
                                        fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                                    }
                                    if ((j & j7) != 0) {
                                        TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                                    }
                                }
                            }
                            i3 = i4;
                            drawable2 = null;
                            fragmentProfileBinding.appBar.setTranslationY((float) i2);
                            fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                            if (j3 != 0) {
                                fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                            }
                            if ((j & 416) != 0) {
                                fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                            }
                            fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                            if ((j & j6) != 0) {
                                fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                            }
                            if ((j & j7) != 0) {
                                TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                            }
                        }
                    }
                    drawable = null;
                    if ((j & j5) != j2) {
                        if (profileData == null) {
                        }
                        updateRegistration(3, parallaxTranslation);
                        if (parallaxTranslation != null) {
                            i2 = parallaxTranslation.get();
                            if ((j & j4) != 0) {
                                if (profileData == null) {
                                }
                                updateRegistration(4, overlayTranslation);
                                if (overlayTranslation != null) {
                                    i4 = overlayTranslation.get();
                                    j9 = 416;
                                    if ((j & j9) != 0) {
                                        if (profileData == null) {
                                        }
                                        updateRegistration(5, overlayTranslation);
                                        if (overlayTranslation != null) {
                                            drawable2 = (Drawable) overlayTranslation.get();
                                            i3 = i4;
                                            fragmentProfileBinding.appBar.setTranslationY((float) i2);
                                            fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                                            if (j3 != 0) {
                                                fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                                fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                                            }
                                            if ((j & 416) != 0) {
                                                fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                                            }
                                            fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                                            if ((j & j6) != 0) {
                                                fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                                            }
                                            if ((j & j7) != 0) {
                                                TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                                            }
                                        }
                                    }
                                    i3 = i4;
                                    drawable2 = null;
                                    fragmentProfileBinding.appBar.setTranslationY((float) i2);
                                    fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                                    if (j3 != 0) {
                                        fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                        fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                                    }
                                    if ((j & 416) != 0) {
                                        fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                                    }
                                    fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                                    if ((j & j6) != 0) {
                                        fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                                    }
                                    if ((j & j7) != 0) {
                                        TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                                    }
                                }
                            }
                            j9 = 416;
                            i4 = 0;
                            if ((j & j9) != 0) {
                                if (profileData == null) {
                                }
                                updateRegistration(5, overlayTranslation);
                                if (overlayTranslation != null) {
                                    drawable2 = (Drawable) overlayTranslation.get();
                                    i3 = i4;
                                    fragmentProfileBinding.appBar.setTranslationY((float) i2);
                                    fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                                    if (j3 != 0) {
                                        fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                        fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                                    }
                                    if ((j & 416) != 0) {
                                        fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                                    }
                                    fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                                    if ((j & j6) != 0) {
                                        fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                                    }
                                    if ((j & j7) != 0) {
                                        TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                                    }
                                }
                            }
                            i3 = i4;
                            drawable2 = null;
                            fragmentProfileBinding.appBar.setTranslationY((float) i2);
                            fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                            if (j3 != 0) {
                                fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                            }
                            if ((j & 416) != 0) {
                                fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                            }
                            fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                            if ((j & j6) != 0) {
                                fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                            }
                            if ((j & j7) != 0) {
                                TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                            }
                        }
                    }
                    i2 = 0;
                    if ((j & j4) != 0) {
                        if (profileData == null) {
                        }
                        updateRegistration(4, overlayTranslation);
                        if (overlayTranslation != null) {
                            i4 = overlayTranslation.get();
                            j9 = 416;
                            if ((j & j9) != 0) {
                                if (profileData == null) {
                                }
                                updateRegistration(5, overlayTranslation);
                                if (overlayTranslation != null) {
                                    drawable2 = (Drawable) overlayTranslation.get();
                                    i3 = i4;
                                    fragmentProfileBinding.appBar.setTranslationY((float) i2);
                                    fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                                    if (j3 != 0) {
                                        fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                        fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                                    }
                                    if ((j & 416) != 0) {
                                        fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                                    }
                                    fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                                    if ((j & j6) != 0) {
                                        fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                                    }
                                    if ((j & j7) != 0) {
                                        TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                                    }
                                }
                            }
                            i3 = i4;
                            drawable2 = null;
                            fragmentProfileBinding.appBar.setTranslationY((float) i2);
                            fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                            if (j3 != 0) {
                                fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                            }
                            if ((j & 416) != 0) {
                                fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                            }
                            fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                            if ((j & j6) != 0) {
                                fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                            }
                            if ((j & j7) != 0) {
                                TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                            }
                        }
                    }
                    j9 = 416;
                    i4 = 0;
                    if ((j & j9) != 0) {
                        if (profileData == null) {
                        }
                        updateRegistration(5, overlayTranslation);
                        if (overlayTranslation != null) {
                            drawable2 = (Drawable) overlayTranslation.get();
                            i3 = i4;
                            fragmentProfileBinding.appBar.setTranslationY((float) i2);
                            fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                            if (j3 != 0) {
                                fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                            }
                            if ((j & 416) != 0) {
                                fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                            }
                            fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                            if ((j & j6) != 0) {
                                fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                            }
                            if ((j & j7) != 0) {
                                TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                            }
                        }
                    }
                    i3 = i4;
                    drawable2 = null;
                    fragmentProfileBinding.appBar.setTranslationY((float) i2);
                    fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                    if (j3 != 0) {
                        fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                        fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                    }
                    if ((j & 416) != 0) {
                        fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                    }
                    fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                    if ((j & j6) != 0) {
                        fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                    }
                    if ((j & j7) != 0) {
                        TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                    }
                }
            }
            charSequence = null;
            if ((j & j6) != j2) {
                if (profileData == null) {
                }
                updateRegistration(2, toolbarBackDrawable);
                if (toolbarBackDrawable != null) {
                    drawable = (Drawable) toolbarBackDrawable.get();
                    if ((j & j5) != j2) {
                        if (profileData == null) {
                        }
                        updateRegistration(3, parallaxTranslation);
                        if (parallaxTranslation != null) {
                            i2 = parallaxTranslation.get();
                            if ((j & j4) != 0) {
                                if (profileData == null) {
                                }
                                updateRegistration(4, overlayTranslation);
                                if (overlayTranslation != null) {
                                    i4 = overlayTranslation.get();
                                    j9 = 416;
                                    if ((j & j9) != 0) {
                                        if (profileData == null) {
                                        }
                                        updateRegistration(5, overlayTranslation);
                                        if (overlayTranslation != null) {
                                            drawable2 = (Drawable) overlayTranslation.get();
                                            i3 = i4;
                                            fragmentProfileBinding.appBar.setTranslationY((float) i2);
                                            fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                                            if (j3 != 0) {
                                                fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                                fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                                            }
                                            if ((j & 416) != 0) {
                                                fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                                            }
                                            fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                                            if ((j & j6) != 0) {
                                                fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                                            }
                                            if ((j & j7) != 0) {
                                                TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                                            }
                                        }
                                    }
                                    i3 = i4;
                                    drawable2 = null;
                                    fragmentProfileBinding.appBar.setTranslationY((float) i2);
                                    fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                                    if (j3 != 0) {
                                        fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                        fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                                    }
                                    if ((j & 416) != 0) {
                                        fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                                    }
                                    fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                                    if ((j & j6) != 0) {
                                        fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                                    }
                                    if ((j & j7) != 0) {
                                        TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                                    }
                                }
                            }
                            j9 = 416;
                            i4 = 0;
                            if ((j & j9) != 0) {
                                if (profileData == null) {
                                }
                                updateRegistration(5, overlayTranslation);
                                if (overlayTranslation != null) {
                                    drawable2 = (Drawable) overlayTranslation.get();
                                    i3 = i4;
                                    fragmentProfileBinding.appBar.setTranslationY((float) i2);
                                    fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                                    if (j3 != 0) {
                                        fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                        fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                                    }
                                    if ((j & 416) != 0) {
                                        fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                                    }
                                    fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                                    if ((j & j6) != 0) {
                                        fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                                    }
                                    if ((j & j7) != 0) {
                                        TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                                    }
                                }
                            }
                            i3 = i4;
                            drawable2 = null;
                            fragmentProfileBinding.appBar.setTranslationY((float) i2);
                            fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                            if (j3 != 0) {
                                fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                            }
                            if ((j & 416) != 0) {
                                fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                            }
                            fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                            if ((j & j6) != 0) {
                                fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                            }
                            if ((j & j7) != 0) {
                                TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                            }
                        }
                    }
                    i2 = 0;
                    if ((j & j4) != 0) {
                        if (profileData == null) {
                        }
                        updateRegistration(4, overlayTranslation);
                        if (overlayTranslation != null) {
                            i4 = overlayTranslation.get();
                            j9 = 416;
                            if ((j & j9) != 0) {
                                if (profileData == null) {
                                }
                                updateRegistration(5, overlayTranslation);
                                if (overlayTranslation != null) {
                                    drawable2 = (Drawable) overlayTranslation.get();
                                    i3 = i4;
                                    fragmentProfileBinding.appBar.setTranslationY((float) i2);
                                    fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                                    if (j3 != 0) {
                                        fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                        fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                                    }
                                    if ((j & 416) != 0) {
                                        fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                                    }
                                    fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                                    if ((j & j6) != 0) {
                                        fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                                    }
                                    if ((j & j7) != 0) {
                                        TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                                    }
                                }
                            }
                            i3 = i4;
                            drawable2 = null;
                            fragmentProfileBinding.appBar.setTranslationY((float) i2);
                            fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                            if (j3 != 0) {
                                fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                            }
                            if ((j & 416) != 0) {
                                fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                            }
                            fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                            if ((j & j6) != 0) {
                                fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                            }
                            if ((j & j7) != 0) {
                                TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                            }
                        }
                    }
                    j9 = 416;
                    i4 = 0;
                    if ((j & j9) != 0) {
                        if (profileData == null) {
                        }
                        updateRegistration(5, overlayTranslation);
                        if (overlayTranslation != null) {
                            drawable2 = (Drawable) overlayTranslation.get();
                            i3 = i4;
                            fragmentProfileBinding.appBar.setTranslationY((float) i2);
                            fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                            if (j3 != 0) {
                                fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                            }
                            if ((j & 416) != 0) {
                                fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                            }
                            fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                            if ((j & j6) != 0) {
                                fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                            }
                            if ((j & j7) != 0) {
                                TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                            }
                        }
                    }
                    i3 = i4;
                    drawable2 = null;
                    fragmentProfileBinding.appBar.setTranslationY((float) i2);
                    fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                    if (j3 != 0) {
                        fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                        fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                    }
                    if ((j & 416) != 0) {
                        fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                    }
                    fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                    if ((j & j6) != 0) {
                        fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                    }
                    if ((j & j7) != 0) {
                        TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                    }
                }
            }
            drawable = null;
            if ((j & j5) != j2) {
                if (profileData == null) {
                }
                updateRegistration(3, parallaxTranslation);
                if (parallaxTranslation != null) {
                    i2 = parallaxTranslation.get();
                    if ((j & j4) != 0) {
                        if (profileData == null) {
                        }
                        updateRegistration(4, overlayTranslation);
                        if (overlayTranslation != null) {
                            i4 = overlayTranslation.get();
                            j9 = 416;
                            if ((j & j9) != 0) {
                                if (profileData == null) {
                                }
                                updateRegistration(5, overlayTranslation);
                                if (overlayTranslation != null) {
                                    drawable2 = (Drawable) overlayTranslation.get();
                                    i3 = i4;
                                    fragmentProfileBinding.appBar.setTranslationY((float) i2);
                                    fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                                    if (j3 != 0) {
                                        fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                        fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                                    }
                                    if ((j & 416) != 0) {
                                        fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                                    }
                                    fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                                    if ((j & j6) != 0) {
                                        fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                                    }
                                    if ((j & j7) != 0) {
                                        TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                                    }
                                }
                            }
                            i3 = i4;
                            drawable2 = null;
                            fragmentProfileBinding.appBar.setTranslationY((float) i2);
                            fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                            if (j3 != 0) {
                                fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                            }
                            if ((j & 416) != 0) {
                                fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                            }
                            fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                            if ((j & j6) != 0) {
                                fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                            }
                            if ((j & j7) != 0) {
                                TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                            }
                        }
                    }
                    j9 = 416;
                    i4 = 0;
                    if ((j & j9) != 0) {
                        if (profileData == null) {
                        }
                        updateRegistration(5, overlayTranslation);
                        if (overlayTranslation != null) {
                            drawable2 = (Drawable) overlayTranslation.get();
                            i3 = i4;
                            fragmentProfileBinding.appBar.setTranslationY((float) i2);
                            fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                            if (j3 != 0) {
                                fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                            }
                            if ((j & 416) != 0) {
                                fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                            }
                            fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                            if ((j & j6) != 0) {
                                fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                            }
                            if ((j & j7) != 0) {
                                TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                            }
                        }
                    }
                    i3 = i4;
                    drawable2 = null;
                    fragmentProfileBinding.appBar.setTranslationY((float) i2);
                    fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                    if (j3 != 0) {
                        fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                        fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                    }
                    if ((j & 416) != 0) {
                        fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                    }
                    fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                    if ((j & j6) != 0) {
                        fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                    }
                    if ((j & j7) != 0) {
                        TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                    }
                }
            }
            i2 = 0;
            if ((j & j4) != 0) {
                if (profileData == null) {
                }
                updateRegistration(4, overlayTranslation);
                if (overlayTranslation != null) {
                    i4 = overlayTranslation.get();
                    j9 = 416;
                    if ((j & j9) != 0) {
                        if (profileData == null) {
                        }
                        updateRegistration(5, overlayTranslation);
                        if (overlayTranslation != null) {
                            drawable2 = (Drawable) overlayTranslation.get();
                            i3 = i4;
                            fragmentProfileBinding.appBar.setTranslationY((float) i2);
                            fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                            if (j3 != 0) {
                                fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                                fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                            }
                            if ((j & 416) != 0) {
                                fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                            }
                            fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                            if ((j & j6) != 0) {
                                fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                            }
                            if ((j & j7) != 0) {
                                TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                            }
                        }
                    }
                    i3 = i4;
                    drawable2 = null;
                    fragmentProfileBinding.appBar.setTranslationY((float) i2);
                    fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                    if (j3 != 0) {
                        fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                        fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                    }
                    if ((j & 416) != 0) {
                        fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                    }
                    fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                    if ((j & j6) != 0) {
                        fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                    }
                    if ((j & j7) != 0) {
                        TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                    }
                }
            }
            j9 = 416;
            i4 = 0;
            if ((j & j9) != 0) {
                if (profileData == null) {
                }
                updateRegistration(5, overlayTranslation);
                if (overlayTranslation != null) {
                    drawable2 = (Drawable) overlayTranslation.get();
                    i3 = i4;
                    fragmentProfileBinding.appBar.setTranslationY((float) i2);
                    fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
                    if (j3 != 0) {
                        fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                        fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
                    }
                    if ((j & 416) != 0) {
                        fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
                    }
                    fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
                    if ((j & j6) != 0) {
                        fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
                    }
                    if ((j & j7) != 0) {
                        TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
                    }
                }
            }
            i3 = i4;
            drawable2 = null;
            fragmentProfileBinding.appBar.setTranslationY((float) i2);
            fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
            if (j3 != 0) {
                fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
                fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
            }
            if ((j & 416) != 0) {
                fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
            }
            fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
            if ((j & j6) != 0) {
                fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
            }
            if ((j & j7) != 0) {
                TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
            }
        }
        i2 = 0;
        i3 = 0;
        drawable2 = null;
        charSequence = null;
        i = 0;
        drawable = null;
        fragmentProfileBinding.appBar.setTranslationY((float) i2);
        fragmentProfileBinding.cardOverlay.setTranslationY((float) i3);
        if (j3 != 0) {
            fragmentProfileBinding.coverImage.setOnClickListener(onClickListener2);
            fragmentProfileBinding.userPic.setOnClickListener(onClickListener);
        }
        if ((j & 416) != 0) {
            fragmentProfileBinding.toolbar.setNavigationIcon(drawable2);
        }
        fragmentProfileBinding.toolbarReal.setTranslationY((float) i);
        if ((j & j6) != 0) {
            fragmentProfileBinding.toolbarReal.setNavigationIcon(drawable);
        }
        if ((j & j7) != 0) {
            TextViewBindingAdapter.setText(fragmentProfileBinding.userName, charSequence);
        }
    }

    public static FragmentProfileBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentProfileBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (FragmentProfileBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.fragment_profile, viewGroup, z, dataBindingComponent);
    }

    public static FragmentProfileBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentProfileBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.fragment_profile, null, false), dataBindingComponent);
    }

    public static FragmentProfileBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentProfileBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/fragment_profile_0".equals(view.getTag())) {
            return new FragmentProfileBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
