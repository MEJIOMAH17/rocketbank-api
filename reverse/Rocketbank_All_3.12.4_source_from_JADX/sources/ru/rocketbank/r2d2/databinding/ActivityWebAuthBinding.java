package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ObservableBoolean;
import android.databinding.ObservableField;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.databinding.adapters.TextViewBindingAdapter;
import android.databinding.generated.callback.OnClickListener.Listener;
import android.support.constraint.ConstraintLayout;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import de.hdodenhof.circleimageview.CircleImageView;
import ru.rocketbank.core.widgets.RocketButton;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.webauth.Sec3dAuthListener;
import ru.rocketbank.r2d2.data.binding.webauth.WebAuthData;

public class ActivityWebAuthBinding extends ViewDataBinding implements Listener {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final ImageView background;
    public final RocketTextView cancelButton;
    public final RocketButton confirmButton;
    private final OnClickListener mCallback32;
    private final OnClickListener mCallback33;
    private final OnClickListener mCallback34;
    private WebAuthData mData;
    private long mDirtyFlags = -1;
    private Sec3dAuthListener mListener;
    private final ConstraintLayout mboundView0;
    public final CircleImageView merchantIcon;
    public final RocketTextView merchantText;
    public final RocketTextView notMeButton;
    public final RocketTextView ttl;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.background, 6);
        sViewsWithIds.put(C0859R.id.merchant_icon, 7);
    }

    public ActivityWebAuthBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 3);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 8, sIncludes, sViewsWithIds);
        this.background = (ImageView) dataBindingComponent[6];
        this.cancelButton = (RocketTextView) dataBindingComponent[2];
        this.cancelButton.setTag(null);
        this.confirmButton = (RocketButton) dataBindingComponent[3];
        this.confirmButton.setTag(null);
        this.mboundView0 = (ConstraintLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.merchantIcon = (CircleImageView) dataBindingComponent[7];
        this.merchantText = (RocketTextView) dataBindingComponent[5];
        this.merchantText.setTag(null);
        this.notMeButton = (RocketTextView) dataBindingComponent[1];
        this.notMeButton.setTag(null);
        this.ttl = (RocketTextView) dataBindingComponent[4];
        this.ttl.setTag(null);
        setRootTag(view);
        this.mCallback32 = new android.databinding.generated.callback.OnClickListener(this, 1);
        this.mCallback33 = new android.databinding.generated.callback.OnClickListener(this, 2);
        this.mCallback34 = new android.databinding.generated.callback.OnClickListener(this, 3);
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
            setListener((Sec3dAuthListener) obj);
        } else if (24 != i) {
            return false;
        } else {
            setData((WebAuthData) obj);
        }
        return true;
    }

    public void setListener(Sec3dAuthListener sec3dAuthListener) {
        this.mListener = sec3dAuthListener;
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        notifyPropertyChanged(55);
        super.requestRebind();
    }

    public Sec3dAuthListener getListener() {
        return this.mListener;
    }

    public void setData(WebAuthData webAuthData) {
        this.mData = webAuthData;
        synchronized (this) {
            this.mDirtyFlags |= 16;
        }
        notifyPropertyChanged(24);
        super.requestRebind();
    }

    public WebAuthData getData() {
        return this.mData;
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeDataTtl((ObservableField) obj, i2);
            case 1:
                return onChangeDataButtonsEnabled((ObservableBoolean) obj, i2);
            case 2:
                return onChangeDataText((ObservableField) obj, i2);
            default:
                return false;
        }
    }

    private boolean onChangeDataTtl(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    private boolean onChangeDataButtonsEnabled(ObservableBoolean observableBoolean, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        return true;
    }

    private boolean onChangeDataText(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        return true;
    }

    protected void executeBindings() {
        long j;
        ActivityWebAuthBinding activityWebAuthBinding = this;
        synchronized (this) {
            try {
                j = activityWebAuthBinding.mDirtyFlags;
                long j2 = 0;
                activityWebAuthBinding.mDirtyFlags = 0;
            } finally {
                j = r0;
            }
        }
        WebAuthData webAuthData = activityWebAuthBinding.mData;
        long j3 = 52;
        long j4 = 50;
        Object obj = null;
        CharSequence charSequence;
        boolean z;
        CharSequence charSequence2;
        if ((j & 55) != 0) {
            ObservableBoolean buttonsEnabled;
            Object text;
            if ((j & 49) != 0) {
                Object ttl = webAuthData != null ? webAuthData.getTtl() : null;
                updateRegistration(0, ttl);
                if (ttl != null) {
                    charSequence = (String) ttl.get();
                    if ((j & 50) != 0) {
                        if (webAuthData == null) {
                            buttonsEnabled = webAuthData.getButtonsEnabled();
                        } else {
                            obj = null;
                        }
                        updateRegistration(1, obj);
                        if (obj != null) {
                            z = obj.get();
                            if ((j & j3) != j2) {
                                text = webAuthData == null ? webAuthData.getText() : null;
                                updateRegistration(2, text);
                                if (text != null) {
                                    charSequence2 = (String) text.get();
                                    if ((j & 32) != j2) {
                                        activityWebAuthBinding.cancelButton.setOnClickListener(activityWebAuthBinding.mCallback33);
                                        activityWebAuthBinding.confirmButton.setOnClickListener(activityWebAuthBinding.mCallback34);
                                        activityWebAuthBinding.notMeButton.setOnClickListener(activityWebAuthBinding.mCallback32);
                                    }
                                    if ((j & j4) != j2) {
                                        activityWebAuthBinding.cancelButton.setEnabled(z);
                                        activityWebAuthBinding.confirmButton.setEnabled(z);
                                    }
                                    if ((j & j3) != j2) {
                                        TextViewBindingAdapter.setText(activityWebAuthBinding.merchantText, charSequence2);
                                    }
                                    if ((j & 49) != j2) {
                                        TextViewBindingAdapter.setText(activityWebAuthBinding.ttl, charSequence);
                                    }
                                }
                            }
                            charSequence2 = null;
                            if ((j & 32) != j2) {
                                activityWebAuthBinding.cancelButton.setOnClickListener(activityWebAuthBinding.mCallback33);
                                activityWebAuthBinding.confirmButton.setOnClickListener(activityWebAuthBinding.mCallback34);
                                activityWebAuthBinding.notMeButton.setOnClickListener(activityWebAuthBinding.mCallback32);
                            }
                            if ((j & j4) != j2) {
                                activityWebAuthBinding.cancelButton.setEnabled(z);
                                activityWebAuthBinding.confirmButton.setEnabled(z);
                            }
                            if ((j & j3) != j2) {
                                TextViewBindingAdapter.setText(activityWebAuthBinding.merchantText, charSequence2);
                            }
                            if ((j & 49) != j2) {
                                TextViewBindingAdapter.setText(activityWebAuthBinding.ttl, charSequence);
                            }
                        }
                    }
                    z = false;
                    if ((j & j3) != j2) {
                        if (webAuthData == null) {
                        }
                        updateRegistration(2, text);
                        if (text != null) {
                            charSequence2 = (String) text.get();
                            if ((j & 32) != j2) {
                                activityWebAuthBinding.cancelButton.setOnClickListener(activityWebAuthBinding.mCallback33);
                                activityWebAuthBinding.confirmButton.setOnClickListener(activityWebAuthBinding.mCallback34);
                                activityWebAuthBinding.notMeButton.setOnClickListener(activityWebAuthBinding.mCallback32);
                            }
                            if ((j & j4) != j2) {
                                activityWebAuthBinding.cancelButton.setEnabled(z);
                                activityWebAuthBinding.confirmButton.setEnabled(z);
                            }
                            if ((j & j3) != j2) {
                                TextViewBindingAdapter.setText(activityWebAuthBinding.merchantText, charSequence2);
                            }
                            if ((j & 49) != j2) {
                                TextViewBindingAdapter.setText(activityWebAuthBinding.ttl, charSequence);
                            }
                        }
                    }
                    charSequence2 = null;
                    if ((j & 32) != j2) {
                        activityWebAuthBinding.cancelButton.setOnClickListener(activityWebAuthBinding.mCallback33);
                        activityWebAuthBinding.confirmButton.setOnClickListener(activityWebAuthBinding.mCallback34);
                        activityWebAuthBinding.notMeButton.setOnClickListener(activityWebAuthBinding.mCallback32);
                    }
                    if ((j & j4) != j2) {
                        activityWebAuthBinding.cancelButton.setEnabled(z);
                        activityWebAuthBinding.confirmButton.setEnabled(z);
                    }
                    if ((j & j3) != j2) {
                        TextViewBindingAdapter.setText(activityWebAuthBinding.merchantText, charSequence2);
                    }
                    if ((j & 49) != j2) {
                        TextViewBindingAdapter.setText(activityWebAuthBinding.ttl, charSequence);
                    }
                }
            }
            charSequence = null;
            if ((j & 50) != 0) {
                if (webAuthData == null) {
                    obj = null;
                } else {
                    buttonsEnabled = webAuthData.getButtonsEnabled();
                }
                updateRegistration(1, obj);
                if (obj != null) {
                    z = obj.get();
                    if ((j & j3) != j2) {
                        if (webAuthData == null) {
                        }
                        updateRegistration(2, text);
                        if (text != null) {
                            charSequence2 = (String) text.get();
                            if ((j & 32) != j2) {
                                activityWebAuthBinding.cancelButton.setOnClickListener(activityWebAuthBinding.mCallback33);
                                activityWebAuthBinding.confirmButton.setOnClickListener(activityWebAuthBinding.mCallback34);
                                activityWebAuthBinding.notMeButton.setOnClickListener(activityWebAuthBinding.mCallback32);
                            }
                            if ((j & j4) != j2) {
                                activityWebAuthBinding.cancelButton.setEnabled(z);
                                activityWebAuthBinding.confirmButton.setEnabled(z);
                            }
                            if ((j & j3) != j2) {
                                TextViewBindingAdapter.setText(activityWebAuthBinding.merchantText, charSequence2);
                            }
                            if ((j & 49) != j2) {
                                TextViewBindingAdapter.setText(activityWebAuthBinding.ttl, charSequence);
                            }
                        }
                    }
                    charSequence2 = null;
                    if ((j & 32) != j2) {
                        activityWebAuthBinding.cancelButton.setOnClickListener(activityWebAuthBinding.mCallback33);
                        activityWebAuthBinding.confirmButton.setOnClickListener(activityWebAuthBinding.mCallback34);
                        activityWebAuthBinding.notMeButton.setOnClickListener(activityWebAuthBinding.mCallback32);
                    }
                    if ((j & j4) != j2) {
                        activityWebAuthBinding.cancelButton.setEnabled(z);
                        activityWebAuthBinding.confirmButton.setEnabled(z);
                    }
                    if ((j & j3) != j2) {
                        TextViewBindingAdapter.setText(activityWebAuthBinding.merchantText, charSequence2);
                    }
                    if ((j & 49) != j2) {
                        TextViewBindingAdapter.setText(activityWebAuthBinding.ttl, charSequence);
                    }
                }
            }
            z = false;
            if ((j & j3) != j2) {
                if (webAuthData == null) {
                }
                updateRegistration(2, text);
                if (text != null) {
                    charSequence2 = (String) text.get();
                    if ((j & 32) != j2) {
                        activityWebAuthBinding.cancelButton.setOnClickListener(activityWebAuthBinding.mCallback33);
                        activityWebAuthBinding.confirmButton.setOnClickListener(activityWebAuthBinding.mCallback34);
                        activityWebAuthBinding.notMeButton.setOnClickListener(activityWebAuthBinding.mCallback32);
                    }
                    if ((j & j4) != j2) {
                        activityWebAuthBinding.cancelButton.setEnabled(z);
                        activityWebAuthBinding.confirmButton.setEnabled(z);
                    }
                    if ((j & j3) != j2) {
                        TextViewBindingAdapter.setText(activityWebAuthBinding.merchantText, charSequence2);
                    }
                    if ((j & 49) != j2) {
                        TextViewBindingAdapter.setText(activityWebAuthBinding.ttl, charSequence);
                    }
                }
            }
            charSequence2 = null;
            if ((j & 32) != j2) {
                activityWebAuthBinding.cancelButton.setOnClickListener(activityWebAuthBinding.mCallback33);
                activityWebAuthBinding.confirmButton.setOnClickListener(activityWebAuthBinding.mCallback34);
                activityWebAuthBinding.notMeButton.setOnClickListener(activityWebAuthBinding.mCallback32);
            }
            if ((j & j4) != j2) {
                activityWebAuthBinding.cancelButton.setEnabled(z);
                activityWebAuthBinding.confirmButton.setEnabled(z);
            }
            if ((j & j3) != j2) {
                TextViewBindingAdapter.setText(activityWebAuthBinding.merchantText, charSequence2);
            }
            if ((j & 49) != j2) {
                TextViewBindingAdapter.setText(activityWebAuthBinding.ttl, charSequence);
            }
        }
        charSequence = null;
        z = false;
        charSequence2 = null;
        if ((j & 32) != j2) {
            activityWebAuthBinding.cancelButton.setOnClickListener(activityWebAuthBinding.mCallback33);
            activityWebAuthBinding.confirmButton.setOnClickListener(activityWebAuthBinding.mCallback34);
            activityWebAuthBinding.notMeButton.setOnClickListener(activityWebAuthBinding.mCallback32);
        }
        if ((j & j4) != j2) {
            activityWebAuthBinding.cancelButton.setEnabled(z);
            activityWebAuthBinding.confirmButton.setEnabled(z);
        }
        if ((j & j3) != j2) {
            TextViewBindingAdapter.setText(activityWebAuthBinding.merchantText, charSequence2);
        }
        if ((j & 49) != j2) {
            TextViewBindingAdapter.setText(activityWebAuthBinding.ttl, charSequence);
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
                    i.notMeClicked();
                    return;
                }
                break;
            case 2:
                i = this.mListener;
                if (i != 0) {
                    view = 1;
                }
                if (view != null) {
                    i.cancelClicked();
                    return;
                }
                break;
            case 3:
                i = this.mListener;
                if (i != 0) {
                    view = 1;
                }
                if (view != null) {
                    i.payClicked();
                    break;
                }
                break;
            default:
                break;
        }
    }

    public static ActivityWebAuthBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityWebAuthBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (ActivityWebAuthBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.activity_web_auth, viewGroup, z, dataBindingComponent);
    }

    public static ActivityWebAuthBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityWebAuthBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.activity_web_auth, null, false), dataBindingComponent);
    }

    public static ActivityWebAuthBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityWebAuthBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/activity_web_auth_0".equals(view.getTag())) {
            return new ActivityWebAuthBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
