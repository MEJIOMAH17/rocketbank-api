package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ObservableBoolean;
import android.databinding.ObservableField;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.databinding.adapters.TextViewBindingAdapter;
import android.databinding.generated.callback.OnClickListener.Listener;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.root.chat.base.ActionListener;
import ru.rocketbank.r2d2.root.chat.outgoing.binding.ImageData;

public class LayoutMessageOutImageBinding extends ViewDataBinding implements Listener {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final FrameLayout content;
    public final ImageView contentImage;
    public final ProgressBar indeterminateProgress;
    private final OnClickListener mCallback47;
    private long mDirtyFlags = -1;
    private ImageData mImageData;
    private ActionListener mListener;
    private final LinearLayout mboundView0;
    private final RocketTextView mboundView3;
    public final RocketTextView retry;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.content, 4);
        sViewsWithIds.put(C0859R.id.retry, 5);
    }

    public LayoutMessageOutImageBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 3);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 6, sIncludes, sViewsWithIds);
        this.content = (FrameLayout) dataBindingComponent[4];
        this.contentImage = (ImageView) dataBindingComponent[1];
        this.contentImage.setTag(null);
        this.indeterminateProgress = (ProgressBar) dataBindingComponent[2];
        this.indeterminateProgress.setTag(null);
        this.mboundView0 = (LinearLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.mboundView3 = (RocketTextView) dataBindingComponent[3];
        this.mboundView3.setTag(null);
        this.retry = (RocketTextView) dataBindingComponent[5];
        setRootTag(view);
        this.mCallback47 = new android.databinding.generated.callback.OnClickListener(this, 1);
        invalidateAll();
    }

    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 32;
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
        if (55 == i) {
            setListener((ActionListener) obj);
        } else if (44 != i) {
            return false;
        } else {
            setImageData((ImageData) obj);
        }
        return true;
    }

    public void setListener(ActionListener actionListener) {
        this.mListener = actionListener;
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        notifyPropertyChanged(55);
        super.requestRebind();
    }

    public ActionListener getListener() {
        return this.mListener;
    }

    public void setImageData(ImageData imageData) {
        this.mImageData = imageData;
        synchronized (this) {
            this.mDirtyFlags |= 16;
        }
        notifyPropertyChanged(44);
        super.requestRebind();
    }

    public ImageData getImageData() {
        return this.mImageData;
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeImageDataProgressVisible((ObservableBoolean) obj, i2);
            case 1:
                return onChangeImageDataStatusVisible((ObservableBoolean) obj, i2);
            case 2:
                return onChangeImageDataStatusText((ObservableField) obj, i2);
            default:
                return false;
        }
    }

    private boolean onChangeImageDataProgressVisible(ObservableBoolean observableBoolean, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    private boolean onChangeImageDataStatusVisible(ObservableBoolean observableBoolean, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        return true;
    }

    private boolean onChangeImageDataStatusText(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        return true;
    }

    protected void executeBindings() {
        int i;
        int i2;
        CharSequence charSequence;
        LayoutMessageOutImageBinding layoutMessageOutImageBinding = this;
        synchronized (this) {
            try {
                long j = layoutMessageOutImageBinding.mDirtyFlags;
                layoutMessageOutImageBinding.mDirtyFlags = 0;
            } catch (Throwable th) {
                while (true) {
                    Throwable th2 = th;
                }
            }
        }
        ImageData imageData = layoutMessageOutImageBinding.mImageData;
        if ((j & 55) != 0) {
            Object statusVisible;
            boolean z;
            long j2;
            long j3 = j & 49;
            int i3 = 8;
            if (j3 != 0) {
                boolean z2;
                Object progressVisible = imageData != null ? imageData.getProgressVisible() : null;
                updateRegistration(0, progressVisible);
                if (progressVisible != null) {
                    z2 = progressVisible.get();
                } else {
                    z2 = false;
                }
                if (j3 != 0) {
                    j = z2 ? j | 128 : j | 64;
                }
                if (!z2) {
                    i = 8;
                    j3 = j & 50;
                    if (j3 == 0) {
                        statusVisible = imageData == null ? imageData.getStatusVisible() : null;
                        updateRegistration(1, statusVisible);
                        if (statusVisible == null) {
                            z = statusVisible.get();
                        } else {
                            z = false;
                        }
                        j2 = j3 == 0 ? z ? j | 512 : j | 256 : j;
                        if (z) {
                            i3 = 0;
                        }
                        i2 = i3;
                        j = j2;
                    } else {
                        i2 = 0;
                    }
                    if ((j & 52) != 0) {
                        statusVisible = imageData == null ? imageData.getStatusText() : null;
                        updateRegistration(2, statusVisible);
                        if (statusVisible != null) {
                            charSequence = (String) statusVisible.get();
                        }
                    }
                    charSequence = null;
                }
            }
            i = 0;
            j3 = j & 50;
            if (j3 == 0) {
                i2 = 0;
            } else {
                if (imageData == null) {
                }
                updateRegistration(1, statusVisible);
                if (statusVisible == null) {
                    z = false;
                } else {
                    z = statusVisible.get();
                }
                if (j3 == 0) {
                }
                if (z) {
                    i3 = 0;
                }
                i2 = i3;
                j = j2;
            }
            if ((j & 52) != 0) {
                if (imageData == null) {
                }
                updateRegistration(2, statusVisible);
                if (statusVisible != null) {
                    charSequence = (String) statusVisible.get();
                }
            }
            charSequence = null;
        } else {
            i = 0;
            charSequence = null;
            i2 = 0;
        }
        if ((j & 32) != 0) {
            layoutMessageOutImageBinding.contentImage.setOnClickListener(layoutMessageOutImageBinding.mCallback47);
        }
        if ((j & 49) != 0) {
            layoutMessageOutImageBinding.indeterminateProgress.setVisibility(i);
        }
        if ((j & 52) != 0) {
            TextViewBindingAdapter.setText(layoutMessageOutImageBinding.mboundView3, charSequence);
        }
        if ((j & 50) != 0) {
            layoutMessageOutImageBinding.mboundView3.setVisibility(i2);
        }
    }

    public final void _internalCallbackOnClick(int i, View view) {
        i = this.mListener;
        if ((i != 0 ? true : null) != null) {
            i.onClick();
        }
    }

    public static LayoutMessageOutImageBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static LayoutMessageOutImageBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (LayoutMessageOutImageBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.layout_message_out_image, viewGroup, z, dataBindingComponent);
    }

    public static LayoutMessageOutImageBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static LayoutMessageOutImageBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.layout_message_out_image, null, false), dataBindingComponent);
    }

    public static LayoutMessageOutImageBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static LayoutMessageOutImageBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/layout_message_out_image_0".equals(view.getTag())) {
            return new LayoutMessageOutImageBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
