package ru.rocketbank.r2d2.databinding;

import android.content.res.Resources;
import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ObservableBoolean;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.support.design.widget.CoordinatorLayout;
import android.support.v4.media.session.PlaybackStateCompat;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.Toolbar;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import ru.rocketbank.core.widgets.RocketButton;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.shop.cart.ShopCartViewModel;

public class ActivityShopCartBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final RocketButton checkoutButton;
    private ShopCartViewModel mData;
    private long mDirtyFlags = -1;
    private final CoordinatorLayout mboundView0;
    private final FrameLayout mboundView3;
    private final RocketTextView mboundView4;
    public final ProgressBar progressBar;
    public final RecyclerView recyclerView;
    public final Toolbar toolbar;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.toolbar, 6);
    }

    public ActivityShopCartBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 5);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 7, sIncludes, sViewsWithIds);
        this.checkoutButton = (RocketButton) dataBindingComponent[1];
        this.checkoutButton.setTag(null);
        this.mboundView0 = (CoordinatorLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.mboundView3 = (FrameLayout) dataBindingComponent[3];
        this.mboundView3.setTag(null);
        this.mboundView4 = (RocketTextView) dataBindingComponent[4];
        this.mboundView4.setTag(null);
        this.progressBar = (ProgressBar) dataBindingComponent[2];
        this.progressBar.setTag(null);
        this.recyclerView = (RecyclerView) dataBindingComponent[5];
        this.recyclerView.setTag(null);
        this.toolbar = (Toolbar) dataBindingComponent[6];
        setRootTag(view);
        invalidateAll();
    }

    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 64;
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
        setData((ShopCartViewModel) obj);
        return true;
    }

    public void setData(ShopCartViewModel shopCartViewModel) {
        this.mData = shopCartViewModel;
        synchronized (this) {
            this.mDirtyFlags |= 32;
        }
        notifyPropertyChanged(24);
        super.requestRebind();
    }

    public ShopCartViewModel getData() {
        return this.mData;
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeDataHasLoadingError((ObservableBoolean) obj, i2);
            case 1:
                return onChangeDataInProgress((ObservableBoolean) obj, i2);
            case 2:
                return onChangeDataIsEmpty((ObservableBoolean) obj, i2);
            case 3:
                return onChangeDataHasItems((ObservableBoolean) obj, i2);
            case 4:
                return onChangeDataEnableCheckoutButton((ObservableBoolean) obj, i2);
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

    private boolean onChangeDataInProgress(ObservableBoolean observableBoolean, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        return true;
    }

    private boolean onChangeDataIsEmpty(ObservableBoolean observableBoolean, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        return true;
    }

    private boolean onChangeDataHasItems(ObservableBoolean observableBoolean, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        return true;
    }

    private boolean onChangeDataEnableCheckoutButton(ObservableBoolean observableBoolean, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 16;
        }
        return true;
    }

    protected void executeBindings() {
        long j;
        int i;
        boolean z;
        int i2;
        boolean z2;
        boolean z3;
        String str;
        long j2;
        boolean z4;
        ActivityShopCartBinding activityShopCartBinding = this;
        synchronized (this) {
            try {
                j = activityShopCartBinding.mDirtyFlags;
                activityShopCartBinding.mDirtyFlags = 0;
            } catch (Throwable th) {
                while (true) {
                    Throwable th2 = th;
                }
            }
        }
        ShopCartViewModel shopCartViewModel = activityShopCartBinding.mData;
        String str2 = null;
        int i3 = 0;
        if ((j & 127) != 0) {
            Object isEmpty;
            Object hasItems;
            boolean z5;
            Object enableCheckoutButton;
            long j3 = j & 98;
            if (j3 != 0) {
                boolean z6;
                Object inProgress = shopCartViewModel != null ? shopCartViewModel.getInProgress() : null;
                updateRegistration(1, inProgress);
                if (inProgress != null) {
                    z6 = inProgress.get();
                } else {
                    z6 = false;
                }
                if (j3 != 0) {
                    j = z6 ? j | 256 : j | 128;
                }
                if (!z6) {
                    i = 8;
                    j3 = j & 101;
                    if (j3 == 0) {
                        isEmpty = shopCartViewModel == null ? shopCartViewModel.isEmpty() : null;
                        updateRegistration(2, isEmpty);
                        if (isEmpty == null) {
                            z = isEmpty.get();
                        } else {
                            z = false;
                        }
                        if (j3 != 0) {
                            j = z ? (j | PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) | PlaybackStateCompat.ACTION_SET_REPEAT_MODE : (j | 512) | PlaybackStateCompat.ACTION_PREPARE_FROM_URI;
                        }
                    } else {
                        z = false;
                    }
                    j3 = j & 104;
                    if (j3 == 0) {
                        hasItems = shopCartViewModel == null ? shopCartViewModel.getHasItems() : null;
                        updateRegistration(3, hasItems);
                        if (hasItems == null) {
                            z5 = hasItems.get();
                        } else {
                            z5 = false;
                        }
                        j3 = j3 == 0 ? z5 ? j | PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM : j | PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH : j;
                        i2 = z5 ? 0 : 8;
                        j = j3;
                    } else {
                        i2 = 0;
                    }
                    if ((j & 112) != 0) {
                        enableCheckoutButton = shopCartViewModel == null ? shopCartViewModel.getEnableCheckoutButton() : null;
                        updateRegistration(4, enableCheckoutButton);
                        if (enableCheckoutButton != null) {
                            z2 = enableCheckoutButton.get();
                        }
                    }
                    z2 = false;
                }
            }
            i = 0;
            j3 = j & 101;
            if (j3 == 0) {
                z = false;
            } else {
                if (shopCartViewModel == null) {
                }
                updateRegistration(2, isEmpty);
                if (isEmpty == null) {
                    z = false;
                } else {
                    z = isEmpty.get();
                }
                if (j3 != 0) {
                    if (z) {
                    }
                }
            }
            j3 = j & 104;
            if (j3 == 0) {
                i2 = 0;
            } else {
                if (shopCartViewModel == null) {
                }
                updateRegistration(3, hasItems);
                if (hasItems == null) {
                    z5 = false;
                } else {
                    z5 = hasItems.get();
                }
                if (j3 == 0) {
                }
                if (z5) {
                }
                i2 = z5 ? 0 : 8;
                j = j3;
            }
            if ((j & 112) != 0) {
                if (shopCartViewModel == null) {
                }
                updateRegistration(4, enableCheckoutButton);
                if (enableCheckoutButton != null) {
                    z2 = enableCheckoutButton.get();
                }
            }
            z2 = false;
        } else {
            i = 0;
            z = i;
            i2 = z;
            z2 = i2;
        }
        if ((j & 131584) != 0) {
            boolean z7;
            Object hasLoadingError = shopCartViewModel != null ? shopCartViewModel.getHasLoadingError() : null;
            updateRegistration(0, hasLoadingError);
            if (hasLoadingError != null) {
                z7 = hasLoadingError.get();
            } else {
                z7 = false;
            }
            if ((j & PlaybackStateCompat.ACTION_PREPARE_FROM_URI) != 0) {
                j = z7 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
            }
            if ((j & PlaybackStateCompat.ACTION_PREPARE_FROM_URI) != 0) {
                Resources resources;
                int i4;
                if (z7) {
                    resources = activityShopCartBinding.mboundView4.getResources();
                    i4 = C0859R.string.shop_items_loading_error;
                } else {
                    resources = activityShopCartBinding.mboundView4.getResources();
                    i4 = C0859R.string.empty;
                }
                String string = resources.getString(i4);
                z3 = z7;
                str = string;
                j2 = j & 101;
                if (j2 != 0) {
                    z4 = z ? true : z3;
                    if (z) {
                        str = activityShopCartBinding.mboundView4.getResources().getString(C0859R.string.cart_is_empty);
                    }
                    str2 = str;
                    if (j2 != 0) {
                        j = z4 ? j | PlaybackStateCompat.ACTION_PREPARE : j | PlaybackStateCompat.ACTION_PLAY_FROM_URI;
                    }
                    if (z4) {
                        i3 = 8;
                    }
                }
                str = str2;
                if ((j & 112) != 0) {
                    activityShopCartBinding.checkoutButton.setEnabled(z2);
                }
                if ((j & 101) != 0) {
                    activityShopCartBinding.mboundView3.setVisibility(i3);
                    activityShopCartBinding.mboundView4.setText(str);
                }
                if ((j & 98) != 0) {
                    activityShopCartBinding.progressBar.setVisibility(i);
                }
                if ((j & 104) != 0) {
                    activityShopCartBinding.recyclerView.setVisibility(i2);
                }
            }
            z3 = z7;
        } else {
            z3 = false;
        }
        str = null;
        j2 = j & 101;
        if (j2 != 0) {
            if (z) {
            }
            if (z) {
                str = activityShopCartBinding.mboundView4.getResources().getString(C0859R.string.cart_is_empty);
            }
            str2 = str;
            if (j2 != 0) {
                if (z4) {
                }
                j = z4 ? j | PlaybackStateCompat.ACTION_PREPARE : j | PlaybackStateCompat.ACTION_PLAY_FROM_URI;
            }
            if (z4) {
                i3 = 8;
            }
        }
        str = str2;
        if ((j & 112) != 0) {
            activityShopCartBinding.checkoutButton.setEnabled(z2);
        }
        if ((j & 101) != 0) {
            activityShopCartBinding.mboundView3.setVisibility(i3);
            activityShopCartBinding.mboundView4.setText(str);
        }
        if ((j & 98) != 0) {
            activityShopCartBinding.progressBar.setVisibility(i);
        }
        if ((j & 104) != 0) {
            activityShopCartBinding.recyclerView.setVisibility(i2);
        }
    }

    public static ActivityShopCartBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityShopCartBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (ActivityShopCartBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.activity_shop_cart, viewGroup, z, dataBindingComponent);
    }

    public static ActivityShopCartBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityShopCartBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.activity_shop_cart, null, false), dataBindingComponent);
    }

    public static ActivityShopCartBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityShopCartBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/activity_shop_cart_0".equals(view.getTag())) {
            return new ActivityShopCartBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
