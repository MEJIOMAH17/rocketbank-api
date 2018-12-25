package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.databinding.adapters.TextViewBindingAdapter;
import android.databinding.adapters.ViewBindingAdapter;
import android.graphics.drawable.Drawable;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextWatcher;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import java.util.HashMap;
import ru.rocketbank.core.widgets.RocketEditText;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.fragments.transfers.RemittanceCheckInfoFragment.CheckInfoObservable;
import ru.rocketbank.r2d2.utils.ViewModelObservable.ViewField;

public class RemittanceCheckInfoFragmentBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final RocketEditText edittextTransfersBankPurpose;
    public final LinearLayout fields;
    private CheckInfoObservable mData;
    private long mDirtyFlags = -1;
    private Boolean mEditMode;
    private final ScrollView mboundView0;
    private final FrameLayout mboundView1;
    private final RocketTextView mboundView2;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.fields, 4);
    }

    public RemittanceCheckInfoFragmentBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 3);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 5, sIncludes, sViewsWithIds);
        this.edittextTransfersBankPurpose = (RocketEditText) dataBindingComponent[3];
        this.edittextTransfersBankPurpose.setTag(null);
        this.fields = (LinearLayout) dataBindingComponent[4];
        this.mboundView0 = (ScrollView) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.mboundView1 = (FrameLayout) dataBindingComponent[1];
        this.mboundView1.setTag(null);
        this.mboundView2 = (RocketTextView) dataBindingComponent[2];
        this.mboundView2.setTag(null);
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
        if (30 == i) {
            setEditMode((Boolean) obj);
        } else if (24 != i) {
            return false;
        } else {
            setData((CheckInfoObservable) obj);
        }
        return true;
    }

    public void setEditMode(Boolean bool) {
        this.mEditMode = bool;
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        notifyPropertyChanged(30);
        super.requestRebind();
    }

    public Boolean getEditMode() {
        return this.mEditMode;
    }

    public void setData(CheckInfoObservable checkInfoObservable) {
        updateRegistration(1, checkInfoObservable);
        this.mData = checkInfoObservable;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(24);
        super.requestRebind();
    }

    public CheckInfoObservable getData() {
        return this.mData;
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeDataPurpose((ViewField) obj, i2);
            case 1:
                return onChangeData((CheckInfoObservable) obj, i2);
            case 2:
                return onChangeDataFieldsPurpose((ViewField) obj, i2);
            default:
                return false;
        }
    }

    private boolean onChangeDataPurpose(ViewField viewField, int i) {
        if (i == 0) {
            synchronized (this) {
                this.mDirtyFlags |= 1;
            }
            return true;
        } else if (i == 89) {
            synchronized (this) {
                this.mDirtyFlags |= 16;
            }
            return true;
        } else if (i != 88) {
            return null;
        } else {
            synchronized (this) {
                this.mDirtyFlags |= 32;
            }
            return true;
        }
    }

    private boolean onChangeData(CheckInfoObservable checkInfoObservable, int i) {
        if (i == 0) {
            synchronized (this) {
                this.mDirtyFlags |= 2;
            }
            return true;
        } else if (i != 67) {
            return null;
        } else {
            synchronized (this) {
                this.mDirtyFlags |= 1;
            }
            return true;
        }
    }

    private boolean onChangeDataFieldsPurpose(ViewField viewField, int i) {
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
        int i;
        String str;
        ViewField purpose;
        long j2;
        String value;
        int length;
        Object obj;
        boolean valid;
        View view;
        int i2;
        CharSequence charSequence;
        int i3;
        Drawable drawableFromResource;
        Object obj2;
        TextWatcher watcher;
        long j3;
        String str2;
        RemittanceCheckInfoFragmentBinding remittanceCheckInfoFragmentBinding = this;
        synchronized (this) {
            try {
                j = remittanceCheckInfoFragmentBinding.mDirtyFlags;
                remittanceCheckInfoFragmentBinding.mDirtyFlags = 0;
            } catch (Throwable th) {
                while (true) {
                    Throwable th2 = th;
                }
            }
        }
        Boolean bool = remittanceCheckInfoFragmentBinding.mEditMode;
        CheckInfoObservable checkInfoObservable = remittanceCheckInfoFragmentBinding.mData;
        long j4 = j & 72;
        if (j4 != 0) {
            boolean safeUnbox = ViewDataBinding.safeUnbox(bool);
            if (j4 != 0) {
                j = safeUnbox ? j | PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM : j | PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH;
            }
            if (!safeUnbox) {
                i = 8;
                str = null;
                if ((j & 119) == 0) {
                    if ((j & 115) == 0) {
                        purpose = checkInfoObservable == null ? checkInfoObservable.getPurpose() : null;
                        updateRegistration(0, purpose);
                        j2 = j & 83;
                        if (j2 == 0) {
                            value = purpose == null ? purpose.getValue() : null;
                            if (value == null) {
                                length = value.length();
                            } else {
                                length = 0;
                            }
                            obj = length < 100 ? 1 : null;
                            if (j2 != 0) {
                                j = obj == null ? j | 256 : j | 128;
                            }
                        } else {
                            value = null;
                            length = 0;
                            obj = null;
                        }
                        j2 = j & 99;
                        if (j2 == 0) {
                            if (purpose == null) {
                                valid = purpose.getValid();
                            } else {
                                valid = false;
                            }
                            long j5 = j2 == 0 ? valid ? j | PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID : j | 512 : j;
                            if (valid) {
                                view = remittanceCheckInfoFragmentBinding.edittextTransfersBankPurpose;
                                i2 = C0859R.drawable.underline_gray_dc;
                            } else {
                                view = remittanceCheckInfoFragmentBinding.edittextTransfersBankPurpose;
                                i2 = C0859R.drawable.underline_orange;
                            }
                            charSequence = value;
                            i3 = length;
                            drawableFromResource = getDrawableFromResource(view, i2);
                            j = j5;
                        } else {
                            charSequence = value;
                            i3 = length;
                            drawableFromResource = null;
                        }
                    } else {
                        drawableFromResource = null;
                        charSequence = drawableFromResource;
                        obj = null;
                        i3 = 0;
                    }
                    if ((j & 70) != 0) {
                        HashMap fields = checkInfoObservable == null ? checkInfoObservable.getFields() : null;
                        obj2 = fields == null ? (ViewField) fields.get("purpose") : null;
                        updateRegistration(2, obj2);
                        if (obj2 != null) {
                            watcher = obj2.getWatcher();
                        }
                    }
                    watcher = null;
                } else {
                    watcher = null;
                    drawableFromResource = watcher;
                    charSequence = drawableFromResource;
                    obj = null;
                    i3 = 0;
                }
                if ((j & 256) == 0) {
                    value = String.valueOf(210 - i3);
                } else {
                    value = null;
                }
                j3 = j & 83;
                if (j3 != 0) {
                    str = obj == null ? value : "";
                }
                str2 = str;
                if ((j & 70) != 0) {
                    remittanceCheckInfoFragmentBinding.edittextTransfersBankPurpose.addTextChangedListener(watcher);
                }
                if ((j & 99) != 0) {
                    ViewBindingAdapter.setBackground(remittanceCheckInfoFragmentBinding.edittextTransfersBankPurpose, drawableFromResource);
                }
                if (j3 != 0) {
                    TextViewBindingAdapter.setText(remittanceCheckInfoFragmentBinding.edittextTransfersBankPurpose, charSequence);
                    TextViewBindingAdapter.setText(remittanceCheckInfoFragmentBinding.mboundView2, str2);
                }
                if ((j & 72) != 0) {
                    remittanceCheckInfoFragmentBinding.edittextTransfersBankPurpose.setVisibility(i);
                    remittanceCheckInfoFragmentBinding.mboundView1.setVisibility(i);
                }
            }
        }
        i = 0;
        str = null;
        if ((j & 119) == 0) {
            watcher = null;
            drawableFromResource = watcher;
            charSequence = drawableFromResource;
            obj = null;
            i3 = 0;
        } else {
            if ((j & 115) == 0) {
                drawableFromResource = null;
                charSequence = drawableFromResource;
                obj = null;
                i3 = 0;
            } else {
                if (checkInfoObservable == null) {
                }
                updateRegistration(0, purpose);
                j2 = j & 83;
                if (j2 == 0) {
                    value = null;
                    length = 0;
                    obj = null;
                } else {
                    if (purpose == null) {
                    }
                    if (value == null) {
                        length = 0;
                    } else {
                        length = value.length();
                    }
                    if (length < 100) {
                    }
                    if (j2 != 0) {
                        if (obj == null) {
                        }
                    }
                }
                j2 = j & 99;
                if (j2 == 0) {
                    charSequence = value;
                    i3 = length;
                    drawableFromResource = null;
                } else {
                    if (purpose == null) {
                        valid = false;
                    } else {
                        valid = purpose.getValid();
                    }
                    if (j2 == 0) {
                    }
                    if (valid) {
                        view = remittanceCheckInfoFragmentBinding.edittextTransfersBankPurpose;
                        i2 = C0859R.drawable.underline_gray_dc;
                    } else {
                        view = remittanceCheckInfoFragmentBinding.edittextTransfersBankPurpose;
                        i2 = C0859R.drawable.underline_orange;
                    }
                    charSequence = value;
                    i3 = length;
                    drawableFromResource = getDrawableFromResource(view, i2);
                    j = j5;
                }
            }
            if ((j & 70) != 0) {
                if (checkInfoObservable == null) {
                }
                if (fields == null) {
                }
                updateRegistration(2, obj2);
                if (obj2 != null) {
                    watcher = obj2.getWatcher();
                }
            }
            watcher = null;
        }
        if ((j & 256) == 0) {
            value = null;
        } else {
            value = String.valueOf(210 - i3);
        }
        j3 = j & 83;
        if (j3 != 0) {
            if (obj == null) {
            }
        }
        str2 = str;
        if ((j & 70) != 0) {
            remittanceCheckInfoFragmentBinding.edittextTransfersBankPurpose.addTextChangedListener(watcher);
        }
        if ((j & 99) != 0) {
            ViewBindingAdapter.setBackground(remittanceCheckInfoFragmentBinding.edittextTransfersBankPurpose, drawableFromResource);
        }
        if (j3 != 0) {
            TextViewBindingAdapter.setText(remittanceCheckInfoFragmentBinding.edittextTransfersBankPurpose, charSequence);
            TextViewBindingAdapter.setText(remittanceCheckInfoFragmentBinding.mboundView2, str2);
        }
        if ((j & 72) != 0) {
            remittanceCheckInfoFragmentBinding.edittextTransfersBankPurpose.setVisibility(i);
            remittanceCheckInfoFragmentBinding.mboundView1.setVisibility(i);
        }
    }

    public static RemittanceCheckInfoFragmentBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static RemittanceCheckInfoFragmentBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (RemittanceCheckInfoFragmentBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.remittance_check_info_fragment, viewGroup, z, dataBindingComponent);
    }

    public static RemittanceCheckInfoFragmentBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static RemittanceCheckInfoFragmentBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.remittance_check_info_fragment, null, false), dataBindingComponent);
    }

    public static RemittanceCheckInfoFragmentBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static RemittanceCheckInfoFragmentBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/remittance_check_info_fragment_0".equals(view.getTag())) {
            return new RemittanceCheckInfoFragmentBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
