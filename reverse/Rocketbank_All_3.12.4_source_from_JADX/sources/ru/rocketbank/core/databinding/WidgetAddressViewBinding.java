package ru.rocketbank.core.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.Observable;
import android.databinding.ObservableBoolean;
import android.databinding.ViewDataBinding;
import android.databinding.adapters.ViewBindingAdapter;
import android.databinding.generated.callback.OnClickListener.Listener;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.support.v4.media.session.PlaybackStateCompat;
import android.support.v7.widget.CardView;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import ru.rocketbank.core.data.binding.ButtonAddressListener;
import ru.rocketbank.core.data.binding.RocketAddressViewData;
import ru.rocketbank.core.widgets.RocketEditText;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.core.widgets.SquareLayout;
import ru.rocketbank.r2d2.C0859R;

public final class WidgetAddressViewBinding extends ViewDataBinding implements Listener {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final RocketEditText addresText;
    public final ImageView back;
    public final SquareLayout backLayout;
    public final RocketTextView errorDescription;
    private final OnClickListener mCallback30;
    private final OnClickListener mCallback31;
    private RocketAddressViewData mData;
    private long mDirtyFlags = -1;
    private ButtonAddressListener mListener;
    private final LinearLayout mboundView0;
    private final CardView mboundView6;
    public final ImageView next;
    public final SquareLayout nextLayout;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.error_description, 7);
    }

    public WidgetAddressViewBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 8);
        dataBindingComponent = ViewDataBinding.mapBindings(dataBindingComponent, view, 8, null, sViewsWithIds);
        this.addresText = (RocketEditText) dataBindingComponent[3];
        this.addresText.setTag(null);
        this.back = (ImageView) dataBindingComponent[2];
        this.back.setTag(null);
        this.backLayout = (SquareLayout) dataBindingComponent[1];
        this.backLayout.setTag(null);
        this.errorDescription = (RocketTextView) dataBindingComponent[7];
        this.mboundView0 = (LinearLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.mboundView6 = (CardView) dataBindingComponent[6];
        this.mboundView6.setTag(null);
        this.next = (ImageView) dataBindingComponent[5];
        this.next.setTag(null);
        this.nextLayout = (SquareLayout) dataBindingComponent[4];
        this.nextLayout.setTag(null);
        setRootTag(view);
        this.mCallback30 = new android.databinding.generated.callback.OnClickListener(this, 1);
        this.mCallback31 = new android.databinding.generated.callback.OnClickListener(this, 2);
        invalidateAll();
    }

    public final void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID;
        }
        requestRebind();
    }

    public final boolean hasPendingBindings() {
        synchronized (this) {
            if (this.mDirtyFlags != 0) {
                return true;
            }
            return false;
        }
    }

    public final boolean setVariable(int i, Object obj) {
        if (55 == i) {
            this.mListener = (ButtonAddressListener) obj;
            synchronized (this) {
                this.mDirtyFlags |= 256;
            }
            notifyPropertyChanged(55);
            super.requestRebind();
        } else if (24 != i) {
            return false;
        } else {
            this.mData = (RocketAddressViewData) obj;
            synchronized (this) {
                this.mDirtyFlags |= 512;
            }
            notifyPropertyChanged(24);
            super.requestRebind();
        }
        return true;
    }

    protected final boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeDataNextButtonColor$69e17aa2(i2);
            case 1:
                return onChangeDataBackButtonEnabled$3134944c(i2);
            case 2:
                return onChangeDataNextButtonEnabled$3134944c(i2);
            case 3:
                return onChangeDataAddressTextHint$69e17aa2(i2);
            case 4:
                return onChangeDataBackButtonVisible$3134944c(i2);
            case 5:
                return onChangeDataBackButtonColor$69e17aa2(i2);
            case 6:
                return onChangeDataErrorVisible$3134944c(i2);
            case 7:
                return onChangeDataNextButtonVisible$3134944c(i2);
            default:
                return false;
        }
    }

    private boolean onChangeDataNextButtonColor$69e17aa2(int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    private boolean onChangeDataBackButtonEnabled$3134944c(int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        return true;
    }

    private boolean onChangeDataNextButtonEnabled$3134944c(int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        return true;
    }

    private boolean onChangeDataAddressTextHint$69e17aa2(int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        return true;
    }

    private boolean onChangeDataBackButtonVisible$3134944c(int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.mDirtyFlags |= 16;
        }
        return true;
    }

    private boolean onChangeDataBackButtonColor$69e17aa2(int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.mDirtyFlags |= 32;
        }
        return true;
    }

    private boolean onChangeDataErrorVisible$3134944c(int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.mDirtyFlags |= 64;
        }
        return true;
    }

    private boolean onChangeDataNextButtonVisible$3134944c(int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.mDirtyFlags |= 128;
        }
        return true;
    }

    protected final void executeBindings() {
        Drawable drawable;
        boolean z;
        boolean z2;
        CharSequence charSequence;
        int i;
        Drawable drawable2;
        int i2;
        int i3;
        WidgetAddressViewBinding widgetAddressViewBinding = this;
        synchronized (this) {
            try {
                long j = widgetAddressViewBinding.mDirtyFlags;
                widgetAddressViewBinding.mDirtyFlags = 0;
            } catch (Throwable th) {
                while (true) {
                    Throwable th2 = th;
                }
            }
        }
        RocketAddressViewData rocketAddressViewData = widgetAddressViewBinding.mData;
        ObservableBoolean observableBoolean = null;
        if ((j & 1791) != 0) {
            Object backButtonEnabled;
            Object addressTextHint;
            long j2;
            Object backButtonVisible;
            boolean z3;
            Object backButtonColor;
            long j3;
            Object errorVisible;
            boolean z4;
            ObservableBoolean observableBoolean2;
            boolean z5;
            if ((j & 1537) != 0) {
                Object nextButtonColor = rocketAddressViewData != null ? rocketAddressViewData.getNextButtonColor() : null;
                updateRegistration(0, (Observable) nextButtonColor);
                if (nextButtonColor != null) {
                    drawable = (ColorDrawable) nextButtonColor.get();
                    if ((j & 1538) != 0) {
                        backButtonEnabled = rocketAddressViewData == null ? rocketAddressViewData.getBackButtonEnabled() : null;
                        updateRegistration(1, (Observable) backButtonEnabled);
                        if (backButtonEnabled != null) {
                            z = backButtonEnabled.get();
                            if ((j & 1540) != 0) {
                                backButtonEnabled = rocketAddressViewData == null ? rocketAddressViewData.getNextButtonEnabled() : null;
                                updateRegistration(2, (Observable) backButtonEnabled);
                                if (backButtonEnabled != null) {
                                    z2 = backButtonEnabled.get();
                                    if ((j & 1544) != 0) {
                                        addressTextHint = rocketAddressViewData == null ? rocketAddressViewData.getAddressTextHint() : null;
                                        updateRegistration(3, (Observable) addressTextHint);
                                        if (addressTextHint != null) {
                                            charSequence = (String) addressTextHint.get();
                                            j2 = j & 1552;
                                            if (j2 != 0) {
                                                backButtonVisible = rocketAddressViewData == null ? rocketAddressViewData.getBackButtonVisible() : null;
                                                updateRegistration(4, (Observable) backButtonVisible);
                                                if (backButtonVisible == null) {
                                                    z3 = backButtonVisible.get();
                                                } else {
                                                    z3 = false;
                                                }
                                                if (j2 != 0) {
                                                    j = z3 ? j | PlaybackStateCompat.ACTION_PREPARE : j | PlaybackStateCompat.ACTION_PLAY_FROM_URI;
                                                }
                                                if (!z3) {
                                                    i = 8;
                                                    if ((j & 1568) != 0) {
                                                        backButtonColor = rocketAddressViewData == null ? rocketAddressViewData.getBackButtonColor() : null;
                                                        updateRegistration(5, (Observable) backButtonColor);
                                                        if (backButtonColor != null) {
                                                            drawable2 = (ColorDrawable) backButtonColor.get();
                                                            j3 = j & 1600;
                                                            if (j3 == 0) {
                                                                errorVisible = rocketAddressViewData == null ? rocketAddressViewData.getErrorVisible() : null;
                                                                updateRegistration(6, (Observable) errorVisible);
                                                                if (errorVisible == null) {
                                                                    z4 = errorVisible.get();
                                                                } else {
                                                                    z4 = false;
                                                                }
                                                                j3 = j3 == 0 ? z4 ? j | PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM : j | PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH : j;
                                                                i2 = z4 ? 0 : 8;
                                                                j = j3;
                                                            } else {
                                                                i2 = 0;
                                                            }
                                                            j2 = j & 1664;
                                                            if (j2 == 0) {
                                                                if (rocketAddressViewData != null) {
                                                                    observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                                                }
                                                                observableBoolean2 = observableBoolean;
                                                                updateRegistration(7, (Observable) observableBoolean2);
                                                                if (observableBoolean2 == null) {
                                                                    z5 = observableBoolean2.get();
                                                                } else {
                                                                    z5 = false;
                                                                }
                                                                if (j2 != 0) {
                                                                    j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                                                }
                                                                i3 = z5 ? 0 : 8;
                                                            } else {
                                                                i3 = 0;
                                                            }
                                                        }
                                                    }
                                                    drawable2 = null;
                                                    j3 = j & 1600;
                                                    if (j3 == 0) {
                                                        i2 = 0;
                                                    } else {
                                                        if (rocketAddressViewData == null) {
                                                        }
                                                        updateRegistration(6, (Observable) errorVisible);
                                                        if (errorVisible == null) {
                                                            z4 = false;
                                                        } else {
                                                            z4 = errorVisible.get();
                                                        }
                                                        if (j3 == 0) {
                                                        }
                                                        if (z4) {
                                                        }
                                                        i2 = z4 ? 0 : 8;
                                                        j = j3;
                                                    }
                                                    j2 = j & 1664;
                                                    if (j2 == 0) {
                                                        i3 = 0;
                                                    } else {
                                                        if (rocketAddressViewData != null) {
                                                            observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                                        }
                                                        observableBoolean2 = observableBoolean;
                                                        updateRegistration(7, (Observable) observableBoolean2);
                                                        if (observableBoolean2 == null) {
                                                            z5 = false;
                                                        } else {
                                                            z5 = observableBoolean2.get();
                                                        }
                                                        if (j2 != 0) {
                                                            if (z5) {
                                                            }
                                                            j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                                        }
                                                        if (z5) {
                                                        }
                                                        i3 = z5 ? 0 : 8;
                                                    }
                                                }
                                            }
                                            i = 0;
                                            if ((j & 1568) != 0) {
                                                if (rocketAddressViewData == null) {
                                                }
                                                updateRegistration(5, (Observable) backButtonColor);
                                                if (backButtonColor != null) {
                                                    drawable2 = (ColorDrawable) backButtonColor.get();
                                                    j3 = j & 1600;
                                                    if (j3 == 0) {
                                                        if (rocketAddressViewData == null) {
                                                        }
                                                        updateRegistration(6, (Observable) errorVisible);
                                                        if (errorVisible == null) {
                                                            z4 = errorVisible.get();
                                                        } else {
                                                            z4 = false;
                                                        }
                                                        if (j3 == 0) {
                                                            if (z4) {
                                                            }
                                                        }
                                                        if (z4) {
                                                        }
                                                        i2 = z4 ? 0 : 8;
                                                        j = j3;
                                                    } else {
                                                        i2 = 0;
                                                    }
                                                    j2 = j & 1664;
                                                    if (j2 == 0) {
                                                        if (rocketAddressViewData != null) {
                                                            observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                                        }
                                                        observableBoolean2 = observableBoolean;
                                                        updateRegistration(7, (Observable) observableBoolean2);
                                                        if (observableBoolean2 == null) {
                                                            z5 = observableBoolean2.get();
                                                        } else {
                                                            z5 = false;
                                                        }
                                                        if (j2 != 0) {
                                                            if (z5) {
                                                            }
                                                            j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                                        }
                                                        if (z5) {
                                                        }
                                                        i3 = z5 ? 0 : 8;
                                                    } else {
                                                        i3 = 0;
                                                    }
                                                }
                                            }
                                            drawable2 = null;
                                            j3 = j & 1600;
                                            if (j3 == 0) {
                                                i2 = 0;
                                            } else {
                                                if (rocketAddressViewData == null) {
                                                }
                                                updateRegistration(6, (Observable) errorVisible);
                                                if (errorVisible == null) {
                                                    z4 = false;
                                                } else {
                                                    z4 = errorVisible.get();
                                                }
                                                if (j3 == 0) {
                                                }
                                                if (z4) {
                                                }
                                                i2 = z4 ? 0 : 8;
                                                j = j3;
                                            }
                                            j2 = j & 1664;
                                            if (j2 == 0) {
                                                i3 = 0;
                                            } else {
                                                if (rocketAddressViewData != null) {
                                                    observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                                }
                                                observableBoolean2 = observableBoolean;
                                                updateRegistration(7, (Observable) observableBoolean2);
                                                if (observableBoolean2 == null) {
                                                    z5 = false;
                                                } else {
                                                    z5 = observableBoolean2.get();
                                                }
                                                if (j2 != 0) {
                                                    if (z5) {
                                                    }
                                                    j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                                }
                                                if (z5) {
                                                }
                                                i3 = z5 ? 0 : 8;
                                            }
                                        }
                                    }
                                    charSequence = null;
                                    j2 = j & 1552;
                                    if (j2 != 0) {
                                        if (rocketAddressViewData == null) {
                                        }
                                        updateRegistration(4, (Observable) backButtonVisible);
                                        if (backButtonVisible == null) {
                                            z3 = false;
                                        } else {
                                            z3 = backButtonVisible.get();
                                        }
                                        if (j2 != 0) {
                                            if (z3) {
                                            }
                                            j = z3 ? j | PlaybackStateCompat.ACTION_PREPARE : j | PlaybackStateCompat.ACTION_PLAY_FROM_URI;
                                        }
                                        if (!z3) {
                                            i = 8;
                                            if ((j & 1568) != 0) {
                                                if (rocketAddressViewData == null) {
                                                }
                                                updateRegistration(5, (Observable) backButtonColor);
                                                if (backButtonColor != null) {
                                                    drawable2 = (ColorDrawable) backButtonColor.get();
                                                    j3 = j & 1600;
                                                    if (j3 == 0) {
                                                        if (rocketAddressViewData == null) {
                                                        }
                                                        updateRegistration(6, (Observable) errorVisible);
                                                        if (errorVisible == null) {
                                                            z4 = errorVisible.get();
                                                        } else {
                                                            z4 = false;
                                                        }
                                                        if (j3 == 0) {
                                                            if (z4) {
                                                            }
                                                        }
                                                        if (z4) {
                                                        }
                                                        i2 = z4 ? 0 : 8;
                                                        j = j3;
                                                    } else {
                                                        i2 = 0;
                                                    }
                                                    j2 = j & 1664;
                                                    if (j2 == 0) {
                                                        if (rocketAddressViewData != null) {
                                                            observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                                        }
                                                        observableBoolean2 = observableBoolean;
                                                        updateRegistration(7, (Observable) observableBoolean2);
                                                        if (observableBoolean2 == null) {
                                                            z5 = observableBoolean2.get();
                                                        } else {
                                                            z5 = false;
                                                        }
                                                        if (j2 != 0) {
                                                            if (z5) {
                                                            }
                                                            j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                                        }
                                                        if (z5) {
                                                        }
                                                        i3 = z5 ? 0 : 8;
                                                    } else {
                                                        i3 = 0;
                                                    }
                                                }
                                            }
                                            drawable2 = null;
                                            j3 = j & 1600;
                                            if (j3 == 0) {
                                                i2 = 0;
                                            } else {
                                                if (rocketAddressViewData == null) {
                                                }
                                                updateRegistration(6, (Observable) errorVisible);
                                                if (errorVisible == null) {
                                                    z4 = false;
                                                } else {
                                                    z4 = errorVisible.get();
                                                }
                                                if (j3 == 0) {
                                                }
                                                if (z4) {
                                                }
                                                i2 = z4 ? 0 : 8;
                                                j = j3;
                                            }
                                            j2 = j & 1664;
                                            if (j2 == 0) {
                                                i3 = 0;
                                            } else {
                                                if (rocketAddressViewData != null) {
                                                    observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                                }
                                                observableBoolean2 = observableBoolean;
                                                updateRegistration(7, (Observable) observableBoolean2);
                                                if (observableBoolean2 == null) {
                                                    z5 = false;
                                                } else {
                                                    z5 = observableBoolean2.get();
                                                }
                                                if (j2 != 0) {
                                                    if (z5) {
                                                    }
                                                    j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                                }
                                                if (z5) {
                                                }
                                                i3 = z5 ? 0 : 8;
                                            }
                                        }
                                    }
                                    i = 0;
                                    if ((j & 1568) != 0) {
                                        if (rocketAddressViewData == null) {
                                        }
                                        updateRegistration(5, (Observable) backButtonColor);
                                        if (backButtonColor != null) {
                                            drawable2 = (ColorDrawable) backButtonColor.get();
                                            j3 = j & 1600;
                                            if (j3 == 0) {
                                                if (rocketAddressViewData == null) {
                                                }
                                                updateRegistration(6, (Observable) errorVisible);
                                                if (errorVisible == null) {
                                                    z4 = errorVisible.get();
                                                } else {
                                                    z4 = false;
                                                }
                                                if (j3 == 0) {
                                                    if (z4) {
                                                    }
                                                }
                                                if (z4) {
                                                }
                                                i2 = z4 ? 0 : 8;
                                                j = j3;
                                            } else {
                                                i2 = 0;
                                            }
                                            j2 = j & 1664;
                                            if (j2 == 0) {
                                                if (rocketAddressViewData != null) {
                                                    observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                                }
                                                observableBoolean2 = observableBoolean;
                                                updateRegistration(7, (Observable) observableBoolean2);
                                                if (observableBoolean2 == null) {
                                                    z5 = observableBoolean2.get();
                                                } else {
                                                    z5 = false;
                                                }
                                                if (j2 != 0) {
                                                    if (z5) {
                                                    }
                                                    j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                                }
                                                if (z5) {
                                                }
                                                i3 = z5 ? 0 : 8;
                                            } else {
                                                i3 = 0;
                                            }
                                        }
                                    }
                                    drawable2 = null;
                                    j3 = j & 1600;
                                    if (j3 == 0) {
                                        i2 = 0;
                                    } else {
                                        if (rocketAddressViewData == null) {
                                        }
                                        updateRegistration(6, (Observable) errorVisible);
                                        if (errorVisible == null) {
                                            z4 = false;
                                        } else {
                                            z4 = errorVisible.get();
                                        }
                                        if (j3 == 0) {
                                        }
                                        if (z4) {
                                        }
                                        i2 = z4 ? 0 : 8;
                                        j = j3;
                                    }
                                    j2 = j & 1664;
                                    if (j2 == 0) {
                                        i3 = 0;
                                    } else {
                                        if (rocketAddressViewData != null) {
                                            observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                        }
                                        observableBoolean2 = observableBoolean;
                                        updateRegistration(7, (Observable) observableBoolean2);
                                        if (observableBoolean2 == null) {
                                            z5 = false;
                                        } else {
                                            z5 = observableBoolean2.get();
                                        }
                                        if (j2 != 0) {
                                            if (z5) {
                                            }
                                            j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                        }
                                        if (z5) {
                                        }
                                        i3 = z5 ? 0 : 8;
                                    }
                                }
                            }
                            z2 = false;
                            if ((j & 1544) != 0) {
                                if (rocketAddressViewData == null) {
                                }
                                updateRegistration(3, (Observable) addressTextHint);
                                if (addressTextHint != null) {
                                    charSequence = (String) addressTextHint.get();
                                    j2 = j & 1552;
                                    if (j2 != 0) {
                                        if (rocketAddressViewData == null) {
                                        }
                                        updateRegistration(4, (Observable) backButtonVisible);
                                        if (backButtonVisible == null) {
                                            z3 = backButtonVisible.get();
                                        } else {
                                            z3 = false;
                                        }
                                        if (j2 != 0) {
                                            if (z3) {
                                            }
                                            j = z3 ? j | PlaybackStateCompat.ACTION_PREPARE : j | PlaybackStateCompat.ACTION_PLAY_FROM_URI;
                                        }
                                        if (!z3) {
                                            i = 8;
                                            if ((j & 1568) != 0) {
                                                if (rocketAddressViewData == null) {
                                                }
                                                updateRegistration(5, (Observable) backButtonColor);
                                                if (backButtonColor != null) {
                                                    drawable2 = (ColorDrawable) backButtonColor.get();
                                                    j3 = j & 1600;
                                                    if (j3 == 0) {
                                                        if (rocketAddressViewData == null) {
                                                        }
                                                        updateRegistration(6, (Observable) errorVisible);
                                                        if (errorVisible == null) {
                                                            z4 = errorVisible.get();
                                                        } else {
                                                            z4 = false;
                                                        }
                                                        if (j3 == 0) {
                                                            if (z4) {
                                                            }
                                                        }
                                                        if (z4) {
                                                        }
                                                        i2 = z4 ? 0 : 8;
                                                        j = j3;
                                                    } else {
                                                        i2 = 0;
                                                    }
                                                    j2 = j & 1664;
                                                    if (j2 == 0) {
                                                        if (rocketAddressViewData != null) {
                                                            observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                                        }
                                                        observableBoolean2 = observableBoolean;
                                                        updateRegistration(7, (Observable) observableBoolean2);
                                                        if (observableBoolean2 == null) {
                                                            z5 = observableBoolean2.get();
                                                        } else {
                                                            z5 = false;
                                                        }
                                                        if (j2 != 0) {
                                                            if (z5) {
                                                            }
                                                            j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                                        }
                                                        if (z5) {
                                                        }
                                                        i3 = z5 ? 0 : 8;
                                                    } else {
                                                        i3 = 0;
                                                    }
                                                }
                                            }
                                            drawable2 = null;
                                            j3 = j & 1600;
                                            if (j3 == 0) {
                                                i2 = 0;
                                            } else {
                                                if (rocketAddressViewData == null) {
                                                }
                                                updateRegistration(6, (Observable) errorVisible);
                                                if (errorVisible == null) {
                                                    z4 = false;
                                                } else {
                                                    z4 = errorVisible.get();
                                                }
                                                if (j3 == 0) {
                                                }
                                                if (z4) {
                                                }
                                                i2 = z4 ? 0 : 8;
                                                j = j3;
                                            }
                                            j2 = j & 1664;
                                            if (j2 == 0) {
                                                i3 = 0;
                                            } else {
                                                if (rocketAddressViewData != null) {
                                                    observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                                }
                                                observableBoolean2 = observableBoolean;
                                                updateRegistration(7, (Observable) observableBoolean2);
                                                if (observableBoolean2 == null) {
                                                    z5 = false;
                                                } else {
                                                    z5 = observableBoolean2.get();
                                                }
                                                if (j2 != 0) {
                                                    if (z5) {
                                                    }
                                                    j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                                }
                                                if (z5) {
                                                }
                                                i3 = z5 ? 0 : 8;
                                            }
                                        }
                                    }
                                    i = 0;
                                    if ((j & 1568) != 0) {
                                        if (rocketAddressViewData == null) {
                                        }
                                        updateRegistration(5, (Observable) backButtonColor);
                                        if (backButtonColor != null) {
                                            drawable2 = (ColorDrawable) backButtonColor.get();
                                            j3 = j & 1600;
                                            if (j3 == 0) {
                                                if (rocketAddressViewData == null) {
                                                }
                                                updateRegistration(6, (Observable) errorVisible);
                                                if (errorVisible == null) {
                                                    z4 = errorVisible.get();
                                                } else {
                                                    z4 = false;
                                                }
                                                if (j3 == 0) {
                                                    if (z4) {
                                                    }
                                                }
                                                if (z4) {
                                                }
                                                i2 = z4 ? 0 : 8;
                                                j = j3;
                                            } else {
                                                i2 = 0;
                                            }
                                            j2 = j & 1664;
                                            if (j2 == 0) {
                                                if (rocketAddressViewData != null) {
                                                    observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                                }
                                                observableBoolean2 = observableBoolean;
                                                updateRegistration(7, (Observable) observableBoolean2);
                                                if (observableBoolean2 == null) {
                                                    z5 = observableBoolean2.get();
                                                } else {
                                                    z5 = false;
                                                }
                                                if (j2 != 0) {
                                                    if (z5) {
                                                    }
                                                    j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                                }
                                                if (z5) {
                                                }
                                                i3 = z5 ? 0 : 8;
                                            } else {
                                                i3 = 0;
                                            }
                                        }
                                    }
                                    drawable2 = null;
                                    j3 = j & 1600;
                                    if (j3 == 0) {
                                        i2 = 0;
                                    } else {
                                        if (rocketAddressViewData == null) {
                                        }
                                        updateRegistration(6, (Observable) errorVisible);
                                        if (errorVisible == null) {
                                            z4 = false;
                                        } else {
                                            z4 = errorVisible.get();
                                        }
                                        if (j3 == 0) {
                                        }
                                        if (z4) {
                                        }
                                        i2 = z4 ? 0 : 8;
                                        j = j3;
                                    }
                                    j2 = j & 1664;
                                    if (j2 == 0) {
                                        i3 = 0;
                                    } else {
                                        if (rocketAddressViewData != null) {
                                            observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                        }
                                        observableBoolean2 = observableBoolean;
                                        updateRegistration(7, (Observable) observableBoolean2);
                                        if (observableBoolean2 == null) {
                                            z5 = false;
                                        } else {
                                            z5 = observableBoolean2.get();
                                        }
                                        if (j2 != 0) {
                                            if (z5) {
                                            }
                                            j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                        }
                                        if (z5) {
                                        }
                                        i3 = z5 ? 0 : 8;
                                    }
                                }
                            }
                            charSequence = null;
                            j2 = j & 1552;
                            if (j2 != 0) {
                                if (rocketAddressViewData == null) {
                                }
                                updateRegistration(4, (Observable) backButtonVisible);
                                if (backButtonVisible == null) {
                                    z3 = false;
                                } else {
                                    z3 = backButtonVisible.get();
                                }
                                if (j2 != 0) {
                                    if (z3) {
                                    }
                                    j = z3 ? j | PlaybackStateCompat.ACTION_PREPARE : j | PlaybackStateCompat.ACTION_PLAY_FROM_URI;
                                }
                                if (!z3) {
                                    i = 8;
                                    if ((j & 1568) != 0) {
                                        if (rocketAddressViewData == null) {
                                        }
                                        updateRegistration(5, (Observable) backButtonColor);
                                        if (backButtonColor != null) {
                                            drawable2 = (ColorDrawable) backButtonColor.get();
                                            j3 = j & 1600;
                                            if (j3 == 0) {
                                                if (rocketAddressViewData == null) {
                                                }
                                                updateRegistration(6, (Observable) errorVisible);
                                                if (errorVisible == null) {
                                                    z4 = errorVisible.get();
                                                } else {
                                                    z4 = false;
                                                }
                                                if (j3 == 0) {
                                                    if (z4) {
                                                    }
                                                }
                                                if (z4) {
                                                }
                                                i2 = z4 ? 0 : 8;
                                                j = j3;
                                            } else {
                                                i2 = 0;
                                            }
                                            j2 = j & 1664;
                                            if (j2 == 0) {
                                                if (rocketAddressViewData != null) {
                                                    observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                                }
                                                observableBoolean2 = observableBoolean;
                                                updateRegistration(7, (Observable) observableBoolean2);
                                                if (observableBoolean2 == null) {
                                                    z5 = observableBoolean2.get();
                                                } else {
                                                    z5 = false;
                                                }
                                                if (j2 != 0) {
                                                    if (z5) {
                                                    }
                                                    j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                                }
                                                if (z5) {
                                                }
                                                i3 = z5 ? 0 : 8;
                                            } else {
                                                i3 = 0;
                                            }
                                        }
                                    }
                                    drawable2 = null;
                                    j3 = j & 1600;
                                    if (j3 == 0) {
                                        i2 = 0;
                                    } else {
                                        if (rocketAddressViewData == null) {
                                        }
                                        updateRegistration(6, (Observable) errorVisible);
                                        if (errorVisible == null) {
                                            z4 = false;
                                        } else {
                                            z4 = errorVisible.get();
                                        }
                                        if (j3 == 0) {
                                        }
                                        if (z4) {
                                        }
                                        i2 = z4 ? 0 : 8;
                                        j = j3;
                                    }
                                    j2 = j & 1664;
                                    if (j2 == 0) {
                                        i3 = 0;
                                    } else {
                                        if (rocketAddressViewData != null) {
                                            observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                        }
                                        observableBoolean2 = observableBoolean;
                                        updateRegistration(7, (Observable) observableBoolean2);
                                        if (observableBoolean2 == null) {
                                            z5 = false;
                                        } else {
                                            z5 = observableBoolean2.get();
                                        }
                                        if (j2 != 0) {
                                            if (z5) {
                                            }
                                            j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                        }
                                        if (z5) {
                                        }
                                        i3 = z5 ? 0 : 8;
                                    }
                                }
                            }
                            i = 0;
                            if ((j & 1568) != 0) {
                                if (rocketAddressViewData == null) {
                                }
                                updateRegistration(5, (Observable) backButtonColor);
                                if (backButtonColor != null) {
                                    drawable2 = (ColorDrawable) backButtonColor.get();
                                    j3 = j & 1600;
                                    if (j3 == 0) {
                                        if (rocketAddressViewData == null) {
                                        }
                                        updateRegistration(6, (Observable) errorVisible);
                                        if (errorVisible == null) {
                                            z4 = errorVisible.get();
                                        } else {
                                            z4 = false;
                                        }
                                        if (j3 == 0) {
                                            if (z4) {
                                            }
                                        }
                                        if (z4) {
                                        }
                                        i2 = z4 ? 0 : 8;
                                        j = j3;
                                    } else {
                                        i2 = 0;
                                    }
                                    j2 = j & 1664;
                                    if (j2 == 0) {
                                        if (rocketAddressViewData != null) {
                                            observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                        }
                                        observableBoolean2 = observableBoolean;
                                        updateRegistration(7, (Observable) observableBoolean2);
                                        if (observableBoolean2 == null) {
                                            z5 = observableBoolean2.get();
                                        } else {
                                            z5 = false;
                                        }
                                        if (j2 != 0) {
                                            if (z5) {
                                            }
                                            j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                        }
                                        if (z5) {
                                        }
                                        i3 = z5 ? 0 : 8;
                                    } else {
                                        i3 = 0;
                                    }
                                }
                            }
                            drawable2 = null;
                            j3 = j & 1600;
                            if (j3 == 0) {
                                i2 = 0;
                            } else {
                                if (rocketAddressViewData == null) {
                                }
                                updateRegistration(6, (Observable) errorVisible);
                                if (errorVisible == null) {
                                    z4 = false;
                                } else {
                                    z4 = errorVisible.get();
                                }
                                if (j3 == 0) {
                                }
                                if (z4) {
                                }
                                i2 = z4 ? 0 : 8;
                                j = j3;
                            }
                            j2 = j & 1664;
                            if (j2 == 0) {
                                i3 = 0;
                            } else {
                                if (rocketAddressViewData != null) {
                                    observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                }
                                observableBoolean2 = observableBoolean;
                                updateRegistration(7, (Observable) observableBoolean2);
                                if (observableBoolean2 == null) {
                                    z5 = false;
                                } else {
                                    z5 = observableBoolean2.get();
                                }
                                if (j2 != 0) {
                                    if (z5) {
                                    }
                                    j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                }
                                if (z5) {
                                }
                                i3 = z5 ? 0 : 8;
                            }
                        }
                    }
                    z = false;
                    if ((j & 1540) != 0) {
                        if (rocketAddressViewData == null) {
                        }
                        updateRegistration(2, (Observable) backButtonEnabled);
                        if (backButtonEnabled != null) {
                            z2 = backButtonEnabled.get();
                            if ((j & 1544) != 0) {
                                if (rocketAddressViewData == null) {
                                }
                                updateRegistration(3, (Observable) addressTextHint);
                                if (addressTextHint != null) {
                                    charSequence = (String) addressTextHint.get();
                                    j2 = j & 1552;
                                    if (j2 != 0) {
                                        if (rocketAddressViewData == null) {
                                        }
                                        updateRegistration(4, (Observable) backButtonVisible);
                                        if (backButtonVisible == null) {
                                            z3 = backButtonVisible.get();
                                        } else {
                                            z3 = false;
                                        }
                                        if (j2 != 0) {
                                            if (z3) {
                                            }
                                            j = z3 ? j | PlaybackStateCompat.ACTION_PREPARE : j | PlaybackStateCompat.ACTION_PLAY_FROM_URI;
                                        }
                                        if (!z3) {
                                            i = 8;
                                            if ((j & 1568) != 0) {
                                                if (rocketAddressViewData == null) {
                                                }
                                                updateRegistration(5, (Observable) backButtonColor);
                                                if (backButtonColor != null) {
                                                    drawable2 = (ColorDrawable) backButtonColor.get();
                                                    j3 = j & 1600;
                                                    if (j3 == 0) {
                                                        if (rocketAddressViewData == null) {
                                                        }
                                                        updateRegistration(6, (Observable) errorVisible);
                                                        if (errorVisible == null) {
                                                            z4 = errorVisible.get();
                                                        } else {
                                                            z4 = false;
                                                        }
                                                        if (j3 == 0) {
                                                            if (z4) {
                                                            }
                                                        }
                                                        if (z4) {
                                                        }
                                                        i2 = z4 ? 0 : 8;
                                                        j = j3;
                                                    } else {
                                                        i2 = 0;
                                                    }
                                                    j2 = j & 1664;
                                                    if (j2 == 0) {
                                                        if (rocketAddressViewData != null) {
                                                            observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                                        }
                                                        observableBoolean2 = observableBoolean;
                                                        updateRegistration(7, (Observable) observableBoolean2);
                                                        if (observableBoolean2 == null) {
                                                            z5 = observableBoolean2.get();
                                                        } else {
                                                            z5 = false;
                                                        }
                                                        if (j2 != 0) {
                                                            if (z5) {
                                                            }
                                                            j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                                        }
                                                        if (z5) {
                                                        }
                                                        i3 = z5 ? 0 : 8;
                                                    } else {
                                                        i3 = 0;
                                                    }
                                                }
                                            }
                                            drawable2 = null;
                                            j3 = j & 1600;
                                            if (j3 == 0) {
                                                i2 = 0;
                                            } else {
                                                if (rocketAddressViewData == null) {
                                                }
                                                updateRegistration(6, (Observable) errorVisible);
                                                if (errorVisible == null) {
                                                    z4 = false;
                                                } else {
                                                    z4 = errorVisible.get();
                                                }
                                                if (j3 == 0) {
                                                }
                                                if (z4) {
                                                }
                                                i2 = z4 ? 0 : 8;
                                                j = j3;
                                            }
                                            j2 = j & 1664;
                                            if (j2 == 0) {
                                                i3 = 0;
                                            } else {
                                                if (rocketAddressViewData != null) {
                                                    observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                                }
                                                observableBoolean2 = observableBoolean;
                                                updateRegistration(7, (Observable) observableBoolean2);
                                                if (observableBoolean2 == null) {
                                                    z5 = false;
                                                } else {
                                                    z5 = observableBoolean2.get();
                                                }
                                                if (j2 != 0) {
                                                    if (z5) {
                                                    }
                                                    j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                                }
                                                if (z5) {
                                                }
                                                i3 = z5 ? 0 : 8;
                                            }
                                        }
                                    }
                                    i = 0;
                                    if ((j & 1568) != 0) {
                                        if (rocketAddressViewData == null) {
                                        }
                                        updateRegistration(5, (Observable) backButtonColor);
                                        if (backButtonColor != null) {
                                            drawable2 = (ColorDrawable) backButtonColor.get();
                                            j3 = j & 1600;
                                            if (j3 == 0) {
                                                if (rocketAddressViewData == null) {
                                                }
                                                updateRegistration(6, (Observable) errorVisible);
                                                if (errorVisible == null) {
                                                    z4 = errorVisible.get();
                                                } else {
                                                    z4 = false;
                                                }
                                                if (j3 == 0) {
                                                    if (z4) {
                                                    }
                                                }
                                                if (z4) {
                                                }
                                                i2 = z4 ? 0 : 8;
                                                j = j3;
                                            } else {
                                                i2 = 0;
                                            }
                                            j2 = j & 1664;
                                            if (j2 == 0) {
                                                if (rocketAddressViewData != null) {
                                                    observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                                }
                                                observableBoolean2 = observableBoolean;
                                                updateRegistration(7, (Observable) observableBoolean2);
                                                if (observableBoolean2 == null) {
                                                    z5 = observableBoolean2.get();
                                                } else {
                                                    z5 = false;
                                                }
                                                if (j2 != 0) {
                                                    if (z5) {
                                                    }
                                                    j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                                }
                                                if (z5) {
                                                }
                                                i3 = z5 ? 0 : 8;
                                            } else {
                                                i3 = 0;
                                            }
                                        }
                                    }
                                    drawable2 = null;
                                    j3 = j & 1600;
                                    if (j3 == 0) {
                                        i2 = 0;
                                    } else {
                                        if (rocketAddressViewData == null) {
                                        }
                                        updateRegistration(6, (Observable) errorVisible);
                                        if (errorVisible == null) {
                                            z4 = false;
                                        } else {
                                            z4 = errorVisible.get();
                                        }
                                        if (j3 == 0) {
                                        }
                                        if (z4) {
                                        }
                                        i2 = z4 ? 0 : 8;
                                        j = j3;
                                    }
                                    j2 = j & 1664;
                                    if (j2 == 0) {
                                        i3 = 0;
                                    } else {
                                        if (rocketAddressViewData != null) {
                                            observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                        }
                                        observableBoolean2 = observableBoolean;
                                        updateRegistration(7, (Observable) observableBoolean2);
                                        if (observableBoolean2 == null) {
                                            z5 = false;
                                        } else {
                                            z5 = observableBoolean2.get();
                                        }
                                        if (j2 != 0) {
                                            if (z5) {
                                            }
                                            j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                        }
                                        if (z5) {
                                        }
                                        i3 = z5 ? 0 : 8;
                                    }
                                }
                            }
                            charSequence = null;
                            j2 = j & 1552;
                            if (j2 != 0) {
                                if (rocketAddressViewData == null) {
                                }
                                updateRegistration(4, (Observable) backButtonVisible);
                                if (backButtonVisible == null) {
                                    z3 = false;
                                } else {
                                    z3 = backButtonVisible.get();
                                }
                                if (j2 != 0) {
                                    if (z3) {
                                    }
                                    j = z3 ? j | PlaybackStateCompat.ACTION_PREPARE : j | PlaybackStateCompat.ACTION_PLAY_FROM_URI;
                                }
                                if (!z3) {
                                    i = 8;
                                    if ((j & 1568) != 0) {
                                        if (rocketAddressViewData == null) {
                                        }
                                        updateRegistration(5, (Observable) backButtonColor);
                                        if (backButtonColor != null) {
                                            drawable2 = (ColorDrawable) backButtonColor.get();
                                            j3 = j & 1600;
                                            if (j3 == 0) {
                                                if (rocketAddressViewData == null) {
                                                }
                                                updateRegistration(6, (Observable) errorVisible);
                                                if (errorVisible == null) {
                                                    z4 = errorVisible.get();
                                                } else {
                                                    z4 = false;
                                                }
                                                if (j3 == 0) {
                                                    if (z4) {
                                                    }
                                                }
                                                if (z4) {
                                                }
                                                i2 = z4 ? 0 : 8;
                                                j = j3;
                                            } else {
                                                i2 = 0;
                                            }
                                            j2 = j & 1664;
                                            if (j2 == 0) {
                                                if (rocketAddressViewData != null) {
                                                    observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                                }
                                                observableBoolean2 = observableBoolean;
                                                updateRegistration(7, (Observable) observableBoolean2);
                                                if (observableBoolean2 == null) {
                                                    z5 = observableBoolean2.get();
                                                } else {
                                                    z5 = false;
                                                }
                                                if (j2 != 0) {
                                                    if (z5) {
                                                    }
                                                    j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                                }
                                                if (z5) {
                                                }
                                                i3 = z5 ? 0 : 8;
                                            } else {
                                                i3 = 0;
                                            }
                                        }
                                    }
                                    drawable2 = null;
                                    j3 = j & 1600;
                                    if (j3 == 0) {
                                        i2 = 0;
                                    } else {
                                        if (rocketAddressViewData == null) {
                                        }
                                        updateRegistration(6, (Observable) errorVisible);
                                        if (errorVisible == null) {
                                            z4 = false;
                                        } else {
                                            z4 = errorVisible.get();
                                        }
                                        if (j3 == 0) {
                                        }
                                        if (z4) {
                                        }
                                        i2 = z4 ? 0 : 8;
                                        j = j3;
                                    }
                                    j2 = j & 1664;
                                    if (j2 == 0) {
                                        i3 = 0;
                                    } else {
                                        if (rocketAddressViewData != null) {
                                            observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                        }
                                        observableBoolean2 = observableBoolean;
                                        updateRegistration(7, (Observable) observableBoolean2);
                                        if (observableBoolean2 == null) {
                                            z5 = false;
                                        } else {
                                            z5 = observableBoolean2.get();
                                        }
                                        if (j2 != 0) {
                                            if (z5) {
                                            }
                                            j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                        }
                                        if (z5) {
                                        }
                                        i3 = z5 ? 0 : 8;
                                    }
                                }
                            }
                            i = 0;
                            if ((j & 1568) != 0) {
                                if (rocketAddressViewData == null) {
                                }
                                updateRegistration(5, (Observable) backButtonColor);
                                if (backButtonColor != null) {
                                    drawable2 = (ColorDrawable) backButtonColor.get();
                                    j3 = j & 1600;
                                    if (j3 == 0) {
                                        if (rocketAddressViewData == null) {
                                        }
                                        updateRegistration(6, (Observable) errorVisible);
                                        if (errorVisible == null) {
                                            z4 = errorVisible.get();
                                        } else {
                                            z4 = false;
                                        }
                                        if (j3 == 0) {
                                            if (z4) {
                                            }
                                        }
                                        if (z4) {
                                        }
                                        i2 = z4 ? 0 : 8;
                                        j = j3;
                                    } else {
                                        i2 = 0;
                                    }
                                    j2 = j & 1664;
                                    if (j2 == 0) {
                                        if (rocketAddressViewData != null) {
                                            observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                        }
                                        observableBoolean2 = observableBoolean;
                                        updateRegistration(7, (Observable) observableBoolean2);
                                        if (observableBoolean2 == null) {
                                            z5 = observableBoolean2.get();
                                        } else {
                                            z5 = false;
                                        }
                                        if (j2 != 0) {
                                            if (z5) {
                                            }
                                            j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                        }
                                        if (z5) {
                                        }
                                        i3 = z5 ? 0 : 8;
                                    } else {
                                        i3 = 0;
                                    }
                                }
                            }
                            drawable2 = null;
                            j3 = j & 1600;
                            if (j3 == 0) {
                                i2 = 0;
                            } else {
                                if (rocketAddressViewData == null) {
                                }
                                updateRegistration(6, (Observable) errorVisible);
                                if (errorVisible == null) {
                                    z4 = false;
                                } else {
                                    z4 = errorVisible.get();
                                }
                                if (j3 == 0) {
                                }
                                if (z4) {
                                }
                                i2 = z4 ? 0 : 8;
                                j = j3;
                            }
                            j2 = j & 1664;
                            if (j2 == 0) {
                                i3 = 0;
                            } else {
                                if (rocketAddressViewData != null) {
                                    observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                }
                                observableBoolean2 = observableBoolean;
                                updateRegistration(7, (Observable) observableBoolean2);
                                if (observableBoolean2 == null) {
                                    z5 = false;
                                } else {
                                    z5 = observableBoolean2.get();
                                }
                                if (j2 != 0) {
                                    if (z5) {
                                    }
                                    j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                }
                                if (z5) {
                                }
                                i3 = z5 ? 0 : 8;
                            }
                        }
                    }
                    z2 = false;
                    if ((j & 1544) != 0) {
                        if (rocketAddressViewData == null) {
                        }
                        updateRegistration(3, (Observable) addressTextHint);
                        if (addressTextHint != null) {
                            charSequence = (String) addressTextHint.get();
                            j2 = j & 1552;
                            if (j2 != 0) {
                                if (rocketAddressViewData == null) {
                                }
                                updateRegistration(4, (Observable) backButtonVisible);
                                if (backButtonVisible == null) {
                                    z3 = backButtonVisible.get();
                                } else {
                                    z3 = false;
                                }
                                if (j2 != 0) {
                                    if (z3) {
                                    }
                                    j = z3 ? j | PlaybackStateCompat.ACTION_PREPARE : j | PlaybackStateCompat.ACTION_PLAY_FROM_URI;
                                }
                                if (!z3) {
                                    i = 8;
                                    if ((j & 1568) != 0) {
                                        if (rocketAddressViewData == null) {
                                        }
                                        updateRegistration(5, (Observable) backButtonColor);
                                        if (backButtonColor != null) {
                                            drawable2 = (ColorDrawable) backButtonColor.get();
                                            j3 = j & 1600;
                                            if (j3 == 0) {
                                                if (rocketAddressViewData == null) {
                                                }
                                                updateRegistration(6, (Observable) errorVisible);
                                                if (errorVisible == null) {
                                                    z4 = errorVisible.get();
                                                } else {
                                                    z4 = false;
                                                }
                                                if (j3 == 0) {
                                                    if (z4) {
                                                    }
                                                }
                                                if (z4) {
                                                }
                                                i2 = z4 ? 0 : 8;
                                                j = j3;
                                            } else {
                                                i2 = 0;
                                            }
                                            j2 = j & 1664;
                                            if (j2 == 0) {
                                                if (rocketAddressViewData != null) {
                                                    observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                                }
                                                observableBoolean2 = observableBoolean;
                                                updateRegistration(7, (Observable) observableBoolean2);
                                                if (observableBoolean2 == null) {
                                                    z5 = observableBoolean2.get();
                                                } else {
                                                    z5 = false;
                                                }
                                                if (j2 != 0) {
                                                    if (z5) {
                                                    }
                                                    j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                                }
                                                if (z5) {
                                                }
                                                i3 = z5 ? 0 : 8;
                                            } else {
                                                i3 = 0;
                                            }
                                        }
                                    }
                                    drawable2 = null;
                                    j3 = j & 1600;
                                    if (j3 == 0) {
                                        i2 = 0;
                                    } else {
                                        if (rocketAddressViewData == null) {
                                        }
                                        updateRegistration(6, (Observable) errorVisible);
                                        if (errorVisible == null) {
                                            z4 = false;
                                        } else {
                                            z4 = errorVisible.get();
                                        }
                                        if (j3 == 0) {
                                        }
                                        if (z4) {
                                        }
                                        i2 = z4 ? 0 : 8;
                                        j = j3;
                                    }
                                    j2 = j & 1664;
                                    if (j2 == 0) {
                                        i3 = 0;
                                    } else {
                                        if (rocketAddressViewData != null) {
                                            observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                        }
                                        observableBoolean2 = observableBoolean;
                                        updateRegistration(7, (Observable) observableBoolean2);
                                        if (observableBoolean2 == null) {
                                            z5 = false;
                                        } else {
                                            z5 = observableBoolean2.get();
                                        }
                                        if (j2 != 0) {
                                            if (z5) {
                                            }
                                            j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                        }
                                        if (z5) {
                                        }
                                        i3 = z5 ? 0 : 8;
                                    }
                                }
                            }
                            i = 0;
                            if ((j & 1568) != 0) {
                                if (rocketAddressViewData == null) {
                                }
                                updateRegistration(5, (Observable) backButtonColor);
                                if (backButtonColor != null) {
                                    drawable2 = (ColorDrawable) backButtonColor.get();
                                    j3 = j & 1600;
                                    if (j3 == 0) {
                                        if (rocketAddressViewData == null) {
                                        }
                                        updateRegistration(6, (Observable) errorVisible);
                                        if (errorVisible == null) {
                                            z4 = errorVisible.get();
                                        } else {
                                            z4 = false;
                                        }
                                        if (j3 == 0) {
                                            if (z4) {
                                            }
                                        }
                                        if (z4) {
                                        }
                                        i2 = z4 ? 0 : 8;
                                        j = j3;
                                    } else {
                                        i2 = 0;
                                    }
                                    j2 = j & 1664;
                                    if (j2 == 0) {
                                        if (rocketAddressViewData != null) {
                                            observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                        }
                                        observableBoolean2 = observableBoolean;
                                        updateRegistration(7, (Observable) observableBoolean2);
                                        if (observableBoolean2 == null) {
                                            z5 = observableBoolean2.get();
                                        } else {
                                            z5 = false;
                                        }
                                        if (j2 != 0) {
                                            if (z5) {
                                            }
                                            j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                        }
                                        if (z5) {
                                        }
                                        i3 = z5 ? 0 : 8;
                                    } else {
                                        i3 = 0;
                                    }
                                }
                            }
                            drawable2 = null;
                            j3 = j & 1600;
                            if (j3 == 0) {
                                i2 = 0;
                            } else {
                                if (rocketAddressViewData == null) {
                                }
                                updateRegistration(6, (Observable) errorVisible);
                                if (errorVisible == null) {
                                    z4 = false;
                                } else {
                                    z4 = errorVisible.get();
                                }
                                if (j3 == 0) {
                                }
                                if (z4) {
                                }
                                i2 = z4 ? 0 : 8;
                                j = j3;
                            }
                            j2 = j & 1664;
                            if (j2 == 0) {
                                i3 = 0;
                            } else {
                                if (rocketAddressViewData != null) {
                                    observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                }
                                observableBoolean2 = observableBoolean;
                                updateRegistration(7, (Observable) observableBoolean2);
                                if (observableBoolean2 == null) {
                                    z5 = false;
                                } else {
                                    z5 = observableBoolean2.get();
                                }
                                if (j2 != 0) {
                                    if (z5) {
                                    }
                                    j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                }
                                if (z5) {
                                }
                                i3 = z5 ? 0 : 8;
                            }
                        }
                    }
                    charSequence = null;
                    j2 = j & 1552;
                    if (j2 != 0) {
                        if (rocketAddressViewData == null) {
                        }
                        updateRegistration(4, (Observable) backButtonVisible);
                        if (backButtonVisible == null) {
                            z3 = false;
                        } else {
                            z3 = backButtonVisible.get();
                        }
                        if (j2 != 0) {
                            if (z3) {
                            }
                            j = z3 ? j | PlaybackStateCompat.ACTION_PREPARE : j | PlaybackStateCompat.ACTION_PLAY_FROM_URI;
                        }
                        if (!z3) {
                            i = 8;
                            if ((j & 1568) != 0) {
                                if (rocketAddressViewData == null) {
                                }
                                updateRegistration(5, (Observable) backButtonColor);
                                if (backButtonColor != null) {
                                    drawable2 = (ColorDrawable) backButtonColor.get();
                                    j3 = j & 1600;
                                    if (j3 == 0) {
                                        if (rocketAddressViewData == null) {
                                        }
                                        updateRegistration(6, (Observable) errorVisible);
                                        if (errorVisible == null) {
                                            z4 = errorVisible.get();
                                        } else {
                                            z4 = false;
                                        }
                                        if (j3 == 0) {
                                            if (z4) {
                                            }
                                        }
                                        if (z4) {
                                        }
                                        i2 = z4 ? 0 : 8;
                                        j = j3;
                                    } else {
                                        i2 = 0;
                                    }
                                    j2 = j & 1664;
                                    if (j2 == 0) {
                                        if (rocketAddressViewData != null) {
                                            observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                        }
                                        observableBoolean2 = observableBoolean;
                                        updateRegistration(7, (Observable) observableBoolean2);
                                        if (observableBoolean2 == null) {
                                            z5 = observableBoolean2.get();
                                        } else {
                                            z5 = false;
                                        }
                                        if (j2 != 0) {
                                            if (z5) {
                                            }
                                            j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                        }
                                        if (z5) {
                                        }
                                        i3 = z5 ? 0 : 8;
                                    } else {
                                        i3 = 0;
                                    }
                                }
                            }
                            drawable2 = null;
                            j3 = j & 1600;
                            if (j3 == 0) {
                                i2 = 0;
                            } else {
                                if (rocketAddressViewData == null) {
                                }
                                updateRegistration(6, (Observable) errorVisible);
                                if (errorVisible == null) {
                                    z4 = false;
                                } else {
                                    z4 = errorVisible.get();
                                }
                                if (j3 == 0) {
                                }
                                if (z4) {
                                }
                                i2 = z4 ? 0 : 8;
                                j = j3;
                            }
                            j2 = j & 1664;
                            if (j2 == 0) {
                                i3 = 0;
                            } else {
                                if (rocketAddressViewData != null) {
                                    observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                }
                                observableBoolean2 = observableBoolean;
                                updateRegistration(7, (Observable) observableBoolean2);
                                if (observableBoolean2 == null) {
                                    z5 = false;
                                } else {
                                    z5 = observableBoolean2.get();
                                }
                                if (j2 != 0) {
                                    if (z5) {
                                    }
                                    j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                }
                                if (z5) {
                                }
                                i3 = z5 ? 0 : 8;
                            }
                        }
                    }
                    i = 0;
                    if ((j & 1568) != 0) {
                        if (rocketAddressViewData == null) {
                        }
                        updateRegistration(5, (Observable) backButtonColor);
                        if (backButtonColor != null) {
                            drawable2 = (ColorDrawable) backButtonColor.get();
                            j3 = j & 1600;
                            if (j3 == 0) {
                                if (rocketAddressViewData == null) {
                                }
                                updateRegistration(6, (Observable) errorVisible);
                                if (errorVisible == null) {
                                    z4 = errorVisible.get();
                                } else {
                                    z4 = false;
                                }
                                if (j3 == 0) {
                                    if (z4) {
                                    }
                                }
                                if (z4) {
                                }
                                i2 = z4 ? 0 : 8;
                                j = j3;
                            } else {
                                i2 = 0;
                            }
                            j2 = j & 1664;
                            if (j2 == 0) {
                                if (rocketAddressViewData != null) {
                                    observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                }
                                observableBoolean2 = observableBoolean;
                                updateRegistration(7, (Observable) observableBoolean2);
                                if (observableBoolean2 == null) {
                                    z5 = observableBoolean2.get();
                                } else {
                                    z5 = false;
                                }
                                if (j2 != 0) {
                                    if (z5) {
                                    }
                                    j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                }
                                if (z5) {
                                }
                                i3 = z5 ? 0 : 8;
                            } else {
                                i3 = 0;
                            }
                        }
                    }
                    drawable2 = null;
                    j3 = j & 1600;
                    if (j3 == 0) {
                        i2 = 0;
                    } else {
                        if (rocketAddressViewData == null) {
                        }
                        updateRegistration(6, (Observable) errorVisible);
                        if (errorVisible == null) {
                            z4 = false;
                        } else {
                            z4 = errorVisible.get();
                        }
                        if (j3 == 0) {
                        }
                        if (z4) {
                        }
                        i2 = z4 ? 0 : 8;
                        j = j3;
                    }
                    j2 = j & 1664;
                    if (j2 == 0) {
                        i3 = 0;
                    } else {
                        if (rocketAddressViewData != null) {
                            observableBoolean = rocketAddressViewData.getNextButtonVisible();
                        }
                        observableBoolean2 = observableBoolean;
                        updateRegistration(7, (Observable) observableBoolean2);
                        if (observableBoolean2 == null) {
                            z5 = false;
                        } else {
                            z5 = observableBoolean2.get();
                        }
                        if (j2 != 0) {
                            if (z5) {
                            }
                            j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                        }
                        if (z5) {
                        }
                        i3 = z5 ? 0 : 8;
                    }
                }
            }
            drawable = null;
            if ((j & 1538) != 0) {
                if (rocketAddressViewData == null) {
                }
                updateRegistration(1, (Observable) backButtonEnabled);
                if (backButtonEnabled != null) {
                    z = backButtonEnabled.get();
                    if ((j & 1540) != 0) {
                        if (rocketAddressViewData == null) {
                        }
                        updateRegistration(2, (Observable) backButtonEnabled);
                        if (backButtonEnabled != null) {
                            z2 = backButtonEnabled.get();
                            if ((j & 1544) != 0) {
                                if (rocketAddressViewData == null) {
                                }
                                updateRegistration(3, (Observable) addressTextHint);
                                if (addressTextHint != null) {
                                    charSequence = (String) addressTextHint.get();
                                    j2 = j & 1552;
                                    if (j2 != 0) {
                                        if (rocketAddressViewData == null) {
                                        }
                                        updateRegistration(4, (Observable) backButtonVisible);
                                        if (backButtonVisible == null) {
                                            z3 = backButtonVisible.get();
                                        } else {
                                            z3 = false;
                                        }
                                        if (j2 != 0) {
                                            if (z3) {
                                            }
                                            j = z3 ? j | PlaybackStateCompat.ACTION_PREPARE : j | PlaybackStateCompat.ACTION_PLAY_FROM_URI;
                                        }
                                        if (!z3) {
                                            i = 8;
                                            if ((j & 1568) != 0) {
                                                if (rocketAddressViewData == null) {
                                                }
                                                updateRegistration(5, (Observable) backButtonColor);
                                                if (backButtonColor != null) {
                                                    drawable2 = (ColorDrawable) backButtonColor.get();
                                                    j3 = j & 1600;
                                                    if (j3 == 0) {
                                                        if (rocketAddressViewData == null) {
                                                        }
                                                        updateRegistration(6, (Observable) errorVisible);
                                                        if (errorVisible == null) {
                                                            z4 = errorVisible.get();
                                                        } else {
                                                            z4 = false;
                                                        }
                                                        if (j3 == 0) {
                                                            if (z4) {
                                                            }
                                                        }
                                                        if (z4) {
                                                        }
                                                        i2 = z4 ? 0 : 8;
                                                        j = j3;
                                                    } else {
                                                        i2 = 0;
                                                    }
                                                    j2 = j & 1664;
                                                    if (j2 == 0) {
                                                        if (rocketAddressViewData != null) {
                                                            observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                                        }
                                                        observableBoolean2 = observableBoolean;
                                                        updateRegistration(7, (Observable) observableBoolean2);
                                                        if (observableBoolean2 == null) {
                                                            z5 = observableBoolean2.get();
                                                        } else {
                                                            z5 = false;
                                                        }
                                                        if (j2 != 0) {
                                                            if (z5) {
                                                            }
                                                            j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                                        }
                                                        if (z5) {
                                                        }
                                                        i3 = z5 ? 0 : 8;
                                                    } else {
                                                        i3 = 0;
                                                    }
                                                }
                                            }
                                            drawable2 = null;
                                            j3 = j & 1600;
                                            if (j3 == 0) {
                                                i2 = 0;
                                            } else {
                                                if (rocketAddressViewData == null) {
                                                }
                                                updateRegistration(6, (Observable) errorVisible);
                                                if (errorVisible == null) {
                                                    z4 = false;
                                                } else {
                                                    z4 = errorVisible.get();
                                                }
                                                if (j3 == 0) {
                                                }
                                                if (z4) {
                                                }
                                                i2 = z4 ? 0 : 8;
                                                j = j3;
                                            }
                                            j2 = j & 1664;
                                            if (j2 == 0) {
                                                i3 = 0;
                                            } else {
                                                if (rocketAddressViewData != null) {
                                                    observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                                }
                                                observableBoolean2 = observableBoolean;
                                                updateRegistration(7, (Observable) observableBoolean2);
                                                if (observableBoolean2 == null) {
                                                    z5 = false;
                                                } else {
                                                    z5 = observableBoolean2.get();
                                                }
                                                if (j2 != 0) {
                                                    if (z5) {
                                                    }
                                                    j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                                }
                                                if (z5) {
                                                }
                                                i3 = z5 ? 0 : 8;
                                            }
                                        }
                                    }
                                    i = 0;
                                    if ((j & 1568) != 0) {
                                        if (rocketAddressViewData == null) {
                                        }
                                        updateRegistration(5, (Observable) backButtonColor);
                                        if (backButtonColor != null) {
                                            drawable2 = (ColorDrawable) backButtonColor.get();
                                            j3 = j & 1600;
                                            if (j3 == 0) {
                                                if (rocketAddressViewData == null) {
                                                }
                                                updateRegistration(6, (Observable) errorVisible);
                                                if (errorVisible == null) {
                                                    z4 = errorVisible.get();
                                                } else {
                                                    z4 = false;
                                                }
                                                if (j3 == 0) {
                                                    if (z4) {
                                                    }
                                                }
                                                if (z4) {
                                                }
                                                i2 = z4 ? 0 : 8;
                                                j = j3;
                                            } else {
                                                i2 = 0;
                                            }
                                            j2 = j & 1664;
                                            if (j2 == 0) {
                                                if (rocketAddressViewData != null) {
                                                    observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                                }
                                                observableBoolean2 = observableBoolean;
                                                updateRegistration(7, (Observable) observableBoolean2);
                                                if (observableBoolean2 == null) {
                                                    z5 = observableBoolean2.get();
                                                } else {
                                                    z5 = false;
                                                }
                                                if (j2 != 0) {
                                                    if (z5) {
                                                    }
                                                    j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                                }
                                                if (z5) {
                                                }
                                                i3 = z5 ? 0 : 8;
                                            } else {
                                                i3 = 0;
                                            }
                                        }
                                    }
                                    drawable2 = null;
                                    j3 = j & 1600;
                                    if (j3 == 0) {
                                        i2 = 0;
                                    } else {
                                        if (rocketAddressViewData == null) {
                                        }
                                        updateRegistration(6, (Observable) errorVisible);
                                        if (errorVisible == null) {
                                            z4 = false;
                                        } else {
                                            z4 = errorVisible.get();
                                        }
                                        if (j3 == 0) {
                                        }
                                        if (z4) {
                                        }
                                        i2 = z4 ? 0 : 8;
                                        j = j3;
                                    }
                                    j2 = j & 1664;
                                    if (j2 == 0) {
                                        i3 = 0;
                                    } else {
                                        if (rocketAddressViewData != null) {
                                            observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                        }
                                        observableBoolean2 = observableBoolean;
                                        updateRegistration(7, (Observable) observableBoolean2);
                                        if (observableBoolean2 == null) {
                                            z5 = false;
                                        } else {
                                            z5 = observableBoolean2.get();
                                        }
                                        if (j2 != 0) {
                                            if (z5) {
                                            }
                                            j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                        }
                                        if (z5) {
                                        }
                                        i3 = z5 ? 0 : 8;
                                    }
                                }
                            }
                            charSequence = null;
                            j2 = j & 1552;
                            if (j2 != 0) {
                                if (rocketAddressViewData == null) {
                                }
                                updateRegistration(4, (Observable) backButtonVisible);
                                if (backButtonVisible == null) {
                                    z3 = false;
                                } else {
                                    z3 = backButtonVisible.get();
                                }
                                if (j2 != 0) {
                                    if (z3) {
                                    }
                                    j = z3 ? j | PlaybackStateCompat.ACTION_PREPARE : j | PlaybackStateCompat.ACTION_PLAY_FROM_URI;
                                }
                                if (!z3) {
                                    i = 8;
                                    if ((j & 1568) != 0) {
                                        if (rocketAddressViewData == null) {
                                        }
                                        updateRegistration(5, (Observable) backButtonColor);
                                        if (backButtonColor != null) {
                                            drawable2 = (ColorDrawable) backButtonColor.get();
                                            j3 = j & 1600;
                                            if (j3 == 0) {
                                                if (rocketAddressViewData == null) {
                                                }
                                                updateRegistration(6, (Observable) errorVisible);
                                                if (errorVisible == null) {
                                                    z4 = errorVisible.get();
                                                } else {
                                                    z4 = false;
                                                }
                                                if (j3 == 0) {
                                                    if (z4) {
                                                    }
                                                }
                                                if (z4) {
                                                }
                                                i2 = z4 ? 0 : 8;
                                                j = j3;
                                            } else {
                                                i2 = 0;
                                            }
                                            j2 = j & 1664;
                                            if (j2 == 0) {
                                                if (rocketAddressViewData != null) {
                                                    observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                                }
                                                observableBoolean2 = observableBoolean;
                                                updateRegistration(7, (Observable) observableBoolean2);
                                                if (observableBoolean2 == null) {
                                                    z5 = observableBoolean2.get();
                                                } else {
                                                    z5 = false;
                                                }
                                                if (j2 != 0) {
                                                    if (z5) {
                                                    }
                                                    j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                                }
                                                if (z5) {
                                                }
                                                i3 = z5 ? 0 : 8;
                                            } else {
                                                i3 = 0;
                                            }
                                        }
                                    }
                                    drawable2 = null;
                                    j3 = j & 1600;
                                    if (j3 == 0) {
                                        i2 = 0;
                                    } else {
                                        if (rocketAddressViewData == null) {
                                        }
                                        updateRegistration(6, (Observable) errorVisible);
                                        if (errorVisible == null) {
                                            z4 = false;
                                        } else {
                                            z4 = errorVisible.get();
                                        }
                                        if (j3 == 0) {
                                        }
                                        if (z4) {
                                        }
                                        i2 = z4 ? 0 : 8;
                                        j = j3;
                                    }
                                    j2 = j & 1664;
                                    if (j2 == 0) {
                                        i3 = 0;
                                    } else {
                                        if (rocketAddressViewData != null) {
                                            observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                        }
                                        observableBoolean2 = observableBoolean;
                                        updateRegistration(7, (Observable) observableBoolean2);
                                        if (observableBoolean2 == null) {
                                            z5 = false;
                                        } else {
                                            z5 = observableBoolean2.get();
                                        }
                                        if (j2 != 0) {
                                            if (z5) {
                                            }
                                            j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                        }
                                        if (z5) {
                                        }
                                        i3 = z5 ? 0 : 8;
                                    }
                                }
                            }
                            i = 0;
                            if ((j & 1568) != 0) {
                                if (rocketAddressViewData == null) {
                                }
                                updateRegistration(5, (Observable) backButtonColor);
                                if (backButtonColor != null) {
                                    drawable2 = (ColorDrawable) backButtonColor.get();
                                    j3 = j & 1600;
                                    if (j3 == 0) {
                                        if (rocketAddressViewData == null) {
                                        }
                                        updateRegistration(6, (Observable) errorVisible);
                                        if (errorVisible == null) {
                                            z4 = errorVisible.get();
                                        } else {
                                            z4 = false;
                                        }
                                        if (j3 == 0) {
                                            if (z4) {
                                            }
                                        }
                                        if (z4) {
                                        }
                                        i2 = z4 ? 0 : 8;
                                        j = j3;
                                    } else {
                                        i2 = 0;
                                    }
                                    j2 = j & 1664;
                                    if (j2 == 0) {
                                        if (rocketAddressViewData != null) {
                                            observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                        }
                                        observableBoolean2 = observableBoolean;
                                        updateRegistration(7, (Observable) observableBoolean2);
                                        if (observableBoolean2 == null) {
                                            z5 = observableBoolean2.get();
                                        } else {
                                            z5 = false;
                                        }
                                        if (j2 != 0) {
                                            if (z5) {
                                            }
                                            j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                        }
                                        if (z5) {
                                        }
                                        i3 = z5 ? 0 : 8;
                                    } else {
                                        i3 = 0;
                                    }
                                }
                            }
                            drawable2 = null;
                            j3 = j & 1600;
                            if (j3 == 0) {
                                i2 = 0;
                            } else {
                                if (rocketAddressViewData == null) {
                                }
                                updateRegistration(6, (Observable) errorVisible);
                                if (errorVisible == null) {
                                    z4 = false;
                                } else {
                                    z4 = errorVisible.get();
                                }
                                if (j3 == 0) {
                                }
                                if (z4) {
                                }
                                i2 = z4 ? 0 : 8;
                                j = j3;
                            }
                            j2 = j & 1664;
                            if (j2 == 0) {
                                i3 = 0;
                            } else {
                                if (rocketAddressViewData != null) {
                                    observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                }
                                observableBoolean2 = observableBoolean;
                                updateRegistration(7, (Observable) observableBoolean2);
                                if (observableBoolean2 == null) {
                                    z5 = false;
                                } else {
                                    z5 = observableBoolean2.get();
                                }
                                if (j2 != 0) {
                                    if (z5) {
                                    }
                                    j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                }
                                if (z5) {
                                }
                                i3 = z5 ? 0 : 8;
                            }
                        }
                    }
                    z2 = false;
                    if ((j & 1544) != 0) {
                        if (rocketAddressViewData == null) {
                        }
                        updateRegistration(3, (Observable) addressTextHint);
                        if (addressTextHint != null) {
                            charSequence = (String) addressTextHint.get();
                            j2 = j & 1552;
                            if (j2 != 0) {
                                if (rocketAddressViewData == null) {
                                }
                                updateRegistration(4, (Observable) backButtonVisible);
                                if (backButtonVisible == null) {
                                    z3 = backButtonVisible.get();
                                } else {
                                    z3 = false;
                                }
                                if (j2 != 0) {
                                    if (z3) {
                                    }
                                    j = z3 ? j | PlaybackStateCompat.ACTION_PREPARE : j | PlaybackStateCompat.ACTION_PLAY_FROM_URI;
                                }
                                if (!z3) {
                                    i = 8;
                                    if ((j & 1568) != 0) {
                                        if (rocketAddressViewData == null) {
                                        }
                                        updateRegistration(5, (Observable) backButtonColor);
                                        if (backButtonColor != null) {
                                            drawable2 = (ColorDrawable) backButtonColor.get();
                                            j3 = j & 1600;
                                            if (j3 == 0) {
                                                if (rocketAddressViewData == null) {
                                                }
                                                updateRegistration(6, (Observable) errorVisible);
                                                if (errorVisible == null) {
                                                    z4 = errorVisible.get();
                                                } else {
                                                    z4 = false;
                                                }
                                                if (j3 == 0) {
                                                    if (z4) {
                                                    }
                                                }
                                                if (z4) {
                                                }
                                                i2 = z4 ? 0 : 8;
                                                j = j3;
                                            } else {
                                                i2 = 0;
                                            }
                                            j2 = j & 1664;
                                            if (j2 == 0) {
                                                if (rocketAddressViewData != null) {
                                                    observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                                }
                                                observableBoolean2 = observableBoolean;
                                                updateRegistration(7, (Observable) observableBoolean2);
                                                if (observableBoolean2 == null) {
                                                    z5 = observableBoolean2.get();
                                                } else {
                                                    z5 = false;
                                                }
                                                if (j2 != 0) {
                                                    if (z5) {
                                                    }
                                                    j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                                }
                                                if (z5) {
                                                }
                                                i3 = z5 ? 0 : 8;
                                            } else {
                                                i3 = 0;
                                            }
                                        }
                                    }
                                    drawable2 = null;
                                    j3 = j & 1600;
                                    if (j3 == 0) {
                                        i2 = 0;
                                    } else {
                                        if (rocketAddressViewData == null) {
                                        }
                                        updateRegistration(6, (Observable) errorVisible);
                                        if (errorVisible == null) {
                                            z4 = false;
                                        } else {
                                            z4 = errorVisible.get();
                                        }
                                        if (j3 == 0) {
                                        }
                                        if (z4) {
                                        }
                                        i2 = z4 ? 0 : 8;
                                        j = j3;
                                    }
                                    j2 = j & 1664;
                                    if (j2 == 0) {
                                        i3 = 0;
                                    } else {
                                        if (rocketAddressViewData != null) {
                                            observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                        }
                                        observableBoolean2 = observableBoolean;
                                        updateRegistration(7, (Observable) observableBoolean2);
                                        if (observableBoolean2 == null) {
                                            z5 = false;
                                        } else {
                                            z5 = observableBoolean2.get();
                                        }
                                        if (j2 != 0) {
                                            if (z5) {
                                            }
                                            j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                        }
                                        if (z5) {
                                        }
                                        i3 = z5 ? 0 : 8;
                                    }
                                }
                            }
                            i = 0;
                            if ((j & 1568) != 0) {
                                if (rocketAddressViewData == null) {
                                }
                                updateRegistration(5, (Observable) backButtonColor);
                                if (backButtonColor != null) {
                                    drawable2 = (ColorDrawable) backButtonColor.get();
                                    j3 = j & 1600;
                                    if (j3 == 0) {
                                        if (rocketAddressViewData == null) {
                                        }
                                        updateRegistration(6, (Observable) errorVisible);
                                        if (errorVisible == null) {
                                            z4 = errorVisible.get();
                                        } else {
                                            z4 = false;
                                        }
                                        if (j3 == 0) {
                                            if (z4) {
                                            }
                                        }
                                        if (z4) {
                                        }
                                        i2 = z4 ? 0 : 8;
                                        j = j3;
                                    } else {
                                        i2 = 0;
                                    }
                                    j2 = j & 1664;
                                    if (j2 == 0) {
                                        if (rocketAddressViewData != null) {
                                            observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                        }
                                        observableBoolean2 = observableBoolean;
                                        updateRegistration(7, (Observable) observableBoolean2);
                                        if (observableBoolean2 == null) {
                                            z5 = observableBoolean2.get();
                                        } else {
                                            z5 = false;
                                        }
                                        if (j2 != 0) {
                                            if (z5) {
                                            }
                                            j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                        }
                                        if (z5) {
                                        }
                                        i3 = z5 ? 0 : 8;
                                    } else {
                                        i3 = 0;
                                    }
                                }
                            }
                            drawable2 = null;
                            j3 = j & 1600;
                            if (j3 == 0) {
                                i2 = 0;
                            } else {
                                if (rocketAddressViewData == null) {
                                }
                                updateRegistration(6, (Observable) errorVisible);
                                if (errorVisible == null) {
                                    z4 = false;
                                } else {
                                    z4 = errorVisible.get();
                                }
                                if (j3 == 0) {
                                }
                                if (z4) {
                                }
                                i2 = z4 ? 0 : 8;
                                j = j3;
                            }
                            j2 = j & 1664;
                            if (j2 == 0) {
                                i3 = 0;
                            } else {
                                if (rocketAddressViewData != null) {
                                    observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                }
                                observableBoolean2 = observableBoolean;
                                updateRegistration(7, (Observable) observableBoolean2);
                                if (observableBoolean2 == null) {
                                    z5 = false;
                                } else {
                                    z5 = observableBoolean2.get();
                                }
                                if (j2 != 0) {
                                    if (z5) {
                                    }
                                    j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                }
                                if (z5) {
                                }
                                i3 = z5 ? 0 : 8;
                            }
                        }
                    }
                    charSequence = null;
                    j2 = j & 1552;
                    if (j2 != 0) {
                        if (rocketAddressViewData == null) {
                        }
                        updateRegistration(4, (Observable) backButtonVisible);
                        if (backButtonVisible == null) {
                            z3 = false;
                        } else {
                            z3 = backButtonVisible.get();
                        }
                        if (j2 != 0) {
                            if (z3) {
                            }
                            j = z3 ? j | PlaybackStateCompat.ACTION_PREPARE : j | PlaybackStateCompat.ACTION_PLAY_FROM_URI;
                        }
                        if (!z3) {
                            i = 8;
                            if ((j & 1568) != 0) {
                                if (rocketAddressViewData == null) {
                                }
                                updateRegistration(5, (Observable) backButtonColor);
                                if (backButtonColor != null) {
                                    drawable2 = (ColorDrawable) backButtonColor.get();
                                    j3 = j & 1600;
                                    if (j3 == 0) {
                                        if (rocketAddressViewData == null) {
                                        }
                                        updateRegistration(6, (Observable) errorVisible);
                                        if (errorVisible == null) {
                                            z4 = errorVisible.get();
                                        } else {
                                            z4 = false;
                                        }
                                        if (j3 == 0) {
                                            if (z4) {
                                            }
                                        }
                                        if (z4) {
                                        }
                                        i2 = z4 ? 0 : 8;
                                        j = j3;
                                    } else {
                                        i2 = 0;
                                    }
                                    j2 = j & 1664;
                                    if (j2 == 0) {
                                        if (rocketAddressViewData != null) {
                                            observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                        }
                                        observableBoolean2 = observableBoolean;
                                        updateRegistration(7, (Observable) observableBoolean2);
                                        if (observableBoolean2 == null) {
                                            z5 = observableBoolean2.get();
                                        } else {
                                            z5 = false;
                                        }
                                        if (j2 != 0) {
                                            if (z5) {
                                            }
                                            j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                        }
                                        if (z5) {
                                        }
                                        i3 = z5 ? 0 : 8;
                                    } else {
                                        i3 = 0;
                                    }
                                }
                            }
                            drawable2 = null;
                            j3 = j & 1600;
                            if (j3 == 0) {
                                i2 = 0;
                            } else {
                                if (rocketAddressViewData == null) {
                                }
                                updateRegistration(6, (Observable) errorVisible);
                                if (errorVisible == null) {
                                    z4 = false;
                                } else {
                                    z4 = errorVisible.get();
                                }
                                if (j3 == 0) {
                                }
                                if (z4) {
                                }
                                i2 = z4 ? 0 : 8;
                                j = j3;
                            }
                            j2 = j & 1664;
                            if (j2 == 0) {
                                i3 = 0;
                            } else {
                                if (rocketAddressViewData != null) {
                                    observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                }
                                observableBoolean2 = observableBoolean;
                                updateRegistration(7, (Observable) observableBoolean2);
                                if (observableBoolean2 == null) {
                                    z5 = false;
                                } else {
                                    z5 = observableBoolean2.get();
                                }
                                if (j2 != 0) {
                                    if (z5) {
                                    }
                                    j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                }
                                if (z5) {
                                }
                                i3 = z5 ? 0 : 8;
                            }
                        }
                    }
                    i = 0;
                    if ((j & 1568) != 0) {
                        if (rocketAddressViewData == null) {
                        }
                        updateRegistration(5, (Observable) backButtonColor);
                        if (backButtonColor != null) {
                            drawable2 = (ColorDrawable) backButtonColor.get();
                            j3 = j & 1600;
                            if (j3 == 0) {
                                if (rocketAddressViewData == null) {
                                }
                                updateRegistration(6, (Observable) errorVisible);
                                if (errorVisible == null) {
                                    z4 = errorVisible.get();
                                } else {
                                    z4 = false;
                                }
                                if (j3 == 0) {
                                    if (z4) {
                                    }
                                }
                                if (z4) {
                                }
                                i2 = z4 ? 0 : 8;
                                j = j3;
                            } else {
                                i2 = 0;
                            }
                            j2 = j & 1664;
                            if (j2 == 0) {
                                if (rocketAddressViewData != null) {
                                    observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                }
                                observableBoolean2 = observableBoolean;
                                updateRegistration(7, (Observable) observableBoolean2);
                                if (observableBoolean2 == null) {
                                    z5 = observableBoolean2.get();
                                } else {
                                    z5 = false;
                                }
                                if (j2 != 0) {
                                    if (z5) {
                                    }
                                    j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                }
                                if (z5) {
                                }
                                i3 = z5 ? 0 : 8;
                            } else {
                                i3 = 0;
                            }
                        }
                    }
                    drawable2 = null;
                    j3 = j & 1600;
                    if (j3 == 0) {
                        i2 = 0;
                    } else {
                        if (rocketAddressViewData == null) {
                        }
                        updateRegistration(6, (Observable) errorVisible);
                        if (errorVisible == null) {
                            z4 = false;
                        } else {
                            z4 = errorVisible.get();
                        }
                        if (j3 == 0) {
                        }
                        if (z4) {
                        }
                        i2 = z4 ? 0 : 8;
                        j = j3;
                    }
                    j2 = j & 1664;
                    if (j2 == 0) {
                        i3 = 0;
                    } else {
                        if (rocketAddressViewData != null) {
                            observableBoolean = rocketAddressViewData.getNextButtonVisible();
                        }
                        observableBoolean2 = observableBoolean;
                        updateRegistration(7, (Observable) observableBoolean2);
                        if (observableBoolean2 == null) {
                            z5 = false;
                        } else {
                            z5 = observableBoolean2.get();
                        }
                        if (j2 != 0) {
                            if (z5) {
                            }
                            j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                        }
                        if (z5) {
                        }
                        i3 = z5 ? 0 : 8;
                    }
                }
            }
            z = false;
            if ((j & 1540) != 0) {
                if (rocketAddressViewData == null) {
                }
                updateRegistration(2, (Observable) backButtonEnabled);
                if (backButtonEnabled != null) {
                    z2 = backButtonEnabled.get();
                    if ((j & 1544) != 0) {
                        if (rocketAddressViewData == null) {
                        }
                        updateRegistration(3, (Observable) addressTextHint);
                        if (addressTextHint != null) {
                            charSequence = (String) addressTextHint.get();
                            j2 = j & 1552;
                            if (j2 != 0) {
                                if (rocketAddressViewData == null) {
                                }
                                updateRegistration(4, (Observable) backButtonVisible);
                                if (backButtonVisible == null) {
                                    z3 = backButtonVisible.get();
                                } else {
                                    z3 = false;
                                }
                                if (j2 != 0) {
                                    if (z3) {
                                    }
                                    j = z3 ? j | PlaybackStateCompat.ACTION_PREPARE : j | PlaybackStateCompat.ACTION_PLAY_FROM_URI;
                                }
                                if (!z3) {
                                    i = 8;
                                    if ((j & 1568) != 0) {
                                        if (rocketAddressViewData == null) {
                                        }
                                        updateRegistration(5, (Observable) backButtonColor);
                                        if (backButtonColor != null) {
                                            drawable2 = (ColorDrawable) backButtonColor.get();
                                            j3 = j & 1600;
                                            if (j3 == 0) {
                                                if (rocketAddressViewData == null) {
                                                }
                                                updateRegistration(6, (Observable) errorVisible);
                                                if (errorVisible == null) {
                                                    z4 = errorVisible.get();
                                                } else {
                                                    z4 = false;
                                                }
                                                if (j3 == 0) {
                                                    if (z4) {
                                                    }
                                                }
                                                if (z4) {
                                                }
                                                i2 = z4 ? 0 : 8;
                                                j = j3;
                                            } else {
                                                i2 = 0;
                                            }
                                            j2 = j & 1664;
                                            if (j2 == 0) {
                                                if (rocketAddressViewData != null) {
                                                    observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                                }
                                                observableBoolean2 = observableBoolean;
                                                updateRegistration(7, (Observable) observableBoolean2);
                                                if (observableBoolean2 == null) {
                                                    z5 = observableBoolean2.get();
                                                } else {
                                                    z5 = false;
                                                }
                                                if (j2 != 0) {
                                                    if (z5) {
                                                    }
                                                    j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                                }
                                                if (z5) {
                                                }
                                                i3 = z5 ? 0 : 8;
                                            } else {
                                                i3 = 0;
                                            }
                                        }
                                    }
                                    drawable2 = null;
                                    j3 = j & 1600;
                                    if (j3 == 0) {
                                        i2 = 0;
                                    } else {
                                        if (rocketAddressViewData == null) {
                                        }
                                        updateRegistration(6, (Observable) errorVisible);
                                        if (errorVisible == null) {
                                            z4 = false;
                                        } else {
                                            z4 = errorVisible.get();
                                        }
                                        if (j3 == 0) {
                                        }
                                        if (z4) {
                                        }
                                        i2 = z4 ? 0 : 8;
                                        j = j3;
                                    }
                                    j2 = j & 1664;
                                    if (j2 == 0) {
                                        i3 = 0;
                                    } else {
                                        if (rocketAddressViewData != null) {
                                            observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                        }
                                        observableBoolean2 = observableBoolean;
                                        updateRegistration(7, (Observable) observableBoolean2);
                                        if (observableBoolean2 == null) {
                                            z5 = false;
                                        } else {
                                            z5 = observableBoolean2.get();
                                        }
                                        if (j2 != 0) {
                                            if (z5) {
                                            }
                                            j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                        }
                                        if (z5) {
                                        }
                                        i3 = z5 ? 0 : 8;
                                    }
                                }
                            }
                            i = 0;
                            if ((j & 1568) != 0) {
                                if (rocketAddressViewData == null) {
                                }
                                updateRegistration(5, (Observable) backButtonColor);
                                if (backButtonColor != null) {
                                    drawable2 = (ColorDrawable) backButtonColor.get();
                                    j3 = j & 1600;
                                    if (j3 == 0) {
                                        if (rocketAddressViewData == null) {
                                        }
                                        updateRegistration(6, (Observable) errorVisible);
                                        if (errorVisible == null) {
                                            z4 = errorVisible.get();
                                        } else {
                                            z4 = false;
                                        }
                                        if (j3 == 0) {
                                            if (z4) {
                                            }
                                        }
                                        if (z4) {
                                        }
                                        i2 = z4 ? 0 : 8;
                                        j = j3;
                                    } else {
                                        i2 = 0;
                                    }
                                    j2 = j & 1664;
                                    if (j2 == 0) {
                                        if (rocketAddressViewData != null) {
                                            observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                        }
                                        observableBoolean2 = observableBoolean;
                                        updateRegistration(7, (Observable) observableBoolean2);
                                        if (observableBoolean2 == null) {
                                            z5 = observableBoolean2.get();
                                        } else {
                                            z5 = false;
                                        }
                                        if (j2 != 0) {
                                            if (z5) {
                                            }
                                            j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                        }
                                        if (z5) {
                                        }
                                        i3 = z5 ? 0 : 8;
                                    } else {
                                        i3 = 0;
                                    }
                                }
                            }
                            drawable2 = null;
                            j3 = j & 1600;
                            if (j3 == 0) {
                                i2 = 0;
                            } else {
                                if (rocketAddressViewData == null) {
                                }
                                updateRegistration(6, (Observable) errorVisible);
                                if (errorVisible == null) {
                                    z4 = false;
                                } else {
                                    z4 = errorVisible.get();
                                }
                                if (j3 == 0) {
                                }
                                if (z4) {
                                }
                                i2 = z4 ? 0 : 8;
                                j = j3;
                            }
                            j2 = j & 1664;
                            if (j2 == 0) {
                                i3 = 0;
                            } else {
                                if (rocketAddressViewData != null) {
                                    observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                }
                                observableBoolean2 = observableBoolean;
                                updateRegistration(7, (Observable) observableBoolean2);
                                if (observableBoolean2 == null) {
                                    z5 = false;
                                } else {
                                    z5 = observableBoolean2.get();
                                }
                                if (j2 != 0) {
                                    if (z5) {
                                    }
                                    j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                }
                                if (z5) {
                                }
                                i3 = z5 ? 0 : 8;
                            }
                        }
                    }
                    charSequence = null;
                    j2 = j & 1552;
                    if (j2 != 0) {
                        if (rocketAddressViewData == null) {
                        }
                        updateRegistration(4, (Observable) backButtonVisible);
                        if (backButtonVisible == null) {
                            z3 = false;
                        } else {
                            z3 = backButtonVisible.get();
                        }
                        if (j2 != 0) {
                            if (z3) {
                            }
                            j = z3 ? j | PlaybackStateCompat.ACTION_PREPARE : j | PlaybackStateCompat.ACTION_PLAY_FROM_URI;
                        }
                        if (!z3) {
                            i = 8;
                            if ((j & 1568) != 0) {
                                if (rocketAddressViewData == null) {
                                }
                                updateRegistration(5, (Observable) backButtonColor);
                                if (backButtonColor != null) {
                                    drawable2 = (ColorDrawable) backButtonColor.get();
                                    j3 = j & 1600;
                                    if (j3 == 0) {
                                        if (rocketAddressViewData == null) {
                                        }
                                        updateRegistration(6, (Observable) errorVisible);
                                        if (errorVisible == null) {
                                            z4 = errorVisible.get();
                                        } else {
                                            z4 = false;
                                        }
                                        if (j3 == 0) {
                                            if (z4) {
                                            }
                                        }
                                        if (z4) {
                                        }
                                        i2 = z4 ? 0 : 8;
                                        j = j3;
                                    } else {
                                        i2 = 0;
                                    }
                                    j2 = j & 1664;
                                    if (j2 == 0) {
                                        if (rocketAddressViewData != null) {
                                            observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                        }
                                        observableBoolean2 = observableBoolean;
                                        updateRegistration(7, (Observable) observableBoolean2);
                                        if (observableBoolean2 == null) {
                                            z5 = observableBoolean2.get();
                                        } else {
                                            z5 = false;
                                        }
                                        if (j2 != 0) {
                                            if (z5) {
                                            }
                                            j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                        }
                                        if (z5) {
                                        }
                                        i3 = z5 ? 0 : 8;
                                    } else {
                                        i3 = 0;
                                    }
                                }
                            }
                            drawable2 = null;
                            j3 = j & 1600;
                            if (j3 == 0) {
                                i2 = 0;
                            } else {
                                if (rocketAddressViewData == null) {
                                }
                                updateRegistration(6, (Observable) errorVisible);
                                if (errorVisible == null) {
                                    z4 = false;
                                } else {
                                    z4 = errorVisible.get();
                                }
                                if (j3 == 0) {
                                }
                                if (z4) {
                                }
                                i2 = z4 ? 0 : 8;
                                j = j3;
                            }
                            j2 = j & 1664;
                            if (j2 == 0) {
                                i3 = 0;
                            } else {
                                if (rocketAddressViewData != null) {
                                    observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                }
                                observableBoolean2 = observableBoolean;
                                updateRegistration(7, (Observable) observableBoolean2);
                                if (observableBoolean2 == null) {
                                    z5 = false;
                                } else {
                                    z5 = observableBoolean2.get();
                                }
                                if (j2 != 0) {
                                    if (z5) {
                                    }
                                    j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                }
                                if (z5) {
                                }
                                i3 = z5 ? 0 : 8;
                            }
                        }
                    }
                    i = 0;
                    if ((j & 1568) != 0) {
                        if (rocketAddressViewData == null) {
                        }
                        updateRegistration(5, (Observable) backButtonColor);
                        if (backButtonColor != null) {
                            drawable2 = (ColorDrawable) backButtonColor.get();
                            j3 = j & 1600;
                            if (j3 == 0) {
                                if (rocketAddressViewData == null) {
                                }
                                updateRegistration(6, (Observable) errorVisible);
                                if (errorVisible == null) {
                                    z4 = errorVisible.get();
                                } else {
                                    z4 = false;
                                }
                                if (j3 == 0) {
                                    if (z4) {
                                    }
                                }
                                if (z4) {
                                }
                                i2 = z4 ? 0 : 8;
                                j = j3;
                            } else {
                                i2 = 0;
                            }
                            j2 = j & 1664;
                            if (j2 == 0) {
                                if (rocketAddressViewData != null) {
                                    observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                }
                                observableBoolean2 = observableBoolean;
                                updateRegistration(7, (Observable) observableBoolean2);
                                if (observableBoolean2 == null) {
                                    z5 = observableBoolean2.get();
                                } else {
                                    z5 = false;
                                }
                                if (j2 != 0) {
                                    if (z5) {
                                    }
                                    j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                }
                                if (z5) {
                                }
                                i3 = z5 ? 0 : 8;
                            } else {
                                i3 = 0;
                            }
                        }
                    }
                    drawable2 = null;
                    j3 = j & 1600;
                    if (j3 == 0) {
                        i2 = 0;
                    } else {
                        if (rocketAddressViewData == null) {
                        }
                        updateRegistration(6, (Observable) errorVisible);
                        if (errorVisible == null) {
                            z4 = false;
                        } else {
                            z4 = errorVisible.get();
                        }
                        if (j3 == 0) {
                        }
                        if (z4) {
                        }
                        i2 = z4 ? 0 : 8;
                        j = j3;
                    }
                    j2 = j & 1664;
                    if (j2 == 0) {
                        i3 = 0;
                    } else {
                        if (rocketAddressViewData != null) {
                            observableBoolean = rocketAddressViewData.getNextButtonVisible();
                        }
                        observableBoolean2 = observableBoolean;
                        updateRegistration(7, (Observable) observableBoolean2);
                        if (observableBoolean2 == null) {
                            z5 = false;
                        } else {
                            z5 = observableBoolean2.get();
                        }
                        if (j2 != 0) {
                            if (z5) {
                            }
                            j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                        }
                        if (z5) {
                        }
                        i3 = z5 ? 0 : 8;
                    }
                }
            }
            z2 = false;
            if ((j & 1544) != 0) {
                if (rocketAddressViewData == null) {
                }
                updateRegistration(3, (Observable) addressTextHint);
                if (addressTextHint != null) {
                    charSequence = (String) addressTextHint.get();
                    j2 = j & 1552;
                    if (j2 != 0) {
                        if (rocketAddressViewData == null) {
                        }
                        updateRegistration(4, (Observable) backButtonVisible);
                        if (backButtonVisible == null) {
                            z3 = backButtonVisible.get();
                        } else {
                            z3 = false;
                        }
                        if (j2 != 0) {
                            if (z3) {
                            }
                            j = z3 ? j | PlaybackStateCompat.ACTION_PREPARE : j | PlaybackStateCompat.ACTION_PLAY_FROM_URI;
                        }
                        if (!z3) {
                            i = 8;
                            if ((j & 1568) != 0) {
                                if (rocketAddressViewData == null) {
                                }
                                updateRegistration(5, (Observable) backButtonColor);
                                if (backButtonColor != null) {
                                    drawable2 = (ColorDrawable) backButtonColor.get();
                                    j3 = j & 1600;
                                    if (j3 == 0) {
                                        if (rocketAddressViewData == null) {
                                        }
                                        updateRegistration(6, (Observable) errorVisible);
                                        if (errorVisible == null) {
                                            z4 = errorVisible.get();
                                        } else {
                                            z4 = false;
                                        }
                                        if (j3 == 0) {
                                            if (z4) {
                                            }
                                        }
                                        if (z4) {
                                        }
                                        i2 = z4 ? 0 : 8;
                                        j = j3;
                                    } else {
                                        i2 = 0;
                                    }
                                    j2 = j & 1664;
                                    if (j2 == 0) {
                                        if (rocketAddressViewData != null) {
                                            observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                        }
                                        observableBoolean2 = observableBoolean;
                                        updateRegistration(7, (Observable) observableBoolean2);
                                        if (observableBoolean2 == null) {
                                            z5 = observableBoolean2.get();
                                        } else {
                                            z5 = false;
                                        }
                                        if (j2 != 0) {
                                            if (z5) {
                                            }
                                            j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                        }
                                        if (z5) {
                                        }
                                        i3 = z5 ? 0 : 8;
                                    } else {
                                        i3 = 0;
                                    }
                                }
                            }
                            drawable2 = null;
                            j3 = j & 1600;
                            if (j3 == 0) {
                                i2 = 0;
                            } else {
                                if (rocketAddressViewData == null) {
                                }
                                updateRegistration(6, (Observable) errorVisible);
                                if (errorVisible == null) {
                                    z4 = false;
                                } else {
                                    z4 = errorVisible.get();
                                }
                                if (j3 == 0) {
                                }
                                if (z4) {
                                }
                                i2 = z4 ? 0 : 8;
                                j = j3;
                            }
                            j2 = j & 1664;
                            if (j2 == 0) {
                                i3 = 0;
                            } else {
                                if (rocketAddressViewData != null) {
                                    observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                }
                                observableBoolean2 = observableBoolean;
                                updateRegistration(7, (Observable) observableBoolean2);
                                if (observableBoolean2 == null) {
                                    z5 = false;
                                } else {
                                    z5 = observableBoolean2.get();
                                }
                                if (j2 != 0) {
                                    if (z5) {
                                    }
                                    j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                }
                                if (z5) {
                                }
                                i3 = z5 ? 0 : 8;
                            }
                        }
                    }
                    i = 0;
                    if ((j & 1568) != 0) {
                        if (rocketAddressViewData == null) {
                        }
                        updateRegistration(5, (Observable) backButtonColor);
                        if (backButtonColor != null) {
                            drawable2 = (ColorDrawable) backButtonColor.get();
                            j3 = j & 1600;
                            if (j3 == 0) {
                                if (rocketAddressViewData == null) {
                                }
                                updateRegistration(6, (Observable) errorVisible);
                                if (errorVisible == null) {
                                    z4 = errorVisible.get();
                                } else {
                                    z4 = false;
                                }
                                if (j3 == 0) {
                                    if (z4) {
                                    }
                                }
                                if (z4) {
                                }
                                i2 = z4 ? 0 : 8;
                                j = j3;
                            } else {
                                i2 = 0;
                            }
                            j2 = j & 1664;
                            if (j2 == 0) {
                                if (rocketAddressViewData != null) {
                                    observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                }
                                observableBoolean2 = observableBoolean;
                                updateRegistration(7, (Observable) observableBoolean2);
                                if (observableBoolean2 == null) {
                                    z5 = observableBoolean2.get();
                                } else {
                                    z5 = false;
                                }
                                if (j2 != 0) {
                                    if (z5) {
                                    }
                                    j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                }
                                if (z5) {
                                }
                                i3 = z5 ? 0 : 8;
                            } else {
                                i3 = 0;
                            }
                        }
                    }
                    drawable2 = null;
                    j3 = j & 1600;
                    if (j3 == 0) {
                        i2 = 0;
                    } else {
                        if (rocketAddressViewData == null) {
                        }
                        updateRegistration(6, (Observable) errorVisible);
                        if (errorVisible == null) {
                            z4 = false;
                        } else {
                            z4 = errorVisible.get();
                        }
                        if (j3 == 0) {
                        }
                        if (z4) {
                        }
                        i2 = z4 ? 0 : 8;
                        j = j3;
                    }
                    j2 = j & 1664;
                    if (j2 == 0) {
                        i3 = 0;
                    } else {
                        if (rocketAddressViewData != null) {
                            observableBoolean = rocketAddressViewData.getNextButtonVisible();
                        }
                        observableBoolean2 = observableBoolean;
                        updateRegistration(7, (Observable) observableBoolean2);
                        if (observableBoolean2 == null) {
                            z5 = false;
                        } else {
                            z5 = observableBoolean2.get();
                        }
                        if (j2 != 0) {
                            if (z5) {
                            }
                            j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                        }
                        if (z5) {
                        }
                        i3 = z5 ? 0 : 8;
                    }
                }
            }
            charSequence = null;
            j2 = j & 1552;
            if (j2 != 0) {
                if (rocketAddressViewData == null) {
                }
                updateRegistration(4, (Observable) backButtonVisible);
                if (backButtonVisible == null) {
                    z3 = false;
                } else {
                    z3 = backButtonVisible.get();
                }
                if (j2 != 0) {
                    if (z3) {
                    }
                    j = z3 ? j | PlaybackStateCompat.ACTION_PREPARE : j | PlaybackStateCompat.ACTION_PLAY_FROM_URI;
                }
                if (!z3) {
                    i = 8;
                    if ((j & 1568) != 0) {
                        if (rocketAddressViewData == null) {
                        }
                        updateRegistration(5, (Observable) backButtonColor);
                        if (backButtonColor != null) {
                            drawable2 = (ColorDrawable) backButtonColor.get();
                            j3 = j & 1600;
                            if (j3 == 0) {
                                if (rocketAddressViewData == null) {
                                }
                                updateRegistration(6, (Observable) errorVisible);
                                if (errorVisible == null) {
                                    z4 = errorVisible.get();
                                } else {
                                    z4 = false;
                                }
                                if (j3 == 0) {
                                    if (z4) {
                                    }
                                }
                                if (z4) {
                                }
                                i2 = z4 ? 0 : 8;
                                j = j3;
                            } else {
                                i2 = 0;
                            }
                            j2 = j & 1664;
                            if (j2 == 0) {
                                if (rocketAddressViewData != null) {
                                    observableBoolean = rocketAddressViewData.getNextButtonVisible();
                                }
                                observableBoolean2 = observableBoolean;
                                updateRegistration(7, (Observable) observableBoolean2);
                                if (observableBoolean2 == null) {
                                    z5 = observableBoolean2.get();
                                } else {
                                    z5 = false;
                                }
                                if (j2 != 0) {
                                    if (z5) {
                                    }
                                    j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                                }
                                if (z5) {
                                }
                                i3 = z5 ? 0 : 8;
                            } else {
                                i3 = 0;
                            }
                        }
                    }
                    drawable2 = null;
                    j3 = j & 1600;
                    if (j3 == 0) {
                        i2 = 0;
                    } else {
                        if (rocketAddressViewData == null) {
                        }
                        updateRegistration(6, (Observable) errorVisible);
                        if (errorVisible == null) {
                            z4 = false;
                        } else {
                            z4 = errorVisible.get();
                        }
                        if (j3 == 0) {
                        }
                        if (z4) {
                        }
                        i2 = z4 ? 0 : 8;
                        j = j3;
                    }
                    j2 = j & 1664;
                    if (j2 == 0) {
                        i3 = 0;
                    } else {
                        if (rocketAddressViewData != null) {
                            observableBoolean = rocketAddressViewData.getNextButtonVisible();
                        }
                        observableBoolean2 = observableBoolean;
                        updateRegistration(7, (Observable) observableBoolean2);
                        if (observableBoolean2 == null) {
                            z5 = false;
                        } else {
                            z5 = observableBoolean2.get();
                        }
                        if (j2 != 0) {
                            if (z5) {
                            }
                            j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                        }
                        if (z5) {
                        }
                        i3 = z5 ? 0 : 8;
                    }
                }
            }
            i = 0;
            if ((j & 1568) != 0) {
                if (rocketAddressViewData == null) {
                }
                updateRegistration(5, (Observable) backButtonColor);
                if (backButtonColor != null) {
                    drawable2 = (ColorDrawable) backButtonColor.get();
                    j3 = j & 1600;
                    if (j3 == 0) {
                        if (rocketAddressViewData == null) {
                        }
                        updateRegistration(6, (Observable) errorVisible);
                        if (errorVisible == null) {
                            z4 = errorVisible.get();
                        } else {
                            z4 = false;
                        }
                        if (j3 == 0) {
                            if (z4) {
                            }
                        }
                        if (z4) {
                        }
                        i2 = z4 ? 0 : 8;
                        j = j3;
                    } else {
                        i2 = 0;
                    }
                    j2 = j & 1664;
                    if (j2 == 0) {
                        if (rocketAddressViewData != null) {
                            observableBoolean = rocketAddressViewData.getNextButtonVisible();
                        }
                        observableBoolean2 = observableBoolean;
                        updateRegistration(7, (Observable) observableBoolean2);
                        if (observableBoolean2 == null) {
                            z5 = observableBoolean2.get();
                        } else {
                            z5 = false;
                        }
                        if (j2 != 0) {
                            if (z5) {
                            }
                            j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                        }
                        if (z5) {
                        }
                        i3 = z5 ? 0 : 8;
                    } else {
                        i3 = 0;
                    }
                }
            }
            drawable2 = null;
            j3 = j & 1600;
            if (j3 == 0) {
                i2 = 0;
            } else {
                if (rocketAddressViewData == null) {
                }
                updateRegistration(6, (Observable) errorVisible);
                if (errorVisible == null) {
                    z4 = false;
                } else {
                    z4 = errorVisible.get();
                }
                if (j3 == 0) {
                }
                if (z4) {
                }
                i2 = z4 ? 0 : 8;
                j = j3;
            }
            j2 = j & 1664;
            if (j2 == 0) {
                i3 = 0;
            } else {
                if (rocketAddressViewData != null) {
                    observableBoolean = rocketAddressViewData.getNextButtonVisible();
                }
                observableBoolean2 = observableBoolean;
                updateRegistration(7, (Observable) observableBoolean2);
                if (observableBoolean2 == null) {
                    z5 = false;
                } else {
                    z5 = observableBoolean2.get();
                }
                if (j2 != 0) {
                    if (z5) {
                    }
                    j = z5 ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                }
                if (z5) {
                }
                i3 = z5 ? 0 : 8;
            }
        } else {
            drawable = null;
            charSequence = drawable;
            drawable2 = charSequence;
            i3 = 0;
            z = false;
            z2 = false;
            i = 0;
            i2 = 0;
        }
        if ((j & 1544) != 0) {
            widgetAddressViewBinding.addresText.setHint(charSequence);
        }
        if ((j & 1538) != 0) {
            widgetAddressViewBinding.back.setEnabled(z);
        }
        if ((j & PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) != 0) {
            widgetAddressViewBinding.back.setOnClickListener(widgetAddressViewBinding.mCallback30);
            widgetAddressViewBinding.next.setOnClickListener(widgetAddressViewBinding.mCallback31);
        }
        if ((j & 1568) != 0) {
            ViewBindingAdapter.setBackground(widgetAddressViewBinding.backLayout, drawable2);
        }
        if ((j & 1552) != 0) {
            widgetAddressViewBinding.backLayout.setVisibility(i);
        }
        if ((j & 1600) != 0) {
            widgetAddressViewBinding.mboundView6.setVisibility(i2);
        }
        if ((j & 1540) != 0) {
            widgetAddressViewBinding.next.setEnabled(z2);
        }
        if ((j & 1537) != 0) {
            ViewBindingAdapter.setBackground(widgetAddressViewBinding.nextLayout, drawable);
        }
        if ((j & 1664) != 0) {
            widgetAddressViewBinding.nextLayout.setVisibility(i3);
        }
    }

    public final void _internalCallbackOnClick(int i, View view) {
        view = null;
        switch (i) {
            case 1:
                i = this.mListener;
                if (i != 0) {
                    view = 1;
                }
                if (view != null) {
                    i.onBackToAddressClicked();
                    return;
                }
                break;
            case 2:
                i = this.mListener;
                RocketAddressViewData rocketAddressViewData = this.mData;
                if ((i != 0 ? 1 : null) != null) {
                    if (rocketAddressViewData != null) {
                        view = 1;
                    }
                    if (view != null) {
                        i.onNextClicked(rocketAddressViewData.isAddress());
                        break;
                    }
                }
                break;
            default:
                break;
        }
    }

    public static WidgetAddressViewBinding inflate$3514d18(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        return (WidgetAddressViewBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.widget_address_view, viewGroup, true, DataBindingUtil.getDefaultComponent());
    }
}
