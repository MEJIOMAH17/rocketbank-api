package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ObservableBoolean;
import android.databinding.ObservableField;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.databinding.adapters.TextViewBindingAdapter;
import android.support.design.widget.CoordinatorLayout;
import android.support.v4.media.session.PlaybackStateCompat;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.Toolbar;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ProgressBar;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.shop.feed.ShopFragmentData;

public class FragmentShopFeedBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final ImageButton cartButton;
    private ShopFragmentData mData;
    private long mDirtyFlags = -1;
    private final CoordinatorLayout mboundView0;
    private final RocketTextView mboundView2;
    private final FrameLayout mboundView4;
    private final RocketTextView mboundView5;
    public final ProgressBar progressBar;
    public final RecyclerView recyclerView;
    public final Toolbar toolbar;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.toolbar, 7);
    }

    public FragmentShopFeedBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 6);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 8, sIncludes, sViewsWithIds);
        this.cartButton = (ImageButton) dataBindingComponent[1];
        this.cartButton.setTag(null);
        this.mboundView0 = (CoordinatorLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.mboundView2 = (RocketTextView) dataBindingComponent[2];
        this.mboundView2.setTag(null);
        this.mboundView4 = (FrameLayout) dataBindingComponent[4];
        this.mboundView4.setTag(null);
        this.mboundView5 = (RocketTextView) dataBindingComponent[5];
        this.mboundView5.setTag(null);
        this.progressBar = (ProgressBar) dataBindingComponent[3];
        this.progressBar.setTag(null);
        this.recyclerView = (RecyclerView) dataBindingComponent[6];
        this.recyclerView.setTag(null);
        this.toolbar = (Toolbar) dataBindingComponent[7];
        setRootTag(view);
        invalidateAll();
    }

    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 128;
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
        if (24 != i) {
            return false;
        }
        setData((ShopFragmentData) obj);
        return true;
    }

    public void setData(ShopFragmentData shopFragmentData) {
        this.mData = shopFragmentData;
        synchronized (this) {
            this.mDirtyFlags |= 64;
        }
        notifyPropertyChanged(24);
        super.requestRebind();
    }

    public ShopFragmentData getData() {
        return this.mData;
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeDataHasLoadingError((ObservableBoolean) obj, i2);
            case 1:
                return onChangeDataCartSize((ObservableField) obj, i2);
            case 2:
                return onChangeDataInProgress((ObservableBoolean) obj, i2);
            case 3:
                return onChangeDataCartButtonEnabled((ObservableBoolean) obj, i2);
            case 4:
                return onChangeDataIsEmpty((ObservableBoolean) obj, i2);
            case 5:
                return onChangeDataHasItems((ObservableBoolean) obj, i2);
            default:
                return false;
        }
    }

    private boolean onChangeDataHasLoadingError(ObservableBoolean observableBoolean, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    private boolean onChangeDataCartSize(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        return true;
    }

    private boolean onChangeDataInProgress(ObservableBoolean observableBoolean, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        return true;
    }

    private boolean onChangeDataCartButtonEnabled(ObservableBoolean observableBoolean, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        return true;
    }

    private boolean onChangeDataIsEmpty(ObservableBoolean observableBoolean, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 16;
        }
        return true;
    }

    private boolean onChangeDataHasItems(ObservableBoolean observableBoolean, int i) {
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
        CharSequence charSequence;
        int i;
        boolean z;
        int i2;
        int i3;
        boolean z2;
        int i4;
        boolean z3;
        String string;
        int i5;
        CharSequence charSequence2;
        FragmentShopFeedBinding fragmentShopFeedBinding = this;
        synchronized (this) {
            try {
                j = fragmentShopFeedBinding.mDirtyFlags;
                fragmentShopFeedBinding.mDirtyFlags = 0;
            } catch (Throwable th) {
                while (true) {
                    Throwable th2 = th;
                }
            }
        }
        ShopFragmentData shopFragmentData = fragmentShopFeedBinding.mData;
        if ((j & 255) != 0) {
            long j2;
            Object inProgress;
            boolean z4;
            Object cartButtonEnabled;
            Object isEmpty;
            Object hasItems;
            boolean z5;
            if ((j & 194) != 0) {
                Object cartSize = shopFragmentData != null ? shopFragmentData.getCartSize() : null;
                updateRegistration(1, cartSize);
                if (cartSize != null) {
                    charSequence = (String) cartSize.get();
                    j2 = j & 196;
                    if (j2 != 0) {
                        inProgress = shopFragmentData == null ? shopFragmentData.getInProgress() : null;
                        updateRegistration(2, inProgress);
                        if (inProgress == null) {
                            z4 = inProgress.get();
                        } else {
                            z4 = false;
                        }
                        if (j2 != 0) {
                            j = z4 ? j | 512 : j | 256;
                        }
                        if (z4) {
                            i = 8;
                            j2 = j & 200;
                            if (j2 == 0) {
                                cartButtonEnabled = shopFragmentData == null ? shopFragmentData.getCartButtonEnabled() : null;
                                updateRegistration(3, cartButtonEnabled);
                                if (cartButtonEnabled == null) {
                                    z = cartButtonEnabled.get();
                                } else {
                                    z = false;
                                }
                                if (j2 != 0) {
                                    j = z ? (j | PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH) | PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE : (j | PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) | PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
                                }
                                i2 = z ? 0 : 8;
                                i3 = z ? 255 : 128;
                            } else {
                                z = false;
                                i2 = z;
                                i3 = i2;
                            }
                            j2 = j & 209;
                            if (j2 == 0) {
                                isEmpty = shopFragmentData == null ? shopFragmentData.isEmpty() : null;
                                updateRegistration(4, isEmpty);
                                if (isEmpty == null) {
                                    z2 = isEmpty.get();
                                } else {
                                    z2 = false;
                                }
                                if (j2 != 0) {
                                    j = z2 ? (j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID) | 8388608 : (j | PlaybackStateCompat.ACTION_PREPARE) | 4194304;
                                }
                            } else {
                                z2 = false;
                            }
                            j2 = j & 224;
                            if (j2 != 0) {
                                hasItems = shopFragmentData == null ? shopFragmentData.getHasItems() : null;
                                updateRegistration(5, hasItems);
                                if (hasItems == null) {
                                    z5 = hasItems.get();
                                } else {
                                    z5 = false;
                                }
                                if (j2 != 0) {
                                    j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_URI : j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH;
                                }
                                if (!z5) {
                                    i4 = 8;
                                }
                            }
                            i4 = 0;
                        }
                    }
                    i = 0;
                    j2 = j & 200;
                    if (j2 == 0) {
                        z = false;
                        i2 = z;
                        i3 = i2;
                    } else {
                        if (shopFragmentData == null) {
                        }
                        updateRegistration(3, cartButtonEnabled);
                        if (cartButtonEnabled == null) {
                            z = false;
                        } else {
                            z = cartButtonEnabled.get();
                        }
                        if (j2 != 0) {
                            if (z) {
                            }
                            j = z ? (j | PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH) | PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE : (j | PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) | PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
                        }
                        if (z) {
                        }
                        if (z) {
                        }
                    }
                    j2 = j & 209;
                    if (j2 == 0) {
                        z2 = false;
                    } else {
                        if (shopFragmentData == null) {
                        }
                        updateRegistration(4, isEmpty);
                        if (isEmpty == null) {
                            z2 = false;
                        } else {
                            z2 = isEmpty.get();
                        }
                        if (j2 != 0) {
                            if (z2) {
                            }
                        }
                    }
                    j2 = j & 224;
                    if (j2 != 0) {
                        if (shopFragmentData == null) {
                        }
                        updateRegistration(5, hasItems);
                        if (hasItems == null) {
                            z5 = false;
                        } else {
                            z5 = hasItems.get();
                        }
                        if (j2 != 0) {
                            if (z5) {
                            }
                            j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_URI : j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH;
                        }
                        if (!z5) {
                            i4 = 8;
                        }
                    }
                    i4 = 0;
                }
            }
            charSequence = null;
            j2 = j & 196;
            if (j2 != 0) {
                if (shopFragmentData == null) {
                }
                updateRegistration(2, inProgress);
                if (inProgress == null) {
                    z4 = false;
                } else {
                    z4 = inProgress.get();
                }
                if (j2 != 0) {
                    if (z4) {
                    }
                    j = z4 ? j | 512 : j | 256;
                }
                if (z4) {
                    i = 8;
                    j2 = j & 200;
                    if (j2 == 0) {
                        if (shopFragmentData == null) {
                        }
                        updateRegistration(3, cartButtonEnabled);
                        if (cartButtonEnabled == null) {
                            z = cartButtonEnabled.get();
                        } else {
                            z = false;
                        }
                        if (j2 != 0) {
                            if (z) {
                            }
                            j = z ? (j | PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH) | PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE : (j | PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) | PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
                        }
                        if (z) {
                        }
                        if (z) {
                        }
                    } else {
                        z = false;
                        i2 = z;
                        i3 = i2;
                    }
                    j2 = j & 209;
                    if (j2 == 0) {
                        if (shopFragmentData == null) {
                        }
                        updateRegistration(4, isEmpty);
                        if (isEmpty == null) {
                            z2 = isEmpty.get();
                        } else {
                            z2 = false;
                        }
                        if (j2 != 0) {
                            if (z2) {
                            }
                        }
                    } else {
                        z2 = false;
                    }
                    j2 = j & 224;
                    if (j2 != 0) {
                        if (shopFragmentData == null) {
                        }
                        updateRegistration(5, hasItems);
                        if (hasItems == null) {
                            z5 = hasItems.get();
                        } else {
                            z5 = false;
                        }
                        if (j2 != 0) {
                            if (z5) {
                            }
                            j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_URI : j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH;
                        }
                        if (!z5) {
                            i4 = 8;
                        }
                    }
                    i4 = 0;
                }
            }
            i = 0;
            j2 = j & 200;
            if (j2 == 0) {
                z = false;
                i2 = z;
                i3 = i2;
            } else {
                if (shopFragmentData == null) {
                }
                updateRegistration(3, cartButtonEnabled);
                if (cartButtonEnabled == null) {
                    z = false;
                } else {
                    z = cartButtonEnabled.get();
                }
                if (j2 != 0) {
                    if (z) {
                    }
                    j = z ? (j | PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH) | PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE : (j | PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) | PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
                }
                if (z) {
                }
                if (z) {
                }
            }
            j2 = j & 209;
            if (j2 == 0) {
                z2 = false;
            } else {
                if (shopFragmentData == null) {
                }
                updateRegistration(4, isEmpty);
                if (isEmpty == null) {
                    z2 = false;
                } else {
                    z2 = isEmpty.get();
                }
                if (j2 != 0) {
                    if (z2) {
                    }
                }
            }
            j2 = j & 224;
            if (j2 != 0) {
                if (shopFragmentData == null) {
                }
                updateRegistration(5, hasItems);
                if (hasItems == null) {
                    z5 = false;
                } else {
                    z5 = hasItems.get();
                }
                if (j2 != 0) {
                    if (z5) {
                    }
                    j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_URI : j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH;
                }
                if (!z5) {
                    i4 = 8;
                }
            }
            i4 = 0;
        } else {
            i = 0;
            z2 = i;
            i4 = z2;
            z = i4;
            i2 = z;
            i3 = i2;
            charSequence = null;
        }
        if ((j & 4210688) != 0) {
            Object hasLoadingError = shopFragmentData != null ? shopFragmentData.getHasLoadingError() : null;
            updateRegistration(0, hasLoadingError);
            if (hasLoadingError != null) {
                z3 = hasLoadingError.get();
            } else {
                z3 = false;
            }
            if ((j & 4194304) != 0) {
                j = z3 ? j | PlaybackStateCompat.ACTION_PLAY_FROM_URI : j | PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM;
            }
            string = (j & 4194304) != 0 ? z3 ? fragmentShopFeedBinding.mboundView5.getResources().getString(C0859R.string.shop_items_loading_error) : fragmentShopFeedBinding.mboundView5.getResources().getString(C0859R.string.empty) : null;
        } else {
            string = null;
            z3 = false;
        }
        long j3 = j & 209;
        if (j3 != 0) {
            if (z2) {
                z3 = true;
            }
            if (z2) {
                string = fragmentShopFeedBinding.mboundView5.getResources().getString(C0859R.string.shop_is_empty);
            }
            String str = string;
            if (j3 != 0) {
                j = z3 ? j | PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED : j | PlaybackStateCompat.ACTION_SET_REPEAT_MODE;
            }
            i5 = z3 ? 0 : 8;
            charSequence2 = str;
        } else {
            charSequence2 = null;
            i5 = 0;
        }
        if ((j & 200) != 0) {
            fragmentShopFeedBinding.cartButton.setAlpha(i3);
            fragmentShopFeedBinding.cartButton.setEnabled(z);
            fragmentShopFeedBinding.mboundView2.setVisibility(i2);
        }
        if ((j & 194) != 0) {
            TextViewBindingAdapter.setText(fragmentShopFeedBinding.mboundView2, charSequence);
        }
        if ((j & 209) != 0) {
            fragmentShopFeedBinding.mboundView4.setVisibility(i5);
            fragmentShopFeedBinding.mboundView5.setText(charSequence2);
        }
        if ((j & 196) != 0) {
            fragmentShopFeedBinding.progressBar.setVisibility(i);
        }
        if ((j & 224) != 0) {
            fragmentShopFeedBinding.recyclerView.setVisibility(i4);
        }
    }

    public static FragmentShopFeedBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentShopFeedBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (FragmentShopFeedBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.fragment_shop_feed, viewGroup, z, dataBindingComponent);
    }

    public static FragmentShopFeedBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentShopFeedBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.fragment_shop_feed, null, false), dataBindingComponent);
    }

    public static FragmentShopFeedBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentShopFeedBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/fragment_shop_feed_0".equals(view.getTag())) {
            return new FragmentShopFeedBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
