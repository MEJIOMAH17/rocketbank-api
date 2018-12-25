package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ObservableBoolean;
import android.databinding.ObservableField;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.databinding.adapters.ImageViewBindingAdapter;
import android.databinding.adapters.TextViewBindingAdapter;
import android.databinding.generated.callback.OnClickListener.Listener;
import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.activities.sound.SoundItemData;

public class LayoutSoundItemBinding extends ViewDataBinding implements Listener {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds = null;
    private final OnClickListener mCallback46;
    private SoundItemData mData;
    private long mDirtyFlags = -1;
    private final RelativeLayout mboundView0;
    private final RocketTextView mboundView1;
    private final ImageButton mboundView2;

    public LayoutSoundItemBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 4);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 3, sIncludes, sViewsWithIds);
        this.mboundView0 = (RelativeLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.mboundView1 = (RocketTextView) dataBindingComponent[1];
        this.mboundView1.setTag(null);
        this.mboundView2 = (ImageButton) dataBindingComponent[2];
        this.mboundView2.setTag(null);
        setRootTag(view);
        this.mCallback46 = new android.databinding.generated.callback.OnClickListener(this, 1);
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
        if (24 != i) {
            return false;
        }
        setData((SoundItemData) obj);
        return true;
    }

    public void setData(SoundItemData soundItemData) {
        this.mData = soundItemData;
        synchronized (this) {
            this.mDirtyFlags |= 16;
        }
        notifyPropertyChanged(24);
        super.requestRebind();
    }

    public SoundItemData getData() {
        return this.mData;
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeDataPlayImage((ObservableField) obj, i2);
            case 1:
                return onChangeDataStopImage((ObservableField) obj, i2);
            case 2:
                return onChangeDataPlaying((ObservableBoolean) obj, i2);
            case 3:
                return onChangeDataSoundName((ObservableField) obj, i2);
            default:
                return false;
        }
    }

    private boolean onChangeDataPlayImage(ObservableField<Drawable> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    private boolean onChangeDataStopImage(ObservableField<Drawable> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        return true;
    }

    private boolean onChangeDataPlaying(ObservableBoolean observableBoolean, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        return true;
    }

    private boolean onChangeDataSoundName(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        return true;
    }

    protected void executeBindings() {
        long j;
        boolean z;
        CharSequence charSequence;
        Object playImage;
        Drawable drawable;
        Object stopImage;
        Drawable drawable2;
        long j2;
        LayoutSoundItemBinding layoutSoundItemBinding = this;
        synchronized (this) {
            try {
                j = layoutSoundItemBinding.mDirtyFlags;
                layoutSoundItemBinding.mDirtyFlags = 0;
            } catch (Throwable th) {
                while (true) {
                    Throwable th2 = th;
                }
            }
        }
        SoundItemData soundItemData = layoutSoundItemBinding.mData;
        if ((j & 63) != 0) {
            long j3 = j & 55;
            if (j3 != 0) {
                Object playing = soundItemData != null ? soundItemData.getPlaying() : null;
                updateRegistration(2, playing);
                if (playing != null) {
                    z = playing.get();
                } else {
                    z = false;
                }
                if (j3 != 0) {
                    j = z ? j | 128 : j | 64;
                }
            } else {
                z = false;
            }
            if ((j & 56) != 0) {
                Object soundName = soundItemData != null ? soundItemData.getSoundName() : null;
                updateRegistration(3, soundName);
                if (soundName != null) {
                    charSequence = (String) soundName.get();
                    if ((j & 64) != 0) {
                        playImage = soundItemData == null ? soundItemData.getPlayImage() : null;
                        updateRegistration(0, playImage);
                        if (playImage != null) {
                            drawable = (Drawable) playImage.get();
                            if ((j & 128) != 0) {
                                stopImage = soundItemData == null ? soundItemData.getStopImage() : null;
                                updateRegistration(1, stopImage);
                                if (stopImage != null) {
                                    drawable2 = (Drawable) stopImage.get();
                                    j2 = j & 55;
                                    if (j2 == 0) {
                                        drawable2 = null;
                                    } else if (!z) {
                                        drawable2 = drawable;
                                    }
                                    if ((j & 56) != 0) {
                                        TextViewBindingAdapter.setText(layoutSoundItemBinding.mboundView1, charSequence);
                                    }
                                    if ((j & 32) != 0) {
                                        layoutSoundItemBinding.mboundView2.setOnClickListener(layoutSoundItemBinding.mCallback46);
                                    }
                                    if (j2 == 0) {
                                        ImageViewBindingAdapter.setImageDrawable(layoutSoundItemBinding.mboundView2, drawable2);
                                    }
                                }
                            }
                            drawable2 = null;
                            j2 = j & 55;
                            if (j2 == 0) {
                                drawable2 = null;
                            } else if (!z) {
                                drawable2 = drawable;
                            }
                            if ((j & 56) != 0) {
                                TextViewBindingAdapter.setText(layoutSoundItemBinding.mboundView1, charSequence);
                            }
                            if ((j & 32) != 0) {
                                layoutSoundItemBinding.mboundView2.setOnClickListener(layoutSoundItemBinding.mCallback46);
                            }
                            if (j2 == 0) {
                                ImageViewBindingAdapter.setImageDrawable(layoutSoundItemBinding.mboundView2, drawable2);
                            }
                        }
                    }
                    drawable = null;
                    if ((j & 128) != 0) {
                        if (soundItemData == null) {
                        }
                        updateRegistration(1, stopImage);
                        if (stopImage != null) {
                            drawable2 = (Drawable) stopImage.get();
                            j2 = j & 55;
                            if (j2 == 0) {
                                drawable2 = null;
                            } else if (!z) {
                                drawable2 = drawable;
                            }
                            if ((j & 56) != 0) {
                                TextViewBindingAdapter.setText(layoutSoundItemBinding.mboundView1, charSequence);
                            }
                            if ((j & 32) != 0) {
                                layoutSoundItemBinding.mboundView2.setOnClickListener(layoutSoundItemBinding.mCallback46);
                            }
                            if (j2 == 0) {
                                ImageViewBindingAdapter.setImageDrawable(layoutSoundItemBinding.mboundView2, drawable2);
                            }
                        }
                    }
                    drawable2 = null;
                    j2 = j & 55;
                    if (j2 == 0) {
                        drawable2 = null;
                    } else if (!z) {
                        drawable2 = drawable;
                    }
                    if ((j & 56) != 0) {
                        TextViewBindingAdapter.setText(layoutSoundItemBinding.mboundView1, charSequence);
                    }
                    if ((j & 32) != 0) {
                        layoutSoundItemBinding.mboundView2.setOnClickListener(layoutSoundItemBinding.mCallback46);
                    }
                    if (j2 == 0) {
                        ImageViewBindingAdapter.setImageDrawable(layoutSoundItemBinding.mboundView2, drawable2);
                    }
                }
            }
        }
        z = false;
        charSequence = null;
        if ((j & 64) != 0) {
            if (soundItemData == null) {
            }
            updateRegistration(0, playImage);
            if (playImage != null) {
                drawable = (Drawable) playImage.get();
                if ((j & 128) != 0) {
                    if (soundItemData == null) {
                    }
                    updateRegistration(1, stopImage);
                    if (stopImage != null) {
                        drawable2 = (Drawable) stopImage.get();
                        j2 = j & 55;
                        if (j2 == 0) {
                            drawable2 = null;
                        } else if (!z) {
                            drawable2 = drawable;
                        }
                        if ((j & 56) != 0) {
                            TextViewBindingAdapter.setText(layoutSoundItemBinding.mboundView1, charSequence);
                        }
                        if ((j & 32) != 0) {
                            layoutSoundItemBinding.mboundView2.setOnClickListener(layoutSoundItemBinding.mCallback46);
                        }
                        if (j2 == 0) {
                            ImageViewBindingAdapter.setImageDrawable(layoutSoundItemBinding.mboundView2, drawable2);
                        }
                    }
                }
                drawable2 = null;
                j2 = j & 55;
                if (j2 == 0) {
                    drawable2 = null;
                } else if (!z) {
                    drawable2 = drawable;
                }
                if ((j & 56) != 0) {
                    TextViewBindingAdapter.setText(layoutSoundItemBinding.mboundView1, charSequence);
                }
                if ((j & 32) != 0) {
                    layoutSoundItemBinding.mboundView2.setOnClickListener(layoutSoundItemBinding.mCallback46);
                }
                if (j2 == 0) {
                    ImageViewBindingAdapter.setImageDrawable(layoutSoundItemBinding.mboundView2, drawable2);
                }
            }
        }
        drawable = null;
        if ((j & 128) != 0) {
            if (soundItemData == null) {
            }
            updateRegistration(1, stopImage);
            if (stopImage != null) {
                drawable2 = (Drawable) stopImage.get();
                j2 = j & 55;
                if (j2 == 0) {
                    drawable2 = null;
                } else if (!z) {
                    drawable2 = drawable;
                }
                if ((j & 56) != 0) {
                    TextViewBindingAdapter.setText(layoutSoundItemBinding.mboundView1, charSequence);
                }
                if ((j & 32) != 0) {
                    layoutSoundItemBinding.mboundView2.setOnClickListener(layoutSoundItemBinding.mCallback46);
                }
                if (j2 == 0) {
                    ImageViewBindingAdapter.setImageDrawable(layoutSoundItemBinding.mboundView2, drawable2);
                }
            }
        }
        drawable2 = null;
        j2 = j & 55;
        if (j2 == 0) {
            drawable2 = null;
        } else if (!z) {
            drawable2 = drawable;
        }
        if ((j & 56) != 0) {
            TextViewBindingAdapter.setText(layoutSoundItemBinding.mboundView1, charSequence);
        }
        if ((j & 32) != 0) {
            layoutSoundItemBinding.mboundView2.setOnClickListener(layoutSoundItemBinding.mCallback46);
        }
        if (j2 == 0) {
            ImageViewBindingAdapter.setImageDrawable(layoutSoundItemBinding.mboundView2, drawable2);
        }
    }

    public final void _internalCallbackOnClick(int i, View view) {
        i = this.mData;
        if ((i != 0 ? true : null) != null) {
            i.mediaClick();
        }
    }

    public static LayoutSoundItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static LayoutSoundItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (LayoutSoundItemBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.layout_sound_item, viewGroup, z, dataBindingComponent);
    }

    public static LayoutSoundItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static LayoutSoundItemBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.layout_sound_item, null, false), dataBindingComponent);
    }

    public static LayoutSoundItemBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static LayoutSoundItemBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/layout_sound_item_0".equals(view.getTag())) {
            return new LayoutSoundItemBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
