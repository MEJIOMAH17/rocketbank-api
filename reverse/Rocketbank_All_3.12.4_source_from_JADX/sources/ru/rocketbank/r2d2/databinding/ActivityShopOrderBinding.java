package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.databinding.adapters.TextViewBindingAdapter;
import android.databinding.adapters.ViewBindingAdapter;
import android.graphics.drawable.Drawable;
import android.support.constraint.ConstraintLayout;
import android.support.design.widget.TextInputLayout;
import android.support.v4.media.session.PlaybackStateCompat;
import android.support.v7.widget.Toolbar;
import android.text.TextWatcher;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AutoCompleteTextView;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import ru.rocketbank.core.widgets.RocketButton;
import ru.rocketbank.core.widgets.RocketEditText;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.shop.order.StoreCheckoutViewModel;
import ru.rocketbank.r2d2.utils.ViewModelObservable.ViewField;

public class ActivityShopOrderBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final ConstraintLayout activityStoreCheckout;
    public final AutoCompleteTextView address;
    public final RocketTextView addressError;
    public final ProgressBar addressProgressBar;
    public final FrameLayout addressView;
    public final RocketButton buttonConfirm;
    public final ImageButton buttonHaveQuestion;
    public final RocketEditText comment;
    public final TextInputLayout commentView;
    private StoreCheckoutViewModel mData;
    private long mDirtyFlags = -1;
    private final LinearLayout mboundView0;
    public final RocketTextView price;
    public final Toolbar toolbar;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.toolbar, 4);
        sViewsWithIds.put(C0859R.id.buttonHaveQuestion, 5);
        sViewsWithIds.put(C0859R.id.activity_store_checkout, 6);
        sViewsWithIds.put(C0859R.id.addressView, 7);
        sViewsWithIds.put(C0859R.id.addressError, 8);
        sViewsWithIds.put(C0859R.id.addressProgressBar, 9);
        sViewsWithIds.put(C0859R.id.commentView, 10);
        sViewsWithIds.put(C0859R.id.buttonConfirm, 11);
    }

    public ActivityShopOrderBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 6);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 12, sIncludes, sViewsWithIds);
        this.activityStoreCheckout = (ConstraintLayout) dataBindingComponent[6];
        this.address = (AutoCompleteTextView) dataBindingComponent[1];
        this.address.setTag(null);
        this.addressError = (RocketTextView) dataBindingComponent[8];
        this.addressProgressBar = (ProgressBar) dataBindingComponent[9];
        this.addressView = (FrameLayout) dataBindingComponent[7];
        this.buttonConfirm = (RocketButton) dataBindingComponent[11];
        this.buttonHaveQuestion = (ImageButton) dataBindingComponent[5];
        this.comment = (RocketEditText) dataBindingComponent[2];
        this.comment.setTag(null);
        this.commentView = (TextInputLayout) dataBindingComponent[10];
        this.mboundView0 = (LinearLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.price = (RocketTextView) dataBindingComponent[3];
        this.price.setTag(null);
        this.toolbar = (Toolbar) dataBindingComponent[4];
        setRootTag(view);
        invalidateAll();
    }

    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH;
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
        setData((StoreCheckoutViewModel) obj);
        return true;
    }

    public void setData(StoreCheckoutViewModel storeCheckoutViewModel) {
        updateRegistration(3, storeCheckoutViewModel);
        this.mData = storeCheckoutViewModel;
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        notifyPropertyChanged(24);
        super.requestRebind();
    }

    public StoreCheckoutViewModel getData() {
        return this.mData;
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeDataComment((ViewField) obj, i2);
            case 1:
                return onChangeDataGetFieldJavaLangStringAddress((ViewField) obj, i2);
            case 2:
                return onChangeDataGetFieldJavaLangStringComment((ViewField) obj, i2);
            case 3:
                return onChangeData((StoreCheckoutViewModel) obj, i2);
            case 4:
                return onChangeDataPrice((ViewField) obj, i2);
            case 5:
                return onChangeDataAddress((ViewField) obj, i2);
            default:
                return false;
        }
    }

    private boolean onChangeDataComment(ViewField viewField, int i) {
        if (i == 0) {
            synchronized (this) {
                this.mDirtyFlags |= 1;
            }
            return true;
        } else if (i == 88) {
            synchronized (this) {
                this.mDirtyFlags |= 64;
            }
            return true;
        } else if (i != 89) {
            return null;
        } else {
            synchronized (this) {
                this.mDirtyFlags |= 128;
            }
            return true;
        }
    }

    private boolean onChangeDataGetFieldJavaLangStringAddress(ViewField viewField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        return true;
    }

    private boolean onChangeDataGetFieldJavaLangStringComment(ViewField viewField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        return true;
    }

    private boolean onChangeData(StoreCheckoutViewModel storeCheckoutViewModel, int i) {
        if (i == 0) {
            synchronized (this) {
                this.mDirtyFlags |= 8;
            }
            return true;
        } else if (i == 3) {
            synchronized (this) {
                this.mDirtyFlags |= 32;
            }
            return true;
        } else if (i == 18) {
            synchronized (this) {
                this.mDirtyFlags |= 1;
            }
            return true;
        } else if (i != 64) {
            return null;
        } else {
            synchronized (this) {
                this.mDirtyFlags |= 16;
            }
            return true;
        }
    }

    private boolean onChangeDataPrice(ViewField viewField, int i) {
        if (i == 0) {
            synchronized (this) {
                this.mDirtyFlags |= 16;
            }
            return true;
        } else if (i != 89) {
            return null;
        } else {
            synchronized (this) {
                this.mDirtyFlags |= 256;
            }
            return true;
        }
    }

    private boolean onChangeDataAddress(ViewField viewField, int i) {
        if (i == 0) {
            synchronized (this) {
                this.mDirtyFlags |= 32;
            }
            return true;
        } else if (i == 88) {
            synchronized (this) {
                this.mDirtyFlags |= 512;
            }
            return true;
        } else if (i != 89) {
            return null;
        } else {
            synchronized (this) {
                this.mDirtyFlags |= PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID;
            }
            return true;
        }
    }

    protected void executeBindings() {
        Drawable drawableFromResource;
        CharSequence value;
        TextWatcher watcher;
        TextWatcher watcher2;
        CharSequence value2;
        CharSequence value3;
        Drawable drawable;
        ActivityShopOrderBinding activityShopOrderBinding = this;
        synchronized (this) {
            try {
                long j = activityShopOrderBinding.mDirtyFlags;
                activityShopOrderBinding.mDirtyFlags = 0;
            } catch (Throwable th) {
                while (true) {
                    Throwable th2 = th;
                }
            }
        }
        StoreCheckoutViewModel storeCheckoutViewModel = activityShopOrderBinding.mData;
        Drawable drawable2 = null;
        if ((j & 4095) != 0) {
            long j2;
            Object field;
            Object price;
            ViewField address;
            boolean valid;
            View view;
            int i = ((j & 2249) > 0 ? 1 : ((j & 2249) == 0 ? 0 : -1));
            int i2 = C0859R.drawable.underline_orange;
            if (i != 0) {
                ViewField comment = storeCheckoutViewModel != null ? storeCheckoutViewModel.getComment() : null;
                updateRegistration(0, comment);
                long j3 = j & 2121;
                if (j3 != 0) {
                    boolean valid2;
                    if (comment != null) {
                        valid2 = comment.getValid();
                    } else {
                        valid2 = false;
                    }
                    j2 = j3 != 0 ? valid2 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID : j | PlaybackStateCompat.ACTION_PREPARE : j;
                    drawableFromResource = valid2 ? getDrawableFromResource(activityShopOrderBinding.comment, C0859R.drawable.underline_orange) : getDrawableFromResource(activityShopOrderBinding.comment, C0859R.drawable.underline_gray_dc);
                    j = j2;
                } else {
                    drawableFromResource = null;
                }
                value = ((j & 2185) == 0 || comment == null) ? null : comment.getValue();
            } else {
                value = null;
                drawableFromResource = value;
            }
            if ((j & 2058) != 0) {
                field = storeCheckoutViewModel != null ? storeCheckoutViewModel.getField("address") : null;
                updateRegistration(1, field);
                if (field != null) {
                    watcher = field.getWatcher();
                    if ((j & 2060) != 0) {
                        field = storeCheckoutViewModel == null ? storeCheckoutViewModel.getField("comment") : null;
                        updateRegistration(2, field);
                        if (field != null) {
                            watcher2 = field.getWatcher();
                            if ((j & 2328) != 0) {
                                price = storeCheckoutViewModel == null ? storeCheckoutViewModel.getPrice() : null;
                                updateRegistration(4, price);
                                if (price != null) {
                                    value2 = price.getValue();
                                    if ((j & 3624) == 0) {
                                        address = storeCheckoutViewModel == null ? storeCheckoutViewModel.getAddress() : null;
                                        updateRegistration(5, address);
                                        value3 = ((j & 3112) != 0 || address == null) ? null : address.getValue();
                                        j2 = j & 2600;
                                        if (j2 != 0) {
                                            if (address == null) {
                                                valid = address.getValid();
                                            } else {
                                                valid = false;
                                            }
                                            if (j2 != 0) {
                                                j = valid ? j | PlaybackStateCompat.ACTION_PLAY_FROM_URI : j | PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM;
                                            }
                                            if (valid) {
                                                view = activityShopOrderBinding.address;
                                                i2 = C0859R.drawable.underline_gray_dc;
                                            } else {
                                                view = activityShopOrderBinding.address;
                                            }
                                            drawable2 = getDrawableFromResource(view, i2);
                                        }
                                        drawable = drawable2;
                                    } else {
                                        drawable = null;
                                        value3 = drawable;
                                    }
                                }
                            }
                            value2 = null;
                            if ((j & 3624) == 0) {
                                drawable = null;
                                value3 = drawable;
                            } else {
                                if (storeCheckoutViewModel == null) {
                                }
                                updateRegistration(5, address);
                                if ((j & 3112) != 0) {
                                }
                                j2 = j & 2600;
                                if (j2 != 0) {
                                    if (address == null) {
                                        valid = false;
                                    } else {
                                        valid = address.getValid();
                                    }
                                    if (j2 != 0) {
                                        if (valid) {
                                        }
                                        j = valid ? j | PlaybackStateCompat.ACTION_PLAY_FROM_URI : j | PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM;
                                    }
                                    if (valid) {
                                        view = activityShopOrderBinding.address;
                                        i2 = C0859R.drawable.underline_gray_dc;
                                    } else {
                                        view = activityShopOrderBinding.address;
                                    }
                                    drawable2 = getDrawableFromResource(view, i2);
                                }
                                drawable = drawable2;
                            }
                        }
                    }
                    watcher2 = null;
                    if ((j & 2328) != 0) {
                        if (storeCheckoutViewModel == null) {
                        }
                        updateRegistration(4, price);
                        if (price != null) {
                            value2 = price.getValue();
                            if ((j & 3624) == 0) {
                                if (storeCheckoutViewModel == null) {
                                }
                                updateRegistration(5, address);
                                if ((j & 3112) != 0) {
                                }
                                j2 = j & 2600;
                                if (j2 != 0) {
                                    if (address == null) {
                                        valid = address.getValid();
                                    } else {
                                        valid = false;
                                    }
                                    if (j2 != 0) {
                                        if (valid) {
                                        }
                                        j = valid ? j | PlaybackStateCompat.ACTION_PLAY_FROM_URI : j | PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM;
                                    }
                                    if (valid) {
                                        view = activityShopOrderBinding.address;
                                    } else {
                                        view = activityShopOrderBinding.address;
                                        i2 = C0859R.drawable.underline_gray_dc;
                                    }
                                    drawable2 = getDrawableFromResource(view, i2);
                                }
                                drawable = drawable2;
                            } else {
                                drawable = null;
                                value3 = drawable;
                            }
                        }
                    }
                    value2 = null;
                    if ((j & 3624) == 0) {
                        drawable = null;
                        value3 = drawable;
                    } else {
                        if (storeCheckoutViewModel == null) {
                        }
                        updateRegistration(5, address);
                        if ((j & 3112) != 0) {
                        }
                        j2 = j & 2600;
                        if (j2 != 0) {
                            if (address == null) {
                                valid = false;
                            } else {
                                valid = address.getValid();
                            }
                            if (j2 != 0) {
                                if (valid) {
                                }
                                j = valid ? j | PlaybackStateCompat.ACTION_PLAY_FROM_URI : j | PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM;
                            }
                            if (valid) {
                                view = activityShopOrderBinding.address;
                                i2 = C0859R.drawable.underline_gray_dc;
                            } else {
                                view = activityShopOrderBinding.address;
                            }
                            drawable2 = getDrawableFromResource(view, i2);
                        }
                        drawable = drawable2;
                    }
                }
            }
            watcher = null;
            if ((j & 2060) != 0) {
                if (storeCheckoutViewModel == null) {
                }
                updateRegistration(2, field);
                if (field != null) {
                    watcher2 = field.getWatcher();
                    if ((j & 2328) != 0) {
                        if (storeCheckoutViewModel == null) {
                        }
                        updateRegistration(4, price);
                        if (price != null) {
                            value2 = price.getValue();
                            if ((j & 3624) == 0) {
                                if (storeCheckoutViewModel == null) {
                                }
                                updateRegistration(5, address);
                                if ((j & 3112) != 0) {
                                }
                                j2 = j & 2600;
                                if (j2 != 0) {
                                    if (address == null) {
                                        valid = address.getValid();
                                    } else {
                                        valid = false;
                                    }
                                    if (j2 != 0) {
                                        if (valid) {
                                        }
                                        j = valid ? j | PlaybackStateCompat.ACTION_PLAY_FROM_URI : j | PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM;
                                    }
                                    if (valid) {
                                        view = activityShopOrderBinding.address;
                                    } else {
                                        view = activityShopOrderBinding.address;
                                        i2 = C0859R.drawable.underline_gray_dc;
                                    }
                                    drawable2 = getDrawableFromResource(view, i2);
                                }
                                drawable = drawable2;
                            } else {
                                drawable = null;
                                value3 = drawable;
                            }
                        }
                    }
                    value2 = null;
                    if ((j & 3624) == 0) {
                        drawable = null;
                        value3 = drawable;
                    } else {
                        if (storeCheckoutViewModel == null) {
                        }
                        updateRegistration(5, address);
                        if ((j & 3112) != 0) {
                        }
                        j2 = j & 2600;
                        if (j2 != 0) {
                            if (address == null) {
                                valid = false;
                            } else {
                                valid = address.getValid();
                            }
                            if (j2 != 0) {
                                if (valid) {
                                }
                                j = valid ? j | PlaybackStateCompat.ACTION_PLAY_FROM_URI : j | PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM;
                            }
                            if (valid) {
                                view = activityShopOrderBinding.address;
                                i2 = C0859R.drawable.underline_gray_dc;
                            } else {
                                view = activityShopOrderBinding.address;
                            }
                            drawable2 = getDrawableFromResource(view, i2);
                        }
                        drawable = drawable2;
                    }
                }
            }
            watcher2 = null;
            if ((j & 2328) != 0) {
                if (storeCheckoutViewModel == null) {
                }
                updateRegistration(4, price);
                if (price != null) {
                    value2 = price.getValue();
                    if ((j & 3624) == 0) {
                        if (storeCheckoutViewModel == null) {
                        }
                        updateRegistration(5, address);
                        if ((j & 3112) != 0) {
                        }
                        j2 = j & 2600;
                        if (j2 != 0) {
                            if (address == null) {
                                valid = address.getValid();
                            } else {
                                valid = false;
                            }
                            if (j2 != 0) {
                                if (valid) {
                                }
                                j = valid ? j | PlaybackStateCompat.ACTION_PLAY_FROM_URI : j | PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM;
                            }
                            if (valid) {
                                view = activityShopOrderBinding.address;
                            } else {
                                view = activityShopOrderBinding.address;
                                i2 = C0859R.drawable.underline_gray_dc;
                            }
                            drawable2 = getDrawableFromResource(view, i2);
                        }
                        drawable = drawable2;
                    } else {
                        drawable = null;
                        value3 = drawable;
                    }
                }
            }
            value2 = null;
            if ((j & 3624) == 0) {
                drawable = null;
                value3 = drawable;
            } else {
                if (storeCheckoutViewModel == null) {
                }
                updateRegistration(5, address);
                if ((j & 3112) != 0) {
                }
                j2 = j & 2600;
                if (j2 != 0) {
                    if (address == null) {
                        valid = false;
                    } else {
                        valid = address.getValid();
                    }
                    if (j2 != 0) {
                        if (valid) {
                        }
                        j = valid ? j | PlaybackStateCompat.ACTION_PLAY_FROM_URI : j | PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM;
                    }
                    if (valid) {
                        view = activityShopOrderBinding.address;
                        i2 = C0859R.drawable.underline_gray_dc;
                    } else {
                        view = activityShopOrderBinding.address;
                    }
                    drawable2 = getDrawableFromResource(view, i2);
                }
                drawable = drawable2;
            }
        } else {
            drawable = null;
            value = drawable;
            watcher = value;
            watcher2 = watcher;
            drawableFromResource = watcher2;
            value2 = drawableFromResource;
            value3 = value2;
        }
        if ((j & 2058) != 0) {
            activityShopOrderBinding.address.addTextChangedListener(watcher);
        }
        if ((j & 2600) != 0) {
            ViewBindingAdapter.setBackground(activityShopOrderBinding.address, drawable);
        }
        if ((j & 3112) != 0) {
            TextViewBindingAdapter.setText(activityShopOrderBinding.address, value3);
        }
        if ((j & 2060) != 0) {
            activityShopOrderBinding.comment.addTextChangedListener(watcher2);
        }
        if ((j & 2121) != 0) {
            ViewBindingAdapter.setBackground(activityShopOrderBinding.comment, drawableFromResource);
        }
        if ((j & 2185) != 0) {
            TextViewBindingAdapter.setText(activityShopOrderBinding.comment, value);
        }
        if ((j & 2328) != 0) {
            TextViewBindingAdapter.setText(activityShopOrderBinding.price, value2);
        }
    }

    public static ActivityShopOrderBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityShopOrderBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (ActivityShopOrderBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.activity_shop_order, viewGroup, z, dataBindingComponent);
    }

    public static ActivityShopOrderBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityShopOrderBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.activity_shop_order, null, false), dataBindingComponent);
    }

    public static ActivityShopOrderBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityShopOrderBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/activity_shop_order_0".equals(view.getTag())) {
            return new ActivityShopOrderBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
