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
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import ru.rocketbank.core.widgets.RocketAutofitTextView;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.root.chat.adapter.LinearBindingAdapter;
import ru.rocketbank.r2d2.root.chat.base.TextMessageData;
import ru.rocketbank.r2d2.widgets.operations.OperationIconView;

public class LayoutMessageOutOperationBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final ImageView icon;
    private TextMessageData mData;
    private long mDirtyFlags = -1;
    private final LinearLayout mboundView0;
    private final RocketTextView mboundView2;
    public final LinearLayout messageBody;
    public final OperationIconView operationLogo;
    public final RocketTextView operationName;
    public final RocketAutofitTextView operationTotal;
    public final RocketTextView retry;
    public final RocketAutofitTextView who;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.icon, 3);
        sViewsWithIds.put(C0859R.id.who, 4);
        sViewsWithIds.put(C0859R.id.operationLogo, 5);
        sViewsWithIds.put(C0859R.id.operationName, 6);
        sViewsWithIds.put(C0859R.id.operationTotal, 7);
        sViewsWithIds.put(C0859R.id.retry, 8);
    }

    public LayoutMessageOutOperationBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 4);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 9, sIncludes, sViewsWithIds);
        this.icon = (ImageView) dataBindingComponent[3];
        this.mboundView0 = (LinearLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.mboundView2 = (RocketTextView) dataBindingComponent[2];
        this.mboundView2.setTag(null);
        this.messageBody = (LinearLayout) dataBindingComponent[1];
        this.messageBody.setTag(null);
        this.operationLogo = (OperationIconView) dataBindingComponent[5];
        this.operationName = (RocketTextView) dataBindingComponent[6];
        this.operationTotal = (RocketAutofitTextView) dataBindingComponent[7];
        this.retry = (RocketTextView) dataBindingComponent[8];
        this.who = (RocketAutofitTextView) dataBindingComponent[4];
        setRootTag(view);
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
        setData((TextMessageData) obj);
        return true;
    }

    public void setData(TextMessageData textMessageData) {
        this.mData = textMessageData;
        synchronized (this) {
            this.mDirtyFlags |= 16;
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
                return onChangeDataStatusVisible((ObservableBoolean) obj, i2);
            case 1:
                return onChangeDataBackground((ObservableField) obj, i2);
            case 2:
                return onChangeDataFirstMessage((ObservableBoolean) obj, i2);
            case 3:
                return onChangeDataStatusText((ObservableField) obj, i2);
            default:
                return false;
        }
    }

    private boolean onChangeDataStatusVisible(ObservableBoolean observableBoolean, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    private boolean onChangeDataBackground(ObservableField<Drawable> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        return true;
    }

    private boolean onChangeDataFirstMessage(ObservableBoolean observableBoolean, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        return true;
    }

    private boolean onChangeDataStatusText(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        return true;
    }

    protected void executeBindings() {
        int i;
        Drawable drawable;
        float f;
        CharSequence charSequence;
        LayoutMessageOutOperationBinding layoutMessageOutOperationBinding = this;
        synchronized (this) {
            try {
                long j = layoutMessageOutOperationBinding.mDirtyFlags;
                layoutMessageOutOperationBinding.mDirtyFlags = 0;
            } catch (Throwable th) {
                while (true) {
                    Throwable th2 = th;
                }
            }
        }
        TextMessageData textMessageData = layoutMessageOutOperationBinding.mData;
        String str = null;
        if ((j & 63) != 0) {
            Object background;
            Drawable drawable2;
            long j2;
            Object firstMessage;
            boolean z;
            Resources resources;
            int i2;
            float dimension;
            Object statusText;
            long j3 = j & 49;
            if (j3 != 0) {
                boolean z2;
                Object statusVisible = textMessageData != null ? textMessageData.getStatusVisible() : null;
                updateRegistration(0, statusVisible);
                if (statusVisible != null) {
                    z2 = statusVisible.get();
                } else {
                    z2 = false;
                }
                if (j3 != 0) {
                    j = z2 ? j | 128 : j | 64;
                }
                if (!z2) {
                    i = 8;
                    if ((j & 50) != 0) {
                        background = textMessageData == null ? textMessageData.getBackground() : null;
                        updateRegistration(1, background);
                        if (background != null) {
                            drawable2 = (Drawable) background.get();
                            j2 = j & 52;
                            if (j2 == 0) {
                                firstMessage = textMessageData == null ? textMessageData.getFirstMessage() : null;
                                updateRegistration(2, firstMessage);
                                if (firstMessage == null) {
                                    z = firstMessage.get();
                                } else {
                                    z = false;
                                }
                                j2 = j2 == 0 ? z ? j | 512 : j | 256 : j;
                                if (z) {
                                    resources = layoutMessageOutOperationBinding.messageBody.getResources();
                                    i2 = C0859R.dimen.text_message_regular;
                                } else {
                                    resources = layoutMessageOutOperationBinding.messageBody.getResources();
                                    i2 = C0859R.dimen.text_message_first;
                                }
                                dimension = resources.getDimension(i2);
                                j = j2;
                            } else {
                                dimension = BitmapDescriptorFactory.HUE_RED;
                            }
                            if ((j & 56) != 0) {
                                statusText = textMessageData == null ? textMessageData.getStatusText() : null;
                                updateRegistration(3, statusText);
                                if (statusText != null) {
                                    str = (String) statusText.get();
                                }
                            }
                            drawable = drawable2;
                            f = dimension;
                            charSequence = str;
                        }
                    }
                    drawable2 = null;
                    j2 = j & 52;
                    if (j2 == 0) {
                        dimension = BitmapDescriptorFactory.HUE_RED;
                    } else {
                        if (textMessageData == null) {
                        }
                        updateRegistration(2, firstMessage);
                        if (firstMessage == null) {
                            z = false;
                        } else {
                            z = firstMessage.get();
                        }
                        if (j2 == 0) {
                        }
                        if (z) {
                            resources = layoutMessageOutOperationBinding.messageBody.getResources();
                            i2 = C0859R.dimen.text_message_regular;
                        } else {
                            resources = layoutMessageOutOperationBinding.messageBody.getResources();
                            i2 = C0859R.dimen.text_message_first;
                        }
                        dimension = resources.getDimension(i2);
                        j = j2;
                    }
                    if ((j & 56) != 0) {
                        if (textMessageData == null) {
                        }
                        updateRegistration(3, statusText);
                        if (statusText != null) {
                            str = (String) statusText.get();
                        }
                    }
                    drawable = drawable2;
                    f = dimension;
                    charSequence = str;
                }
            }
            i = 0;
            if ((j & 50) != 0) {
                if (textMessageData == null) {
                }
                updateRegistration(1, background);
                if (background != null) {
                    drawable2 = (Drawable) background.get();
                    j2 = j & 52;
                    if (j2 == 0) {
                        if (textMessageData == null) {
                        }
                        updateRegistration(2, firstMessage);
                        if (firstMessage == null) {
                            z = firstMessage.get();
                        } else {
                            z = false;
                        }
                        if (j2 == 0) {
                            if (z) {
                            }
                        }
                        if (z) {
                            resources = layoutMessageOutOperationBinding.messageBody.getResources();
                            i2 = C0859R.dimen.text_message_first;
                        } else {
                            resources = layoutMessageOutOperationBinding.messageBody.getResources();
                            i2 = C0859R.dimen.text_message_regular;
                        }
                        dimension = resources.getDimension(i2);
                        j = j2;
                    } else {
                        dimension = BitmapDescriptorFactory.HUE_RED;
                    }
                    if ((j & 56) != 0) {
                        if (textMessageData == null) {
                        }
                        updateRegistration(3, statusText);
                        if (statusText != null) {
                            str = (String) statusText.get();
                        }
                    }
                    drawable = drawable2;
                    f = dimension;
                    charSequence = str;
                }
            }
            drawable2 = null;
            j2 = j & 52;
            if (j2 == 0) {
                dimension = BitmapDescriptorFactory.HUE_RED;
            } else {
                if (textMessageData == null) {
                }
                updateRegistration(2, firstMessage);
                if (firstMessage == null) {
                    z = false;
                } else {
                    z = firstMessage.get();
                }
                if (j2 == 0) {
                }
                if (z) {
                    resources = layoutMessageOutOperationBinding.messageBody.getResources();
                    i2 = C0859R.dimen.text_message_regular;
                } else {
                    resources = layoutMessageOutOperationBinding.messageBody.getResources();
                    i2 = C0859R.dimen.text_message_first;
                }
                dimension = resources.getDimension(i2);
                j = j2;
            }
            if ((j & 56) != 0) {
                if (textMessageData == null) {
                }
                updateRegistration(3, statusText);
                if (statusText != null) {
                    str = (String) statusText.get();
                }
            }
            drawable = drawable2;
            f = dimension;
            charSequence = str;
        } else {
            charSequence = null;
            drawable = charSequence;
            f = BitmapDescriptorFactory.HUE_RED;
            i = 0;
        }
        if ((j & 56) != 0) {
            TextViewBindingAdapter.setText(layoutMessageOutOperationBinding.mboundView2, charSequence);
        }
        if ((j & 49) != 0) {
            layoutMessageOutOperationBinding.mboundView2.setVisibility(i);
        }
        if ((j & 52) != 0) {
            LinearBindingAdapter.setMarginRight(layoutMessageOutOperationBinding.messageBody, f);
        }
        if ((j & 50) != 0) {
            ViewBindingAdapter.setBackground(layoutMessageOutOperationBinding.messageBody, drawable);
        }
    }

    public static LayoutMessageOutOperationBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static LayoutMessageOutOperationBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (LayoutMessageOutOperationBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.layout_message_out_operation, viewGroup, z, dataBindingComponent);
    }

    public static LayoutMessageOutOperationBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static LayoutMessageOutOperationBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.layout_message_out_operation, null, false), dataBindingComponent);
    }

    public static LayoutMessageOutOperationBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static LayoutMessageOutOperationBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/layout_message_out_operation_0".equals(view.getTag())) {
            return new LayoutMessageOutOperationBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
