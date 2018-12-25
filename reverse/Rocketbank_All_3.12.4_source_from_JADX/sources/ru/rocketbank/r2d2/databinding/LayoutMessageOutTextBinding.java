package ru.rocketbank.r2d2.databinding;

import android.content.res.Resources;
import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ObservableBoolean;
import android.databinding.ObservableField;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.databinding.adapters.TextViewBindingAdapter;
import android.databinding.adapters.ViewBindingAdapter;
import android.graphics.drawable.Drawable;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.root.chat.adapter.LinearBindingAdapter;
import ru.rocketbank.r2d2.root.chat.base.TextMessageData;

public class LayoutMessageOutTextBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds = null;
    private TextMessageData mData;
    private long mDirtyFlags = -1;
    private final LinearLayout mboundView0;
    private final FrameLayout mboundView2;
    private final RocketTextView mboundView3;
    private final RocketTextView mboundView5;
    public final LinearLayout messageBody;
    public final RocketTextView retry;

    public LayoutMessageOutTextBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 6);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 6, sIncludes, sViewsWithIds);
        this.mboundView0 = (LinearLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.mboundView2 = (FrameLayout) dataBindingComponent[2];
        this.mboundView2.setTag(null);
        this.mboundView3 = (RocketTextView) dataBindingComponent[3];
        this.mboundView3.setTag(null);
        this.mboundView5 = (RocketTextView) dataBindingComponent[5];
        this.mboundView5.setTag(null);
        this.messageBody = (LinearLayout) dataBindingComponent[1];
        this.messageBody.setTag(null);
        this.retry = (RocketTextView) dataBindingComponent[4];
        this.retry.setTag(null);
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
        setData((TextMessageData) obj);
        return true;
    }

    public void setData(TextMessageData textMessageData) {
        this.mData = textMessageData;
        synchronized (this) {
            this.mDirtyFlags |= 64;
        }
        notifyPropertyChanged(24);
        super.requestRebind();
    }

    public TextMessageData getData() {
        return this.mData;
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeDataRetryVisible((ObservableBoolean) obj, i2);
            case 1:
                return onChangeDataStatusVisible((ObservableBoolean) obj, i2);
            case 2:
                return onChangeDataMessage((ObservableField) obj, i2);
            case 3:
                return onChangeDataBackground((ObservableField) obj, i2);
            case 4:
                return onChangeDataFirstMessage((ObservableBoolean) obj, i2);
            case 5:
                return onChangeDataStatusText((ObservableField) obj, i2);
            default:
                return false;
        }
    }

    private boolean onChangeDataRetryVisible(ObservableBoolean observableBoolean, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    private boolean onChangeDataStatusVisible(ObservableBoolean observableBoolean, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        return true;
    }

    private boolean onChangeDataMessage(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        return true;
    }

    private boolean onChangeDataBackground(ObservableField<Drawable> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        return true;
    }

    private boolean onChangeDataFirstMessage(ObservableBoolean observableBoolean, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 16;
        }
        return true;
    }

    private boolean onChangeDataStatusText(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 32;
        }
        return true;
    }

    protected void executeBindings() {
        CharSequence charSequence;
        Drawable drawable;
        int i;
        int i2;
        float f;
        CharSequence charSequence2;
        LayoutMessageOutTextBinding layoutMessageOutTextBinding = this;
        synchronized (this) {
            try {
                long j = layoutMessageOutTextBinding.mDirtyFlags;
                layoutMessageOutTextBinding.mDirtyFlags = 0;
            } catch (Throwable th) {
                while (true) {
                    Throwable th2 = th;
                }
            }
        }
        TextMessageData textMessageData = layoutMessageOutTextBinding.mData;
        String str = null;
        if ((j & 255) != 0) {
            int i3;
            Object statusVisible;
            boolean z;
            int i4;
            Object message;
            Object background;
            long j2;
            Object firstMessage;
            boolean z2;
            Resources resources;
            int i5;
            float dimension;
            long j3;
            Object statusText;
            long j4 = j & 193;
            int i6 = 8;
            if (j4 != 0) {
                boolean z3;
                Object retryVisible = textMessageData != null ? textMessageData.getRetryVisible() : null;
                updateRegistration(0, retryVisible);
                if (retryVisible != null) {
                    z3 = retryVisible.get();
                } else {
                    z3 = false;
                }
                if (j4 != 0) {
                    j = z3 ? j | PlaybackStateCompat.ACTION_PLAY_FROM_URI : j | PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM;
                }
                if (!z3) {
                    i3 = 8;
                    j4 = j & 194;
                    if (j4 == 0) {
                        statusVisible = textMessageData == null ? textMessageData.getStatusVisible() : null;
                        updateRegistration(1, statusVisible);
                        if (statusVisible == null) {
                            z = statusVisible.get();
                        } else {
                            z = false;
                        }
                        if (j4 != 0) {
                            j = z ? j | 512 : j | 256;
                        }
                        if (z) {
                            i6 = 0;
                        }
                        i4 = i6;
                    } else {
                        i4 = 0;
                    }
                    if ((j & 196) != 0) {
                        message = textMessageData == null ? textMessageData.getMessage() : null;
                        updateRegistration(2, message);
                        if (message != null) {
                            charSequence = (String) message.get();
                            if ((j & 200) != 0) {
                                background = textMessageData == null ? textMessageData.getBackground() : null;
                                updateRegistration(3, background);
                                if (background != null) {
                                    drawable = (Drawable) background.get();
                                    j2 = j & 208;
                                    if (j2 == 0) {
                                        firstMessage = textMessageData == null ? textMessageData.getFirstMessage() : null;
                                        updateRegistration(4, firstMessage);
                                        if (firstMessage == null) {
                                            z2 = firstMessage.get();
                                        } else {
                                            z2 = false;
                                        }
                                        j4 = j2 == 0 ? z2 ? j | PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID : j;
                                        if (z2) {
                                            resources = layoutMessageOutTextBinding.messageBody.getResources();
                                            i5 = C0859R.dimen.text_message_regular;
                                        } else {
                                            resources = layoutMessageOutTextBinding.messageBody.getResources();
                                            i5 = C0859R.dimen.text_message_first;
                                        }
                                        dimension = resources.getDimension(i5);
                                        j = j4;
                                        j3 = 224;
                                    } else {
                                        j3 = 224;
                                        dimension = BitmapDescriptorFactory.HUE_RED;
                                    }
                                    if ((j & j3) != 0) {
                                        statusText = textMessageData == null ? textMessageData.getStatusText() : null;
                                        updateRegistration(5, statusText);
                                        if (statusText != null) {
                                            str = (String) statusText.get();
                                        }
                                    }
                                    i = i4;
                                    i2 = i3;
                                    f = dimension;
                                    charSequence2 = str;
                                }
                            }
                            drawable = null;
                            j2 = j & 208;
                            if (j2 == 0) {
                                j3 = 224;
                                dimension = BitmapDescriptorFactory.HUE_RED;
                            } else {
                                if (textMessageData == null) {
                                }
                                updateRegistration(4, firstMessage);
                                if (firstMessage == null) {
                                    z2 = false;
                                } else {
                                    z2 = firstMessage.get();
                                }
                                if (j2 == 0) {
                                }
                                if (z2) {
                                    resources = layoutMessageOutTextBinding.messageBody.getResources();
                                    i5 = C0859R.dimen.text_message_regular;
                                } else {
                                    resources = layoutMessageOutTextBinding.messageBody.getResources();
                                    i5 = C0859R.dimen.text_message_first;
                                }
                                dimension = resources.getDimension(i5);
                                j = j4;
                                j3 = 224;
                            }
                            if ((j & j3) != 0) {
                                if (textMessageData == null) {
                                }
                                updateRegistration(5, statusText);
                                if (statusText != null) {
                                    str = (String) statusText.get();
                                }
                            }
                            i = i4;
                            i2 = i3;
                            f = dimension;
                            charSequence2 = str;
                        }
                    }
                    charSequence = null;
                    if ((j & 200) != 0) {
                        if (textMessageData == null) {
                        }
                        updateRegistration(3, background);
                        if (background != null) {
                            drawable = (Drawable) background.get();
                            j2 = j & 208;
                            if (j2 == 0) {
                                if (textMessageData == null) {
                                }
                                updateRegistration(4, firstMessage);
                                if (firstMessage == null) {
                                    z2 = firstMessage.get();
                                } else {
                                    z2 = false;
                                }
                                if (j2 == 0) {
                                    if (z2) {
                                    }
                                }
                                if (z2) {
                                    resources = layoutMessageOutTextBinding.messageBody.getResources();
                                    i5 = C0859R.dimen.text_message_first;
                                } else {
                                    resources = layoutMessageOutTextBinding.messageBody.getResources();
                                    i5 = C0859R.dimen.text_message_regular;
                                }
                                dimension = resources.getDimension(i5);
                                j = j4;
                                j3 = 224;
                            } else {
                                j3 = 224;
                                dimension = BitmapDescriptorFactory.HUE_RED;
                            }
                            if ((j & j3) != 0) {
                                if (textMessageData == null) {
                                }
                                updateRegistration(5, statusText);
                                if (statusText != null) {
                                    str = (String) statusText.get();
                                }
                            }
                            i = i4;
                            i2 = i3;
                            f = dimension;
                            charSequence2 = str;
                        }
                    }
                    drawable = null;
                    j2 = j & 208;
                    if (j2 == 0) {
                        j3 = 224;
                        dimension = BitmapDescriptorFactory.HUE_RED;
                    } else {
                        if (textMessageData == null) {
                        }
                        updateRegistration(4, firstMessage);
                        if (firstMessage == null) {
                            z2 = false;
                        } else {
                            z2 = firstMessage.get();
                        }
                        if (j2 == 0) {
                        }
                        if (z2) {
                            resources = layoutMessageOutTextBinding.messageBody.getResources();
                            i5 = C0859R.dimen.text_message_regular;
                        } else {
                            resources = layoutMessageOutTextBinding.messageBody.getResources();
                            i5 = C0859R.dimen.text_message_first;
                        }
                        dimension = resources.getDimension(i5);
                        j = j4;
                        j3 = 224;
                    }
                    if ((j & j3) != 0) {
                        if (textMessageData == null) {
                        }
                        updateRegistration(5, statusText);
                        if (statusText != null) {
                            str = (String) statusText.get();
                        }
                    }
                    i = i4;
                    i2 = i3;
                    f = dimension;
                    charSequence2 = str;
                }
            }
            i3 = 0;
            j4 = j & 194;
            if (j4 == 0) {
                i4 = 0;
            } else {
                if (textMessageData == null) {
                }
                updateRegistration(1, statusVisible);
                if (statusVisible == null) {
                    z = false;
                } else {
                    z = statusVisible.get();
                }
                if (j4 != 0) {
                    if (z) {
                    }
                    j = z ? j | 512 : j | 256;
                }
                if (z) {
                    i6 = 0;
                }
                i4 = i6;
            }
            if ((j & 196) != 0) {
                if (textMessageData == null) {
                }
                updateRegistration(2, message);
                if (message != null) {
                    charSequence = (String) message.get();
                    if ((j & 200) != 0) {
                        if (textMessageData == null) {
                        }
                        updateRegistration(3, background);
                        if (background != null) {
                            drawable = (Drawable) background.get();
                            j2 = j & 208;
                            if (j2 == 0) {
                                if (textMessageData == null) {
                                }
                                updateRegistration(4, firstMessage);
                                if (firstMessage == null) {
                                    z2 = firstMessage.get();
                                } else {
                                    z2 = false;
                                }
                                if (j2 == 0) {
                                    if (z2) {
                                    }
                                }
                                if (z2) {
                                    resources = layoutMessageOutTextBinding.messageBody.getResources();
                                    i5 = C0859R.dimen.text_message_first;
                                } else {
                                    resources = layoutMessageOutTextBinding.messageBody.getResources();
                                    i5 = C0859R.dimen.text_message_regular;
                                }
                                dimension = resources.getDimension(i5);
                                j = j4;
                                j3 = 224;
                            } else {
                                j3 = 224;
                                dimension = BitmapDescriptorFactory.HUE_RED;
                            }
                            if ((j & j3) != 0) {
                                if (textMessageData == null) {
                                }
                                updateRegistration(5, statusText);
                                if (statusText != null) {
                                    str = (String) statusText.get();
                                }
                            }
                            i = i4;
                            i2 = i3;
                            f = dimension;
                            charSequence2 = str;
                        }
                    }
                    drawable = null;
                    j2 = j & 208;
                    if (j2 == 0) {
                        j3 = 224;
                        dimension = BitmapDescriptorFactory.HUE_RED;
                    } else {
                        if (textMessageData == null) {
                        }
                        updateRegistration(4, firstMessage);
                        if (firstMessage == null) {
                            z2 = false;
                        } else {
                            z2 = firstMessage.get();
                        }
                        if (j2 == 0) {
                        }
                        if (z2) {
                            resources = layoutMessageOutTextBinding.messageBody.getResources();
                            i5 = C0859R.dimen.text_message_regular;
                        } else {
                            resources = layoutMessageOutTextBinding.messageBody.getResources();
                            i5 = C0859R.dimen.text_message_first;
                        }
                        dimension = resources.getDimension(i5);
                        j = j4;
                        j3 = 224;
                    }
                    if ((j & j3) != 0) {
                        if (textMessageData == null) {
                        }
                        updateRegistration(5, statusText);
                        if (statusText != null) {
                            str = (String) statusText.get();
                        }
                    }
                    i = i4;
                    i2 = i3;
                    f = dimension;
                    charSequence2 = str;
                }
            }
            charSequence = null;
            if ((j & 200) != 0) {
                if (textMessageData == null) {
                }
                updateRegistration(3, background);
                if (background != null) {
                    drawable = (Drawable) background.get();
                    j2 = j & 208;
                    if (j2 == 0) {
                        if (textMessageData == null) {
                        }
                        updateRegistration(4, firstMessage);
                        if (firstMessage == null) {
                            z2 = firstMessage.get();
                        } else {
                            z2 = false;
                        }
                        if (j2 == 0) {
                            if (z2) {
                            }
                        }
                        if (z2) {
                            resources = layoutMessageOutTextBinding.messageBody.getResources();
                            i5 = C0859R.dimen.text_message_first;
                        } else {
                            resources = layoutMessageOutTextBinding.messageBody.getResources();
                            i5 = C0859R.dimen.text_message_regular;
                        }
                        dimension = resources.getDimension(i5);
                        j = j4;
                        j3 = 224;
                    } else {
                        j3 = 224;
                        dimension = BitmapDescriptorFactory.HUE_RED;
                    }
                    if ((j & j3) != 0) {
                        if (textMessageData == null) {
                        }
                        updateRegistration(5, statusText);
                        if (statusText != null) {
                            str = (String) statusText.get();
                        }
                    }
                    i = i4;
                    i2 = i3;
                    f = dimension;
                    charSequence2 = str;
                }
            }
            drawable = null;
            j2 = j & 208;
            if (j2 == 0) {
                j3 = 224;
                dimension = BitmapDescriptorFactory.HUE_RED;
            } else {
                if (textMessageData == null) {
                }
                updateRegistration(4, firstMessage);
                if (firstMessage == null) {
                    z2 = false;
                } else {
                    z2 = firstMessage.get();
                }
                if (j2 == 0) {
                }
                if (z2) {
                    resources = layoutMessageOutTextBinding.messageBody.getResources();
                    i5 = C0859R.dimen.text_message_regular;
                } else {
                    resources = layoutMessageOutTextBinding.messageBody.getResources();
                    i5 = C0859R.dimen.text_message_first;
                }
                dimension = resources.getDimension(i5);
                j = j4;
                j3 = 224;
            }
            if ((j & j3) != 0) {
                if (textMessageData == null) {
                }
                updateRegistration(5, statusText);
                if (statusText != null) {
                    str = (String) statusText.get();
                }
            }
            i = i4;
            i2 = i3;
            f = dimension;
            charSequence2 = str;
        } else {
            charSequence2 = null;
            charSequence = charSequence2;
            drawable = charSequence;
            i = 0;
            f = BitmapDescriptorFactory.HUE_RED;
            i2 = 0;
        }
        if ((j & 200) != 0) {
            ViewBindingAdapter.setBackground(layoutMessageOutTextBinding.mboundView2, drawable);
        }
        if ((j & 196) != 0) {
            TextViewBindingAdapter.setText(layoutMessageOutTextBinding.mboundView3, charSequence);
        }
        if ((j & 224) != 0) {
            TextViewBindingAdapter.setText(layoutMessageOutTextBinding.mboundView5, charSequence2);
        }
        if ((j & 194) != 0) {
            layoutMessageOutTextBinding.mboundView5.setVisibility(i);
        }
        if ((j & 208) != 0) {
            LinearBindingAdapter.setMarginRight(layoutMessageOutTextBinding.messageBody, f);
        }
        if ((j & 193) != 0) {
            layoutMessageOutTextBinding.retry.setVisibility(i2);
        }
    }

    public static LayoutMessageOutTextBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static LayoutMessageOutTextBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (LayoutMessageOutTextBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.layout_message_out_text, viewGroup, z, dataBindingComponent);
    }

    public static LayoutMessageOutTextBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static LayoutMessageOutTextBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.layout_message_out_text, null, false), dataBindingComponent);
    }

    public static LayoutMessageOutTextBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static LayoutMessageOutTextBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/layout_message_out_text_0".equals(view.getTag())) {
            return new LayoutMessageOutTextBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
