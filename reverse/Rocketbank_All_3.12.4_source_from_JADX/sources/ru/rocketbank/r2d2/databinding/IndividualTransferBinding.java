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
import android.widget.LinearLayout;
import android.widget.Spinner;
import java.util.HashMap;
import ru.rocketbank.core.widgets.RocketEditText;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.fragments.transfers.IndividualObservable;
import ru.rocketbank.r2d2.utils.ViewModelObservable.ViewField;

public class IndividualTransferBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds = null;
    public final RocketEditText editTextIndividualPurpose;
    public final RocketEditText editTextIndividualRecipientName;
    public final LinearLayout individualView;
    private long mDirtyFlags = -1;
    private IndividualObservable mIndividual;
    public final Spinner materialAssistTypeSpinner;
    private final RocketTextView mboundView2;
    private final RocketTextView mboundView4;

    public IndividualTransferBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 5);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 6, sIncludes, sViewsWithIds);
        this.editTextIndividualPurpose = (RocketEditText) dataBindingComponent[5];
        this.editTextIndividualPurpose.setTag(null);
        this.editTextIndividualRecipientName = (RocketEditText) dataBindingComponent[1];
        this.editTextIndividualRecipientName.setTag(null);
        this.individualView = (LinearLayout) dataBindingComponent[0];
        this.individualView.setTag(null);
        this.materialAssistTypeSpinner = (Spinner) dataBindingComponent[3];
        this.materialAssistTypeSpinner.setTag(null);
        this.mboundView2 = (RocketTextView) dataBindingComponent[2];
        this.mboundView2.setTag(null);
        this.mboundView4 = (RocketTextView) dataBindingComponent[4];
        this.mboundView4.setTag(null);
        setRootTag(view);
        invalidateAll();
    }

    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID;
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
        if (45 != i) {
            return false;
        }
        setIndividual((IndividualObservable) obj);
        return true;
    }

    public void setIndividual(IndividualObservable individualObservable) {
        updateRegistration(2, individualObservable);
        this.mIndividual = individualObservable;
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        notifyPropertyChanged(45);
        super.requestRebind();
    }

    public IndividualObservable getIndividual() {
        return this.mIndividual;
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeIndividualPurpose((ViewField) obj, i2);
            case 1:
                return onChangeIndividualFieldsPurpose((ViewField) obj, i2);
            case 2:
                return onChangeIndividual((IndividualObservable) obj, i2);
            case 3:
                return onChangeIndividualFieldsRecipientName((ViewField) obj, i2);
            case 4:
                return onChangeIndividualRecipientName((ViewField) obj, i2);
            default:
                return false;
        }
    }

    private boolean onChangeIndividualPurpose(ViewField viewField, int i) {
        if (i == 0) {
            synchronized (this) {
                this.mDirtyFlags |= 1;
            }
            return true;
        } else if (i == 89) {
            synchronized (this) {
                this.mDirtyFlags |= 32;
            }
            return true;
        } else if (i != 88) {
            return null;
        } else {
            synchronized (this) {
                this.mDirtyFlags |= 64;
            }
            return true;
        }
    }

    private boolean onChangeIndividualFieldsPurpose(ViewField viewField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        return true;
    }

    private boolean onChangeIndividual(IndividualObservable individualObservable, int i) {
        if (i == 0) {
            synchronized (this) {
                this.mDirtyFlags |= 4;
            }
            return true;
        } else if (i == 70) {
            synchronized (this) {
                this.mDirtyFlags |= 16;
            }
            return true;
        } else if (i == 56) {
            synchronized (this) {
                this.mDirtyFlags |= 128;
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

    private boolean onChangeIndividualFieldsRecipientName(ViewField viewField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        return true;
    }

    private boolean onChangeIndividualRecipientName(ViewField viewField, int i) {
        if (i == 0) {
            synchronized (this) {
                this.mDirtyFlags |= 16;
            }
            return true;
        } else if (i == 88) {
            synchronized (this) {
                this.mDirtyFlags |= 256;
            }
            return true;
        } else if (i != 89) {
            return null;
        } else {
            synchronized (this) {
                this.mDirtyFlags |= 512;
            }
            return true;
        }
    }

    protected void executeBindings() {
        long j;
        CharSequence value;
        long j2;
        IndividualTransferBinding individualTransferBinding = this;
        synchronized (this) {
            try {
                j = individualTransferBinding.mDirtyFlags;
                individualTransferBinding.mDirtyFlags = 0;
            } catch (Throwable th) {
                while (true) {
                    Throwable th2 = th;
                }
            }
        }
        IndividualObservable individualObservable = individualTransferBinding.mIndividual;
        int i;
        CharSequence charSequence;
        Drawable drawable;
        int i2;
        TextWatcher watcher;
        TextWatcher watcher2;
        int i3;
        Drawable drawableFromResource;
        String valueOf;
        CharSequence charSequence2;
        if ((j & 2047) != 0) {
            long j3;
            HashMap fields;
            Object obj;
            Object obj2;
            long j4;
            boolean safeUnbox;
            ViewField recipient_name;
            boolean valid;
            View view;
            int i4;
            if ((j & 1125) != 0) {
                Drawable drawableFromResource2;
                ViewField purpose = individualObservable != null ? individualObservable.getPurpose() : null;
                updateRegistration(0, purpose);
                j3 = j & 1093;
                if (j3 != 0) {
                    boolean valid2;
                    if (purpose != null) {
                        valid2 = purpose.getValid();
                    } else {
                        valid2 = false;
                    }
                    if (j3 != 0) {
                        j = valid2 ? j | PlaybackStateCompat.ACTION_PREPARE : j | PlaybackStateCompat.ACTION_PLAY_FROM_URI;
                    }
                    drawableFromResource2 = valid2 ? getDrawableFromResource(individualTransferBinding.editTextIndividualPurpose, C0859R.drawable.underline_orange) : getDrawableFromResource(individualTransferBinding.editTextIndividualPurpose, C0859R.drawable.underline_gray_dc);
                } else {
                    drawableFromResource2 = null;
                }
                j3 = j & 1061;
                if (j3 != 0) {
                    int length;
                    String value2 = purpose != null ? purpose.getValue() : null;
                    if (value2 != null) {
                        length = value2.length();
                    } else {
                        length = 0;
                    }
                    i = length >= 100 ? 1 : 0;
                    if (j3 != 0) {
                        j = i != 0 ? j | PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM : j | PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH;
                    }
                    int i5 = length;
                    charSequence = value2;
                    drawable = drawableFromResource2;
                    i2 = i;
                    i = i5;
                    if ((j & 1038) == 0) {
                        fields = individualObservable == null ? individualObservable.getFields() : null;
                        if ((j & 1030) != 0) {
                            obj = fields == null ? (ViewField) fields.get("purpose") : null;
                            updateRegistration(1, obj);
                            if (obj != null) {
                                watcher = obj.getWatcher();
                                if ((j & 1036) != 0) {
                                    obj2 = fields == null ? (ViewField) fields.get("recipient_name") : null;
                                    updateRegistration(3, obj2);
                                    if (obj2 != null) {
                                        watcher2 = obj2.getWatcher();
                                        j4 = j & 1156;
                                        if (j4 == 0) {
                                            safeUnbox = ViewDataBinding.safeUnbox(individualObservable == null ? individualObservable.getMaterialAssistance() : null);
                                            j4 = j4 == 0 ? safeUnbox ? j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID : j;
                                            i3 = safeUnbox ? 0 : 8;
                                            j = j4;
                                        } else {
                                            i3 = 0;
                                        }
                                        if ((j & 1812) == 0) {
                                            recipient_name = individualObservable == null ? individualObservable.getRecipient_name() : null;
                                            updateRegistration(4, recipient_name);
                                            value = ((j & 1556) != 0 || recipient_name == null) ? null : recipient_name.getValue();
                                            j3 = j & 1300;
                                            if (j3 == 0) {
                                                if (recipient_name == null) {
                                                    valid = recipient_name.getValid();
                                                } else {
                                                    valid = false;
                                                }
                                                if (j3 != 0) {
                                                    j = valid ? j | PlaybackStateCompat.ACTION_SET_REPEAT_MODE : j | PlaybackStateCompat.ACTION_PREPARE_FROM_URI;
                                                }
                                                if (valid) {
                                                    view = individualTransferBinding.editTextIndividualRecipientName;
                                                    i4 = C0859R.drawable.underline_gray_dc;
                                                } else {
                                                    view = individualTransferBinding.editTextIndividualRecipientName;
                                                    i4 = C0859R.drawable.underline_orange;
                                                }
                                                drawableFromResource = getDrawableFromResource(view, i4);
                                            } else {
                                                drawableFromResource = null;
                                            }
                                            if ((j & PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) != 0) {
                                                valueOf = String.valueOf(210 - i);
                                            } else {
                                                valueOf = null;
                                            }
                                            j2 = j & 1061;
                                            charSequence2 = j2 != 0 ? i2 != 0 ? valueOf : "" : null;
                                            if ((j & 1030) != 0) {
                                                individualTransferBinding.editTextIndividualPurpose.addTextChangedListener(watcher);
                                            }
                                            if ((j & 1093) != 0) {
                                                ViewBindingAdapter.setBackground(individualTransferBinding.editTextIndividualPurpose, drawable);
                                            }
                                            if (j2 != 0) {
                                                TextViewBindingAdapter.setText(individualTransferBinding.editTextIndividualPurpose, charSequence);
                                                TextViewBindingAdapter.setText(individualTransferBinding.mboundView4, charSequence2);
                                            }
                                            if ((j & 1036) != 0) {
                                                individualTransferBinding.editTextIndividualRecipientName.addTextChangedListener(watcher2);
                                            }
                                            if ((j & 1300) != 0) {
                                                ViewBindingAdapter.setBackground(individualTransferBinding.editTextIndividualRecipientName, drawableFromResource);
                                            }
                                            if ((j & 1556) != 0) {
                                                TextViewBindingAdapter.setText(individualTransferBinding.editTextIndividualRecipientName, value);
                                            }
                                            if ((j & 1156) == 0) {
                                                individualTransferBinding.materialAssistTypeSpinner.setVisibility(i3);
                                                individualTransferBinding.mboundView2.setVisibility(i3);
                                            }
                                        }
                                        drawableFromResource = null;
                                    }
                                }
                            }
                        }
                        watcher = null;
                        if ((j & 1036) != 0) {
                            if (fields == null) {
                            }
                            updateRegistration(3, obj2);
                            if (obj2 != null) {
                                watcher2 = obj2.getWatcher();
                                j4 = j & 1156;
                                if (j4 == 0) {
                                    i3 = 0;
                                } else {
                                    if (individualObservable == null) {
                                    }
                                    safeUnbox = ViewDataBinding.safeUnbox(individualObservable == null ? individualObservable.getMaterialAssistance() : null);
                                    if (j4 == 0) {
                                    }
                                    if (safeUnbox) {
                                    }
                                    i3 = safeUnbox ? 0 : 8;
                                    j = j4;
                                }
                                if ((j & 1812) == 0) {
                                    drawableFromResource = null;
                                } else {
                                    if (individualObservable == null) {
                                    }
                                    updateRegistration(4, recipient_name);
                                    if ((j & 1556) != 0) {
                                    }
                                    j3 = j & 1300;
                                    if (j3 == 0) {
                                        drawableFromResource = null;
                                    } else {
                                        if (recipient_name == null) {
                                            valid = false;
                                        } else {
                                            valid = recipient_name.getValid();
                                        }
                                        if (j3 != 0) {
                                            if (valid) {
                                            }
                                            j = valid ? j | PlaybackStateCompat.ACTION_SET_REPEAT_MODE : j | PlaybackStateCompat.ACTION_PREPARE_FROM_URI;
                                        }
                                        if (valid) {
                                            view = individualTransferBinding.editTextIndividualRecipientName;
                                            i4 = C0859R.drawable.underline_gray_dc;
                                        } else {
                                            view = individualTransferBinding.editTextIndividualRecipientName;
                                            i4 = C0859R.drawable.underline_orange;
                                        }
                                        drawableFromResource = getDrawableFromResource(view, i4);
                                    }
                                    if ((j & PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) != 0) {
                                        valueOf = null;
                                    } else {
                                        valueOf = String.valueOf(210 - i);
                                    }
                                    j2 = j & 1061;
                                    if (j2 != 0) {
                                    }
                                    if ((j & 1030) != 0) {
                                        individualTransferBinding.editTextIndividualPurpose.addTextChangedListener(watcher);
                                    }
                                    if ((j & 1093) != 0) {
                                        ViewBindingAdapter.setBackground(individualTransferBinding.editTextIndividualPurpose, drawable);
                                    }
                                    if (j2 != 0) {
                                        TextViewBindingAdapter.setText(individualTransferBinding.editTextIndividualPurpose, charSequence);
                                        TextViewBindingAdapter.setText(individualTransferBinding.mboundView4, charSequence2);
                                    }
                                    if ((j & 1036) != 0) {
                                        individualTransferBinding.editTextIndividualRecipientName.addTextChangedListener(watcher2);
                                    }
                                    if ((j & 1300) != 0) {
                                        ViewBindingAdapter.setBackground(individualTransferBinding.editTextIndividualRecipientName, drawableFromResource);
                                    }
                                    if ((j & 1556) != 0) {
                                        TextViewBindingAdapter.setText(individualTransferBinding.editTextIndividualRecipientName, value);
                                    }
                                    if ((j & 1156) == 0) {
                                        individualTransferBinding.materialAssistTypeSpinner.setVisibility(i3);
                                        individualTransferBinding.mboundView2.setVisibility(i3);
                                    }
                                }
                            }
                        }
                    }
                    watcher = null;
                    watcher2 = null;
                    j4 = j & 1156;
                    if (j4 == 0) {
                        if (individualObservable == null) {
                        }
                        safeUnbox = ViewDataBinding.safeUnbox(individualObservable == null ? individualObservable.getMaterialAssistance() : null);
                        if (j4 == 0) {
                            if (safeUnbox) {
                            }
                        }
                        if (safeUnbox) {
                        }
                        i3 = safeUnbox ? 0 : 8;
                        j = j4;
                    } else {
                        i3 = 0;
                    }
                    if ((j & 1812) == 0) {
                        if (individualObservable == null) {
                        }
                        updateRegistration(4, recipient_name);
                        if ((j & 1556) != 0) {
                        }
                        j3 = j & 1300;
                        if (j3 == 0) {
                            if (recipient_name == null) {
                                valid = recipient_name.getValid();
                            } else {
                                valid = false;
                            }
                            if (j3 != 0) {
                                if (valid) {
                                }
                                j = valid ? j | PlaybackStateCompat.ACTION_SET_REPEAT_MODE : j | PlaybackStateCompat.ACTION_PREPARE_FROM_URI;
                            }
                            if (valid) {
                                view = individualTransferBinding.editTextIndividualRecipientName;
                                i4 = C0859R.drawable.underline_orange;
                            } else {
                                view = individualTransferBinding.editTextIndividualRecipientName;
                                i4 = C0859R.drawable.underline_gray_dc;
                            }
                            drawableFromResource = getDrawableFromResource(view, i4);
                        } else {
                            drawableFromResource = null;
                        }
                        if ((j & PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) != 0) {
                            valueOf = String.valueOf(210 - i);
                        } else {
                            valueOf = null;
                        }
                        j2 = j & 1061;
                        if (j2 != 0) {
                            if (i2 != 0) {
                            }
                        }
                        if ((j & 1030) != 0) {
                            individualTransferBinding.editTextIndividualPurpose.addTextChangedListener(watcher);
                        }
                        if ((j & 1093) != 0) {
                            ViewBindingAdapter.setBackground(individualTransferBinding.editTextIndividualPurpose, drawable);
                        }
                        if (j2 != 0) {
                            TextViewBindingAdapter.setText(individualTransferBinding.editTextIndividualPurpose, charSequence);
                            TextViewBindingAdapter.setText(individualTransferBinding.mboundView4, charSequence2);
                        }
                        if ((j & 1036) != 0) {
                            individualTransferBinding.editTextIndividualRecipientName.addTextChangedListener(watcher2);
                        }
                        if ((j & 1300) != 0) {
                            ViewBindingAdapter.setBackground(individualTransferBinding.editTextIndividualRecipientName, drawableFromResource);
                        }
                        if ((j & 1556) != 0) {
                            TextViewBindingAdapter.setText(individualTransferBinding.editTextIndividualRecipientName, value);
                        }
                        if ((j & 1156) == 0) {
                            individualTransferBinding.materialAssistTypeSpinner.setVisibility(i3);
                            individualTransferBinding.mboundView2.setVisibility(i3);
                        }
                    }
                    drawableFromResource = null;
                } else {
                    drawable = drawableFromResource2;
                }
            } else {
                drawable = null;
            }
            i2 = 0;
            charSequence = null;
            i = 0;
            if ((j & 1038) == 0) {
                watcher = null;
            } else {
                if (individualObservable == null) {
                }
                if ((j & 1030) != 0) {
                    if (fields == null) {
                    }
                    updateRegistration(1, obj);
                    if (obj != null) {
                        watcher = obj.getWatcher();
                        if ((j & 1036) != 0) {
                            if (fields == null) {
                            }
                            updateRegistration(3, obj2);
                            if (obj2 != null) {
                                watcher2 = obj2.getWatcher();
                                j4 = j & 1156;
                                if (j4 == 0) {
                                    i3 = 0;
                                } else {
                                    if (individualObservable == null) {
                                    }
                                    safeUnbox = ViewDataBinding.safeUnbox(individualObservable == null ? individualObservable.getMaterialAssistance() : null);
                                    if (j4 == 0) {
                                    }
                                    if (safeUnbox) {
                                    }
                                    i3 = safeUnbox ? 0 : 8;
                                    j = j4;
                                }
                                if ((j & 1812) == 0) {
                                    drawableFromResource = null;
                                } else {
                                    if (individualObservable == null) {
                                    }
                                    updateRegistration(4, recipient_name);
                                    if ((j & 1556) != 0) {
                                    }
                                    j3 = j & 1300;
                                    if (j3 == 0) {
                                        drawableFromResource = null;
                                    } else {
                                        if (recipient_name == null) {
                                            valid = false;
                                        } else {
                                            valid = recipient_name.getValid();
                                        }
                                        if (j3 != 0) {
                                            if (valid) {
                                            }
                                            j = valid ? j | PlaybackStateCompat.ACTION_SET_REPEAT_MODE : j | PlaybackStateCompat.ACTION_PREPARE_FROM_URI;
                                        }
                                        if (valid) {
                                            view = individualTransferBinding.editTextIndividualRecipientName;
                                            i4 = C0859R.drawable.underline_gray_dc;
                                        } else {
                                            view = individualTransferBinding.editTextIndividualRecipientName;
                                            i4 = C0859R.drawable.underline_orange;
                                        }
                                        drawableFromResource = getDrawableFromResource(view, i4);
                                    }
                                    if ((j & PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) != 0) {
                                        valueOf = null;
                                    } else {
                                        valueOf = String.valueOf(210 - i);
                                    }
                                    j2 = j & 1061;
                                    if (j2 != 0) {
                                    }
                                    if ((j & 1030) != 0) {
                                        individualTransferBinding.editTextIndividualPurpose.addTextChangedListener(watcher);
                                    }
                                    if ((j & 1093) != 0) {
                                        ViewBindingAdapter.setBackground(individualTransferBinding.editTextIndividualPurpose, drawable);
                                    }
                                    if (j2 != 0) {
                                        TextViewBindingAdapter.setText(individualTransferBinding.editTextIndividualPurpose, charSequence);
                                        TextViewBindingAdapter.setText(individualTransferBinding.mboundView4, charSequence2);
                                    }
                                    if ((j & 1036) != 0) {
                                        individualTransferBinding.editTextIndividualRecipientName.addTextChangedListener(watcher2);
                                    }
                                    if ((j & 1300) != 0) {
                                        ViewBindingAdapter.setBackground(individualTransferBinding.editTextIndividualRecipientName, drawableFromResource);
                                    }
                                    if ((j & 1556) != 0) {
                                        TextViewBindingAdapter.setText(individualTransferBinding.editTextIndividualRecipientName, value);
                                    }
                                    if ((j & 1156) == 0) {
                                        individualTransferBinding.materialAssistTypeSpinner.setVisibility(i3);
                                        individualTransferBinding.mboundView2.setVisibility(i3);
                                    }
                                }
                            }
                        }
                    }
                }
                watcher = null;
                if ((j & 1036) != 0) {
                    if (fields == null) {
                    }
                    updateRegistration(3, obj2);
                    if (obj2 != null) {
                        watcher2 = obj2.getWatcher();
                        j4 = j & 1156;
                        if (j4 == 0) {
                            if (individualObservable == null) {
                            }
                            safeUnbox = ViewDataBinding.safeUnbox(individualObservable == null ? individualObservable.getMaterialAssistance() : null);
                            if (j4 == 0) {
                                if (safeUnbox) {
                                }
                            }
                            if (safeUnbox) {
                            }
                            i3 = safeUnbox ? 0 : 8;
                            j = j4;
                        } else {
                            i3 = 0;
                        }
                        if ((j & 1812) == 0) {
                            if (individualObservable == null) {
                            }
                            updateRegistration(4, recipient_name);
                            if ((j & 1556) != 0) {
                            }
                            j3 = j & 1300;
                            if (j3 == 0) {
                                if (recipient_name == null) {
                                    valid = recipient_name.getValid();
                                } else {
                                    valid = false;
                                }
                                if (j3 != 0) {
                                    if (valid) {
                                    }
                                    j = valid ? j | PlaybackStateCompat.ACTION_SET_REPEAT_MODE : j | PlaybackStateCompat.ACTION_PREPARE_FROM_URI;
                                }
                                if (valid) {
                                    view = individualTransferBinding.editTextIndividualRecipientName;
                                    i4 = C0859R.drawable.underline_orange;
                                } else {
                                    view = individualTransferBinding.editTextIndividualRecipientName;
                                    i4 = C0859R.drawable.underline_gray_dc;
                                }
                                drawableFromResource = getDrawableFromResource(view, i4);
                            } else {
                                drawableFromResource = null;
                            }
                            if ((j & PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) != 0) {
                                valueOf = String.valueOf(210 - i);
                            } else {
                                valueOf = null;
                            }
                            j2 = j & 1061;
                            if (j2 != 0) {
                                if (i2 != 0) {
                                }
                            }
                            if ((j & 1030) != 0) {
                                individualTransferBinding.editTextIndividualPurpose.addTextChangedListener(watcher);
                            }
                            if ((j & 1093) != 0) {
                                ViewBindingAdapter.setBackground(individualTransferBinding.editTextIndividualPurpose, drawable);
                            }
                            if (j2 != 0) {
                                TextViewBindingAdapter.setText(individualTransferBinding.editTextIndividualPurpose, charSequence);
                                TextViewBindingAdapter.setText(individualTransferBinding.mboundView4, charSequence2);
                            }
                            if ((j & 1036) != 0) {
                                individualTransferBinding.editTextIndividualRecipientName.addTextChangedListener(watcher2);
                            }
                            if ((j & 1300) != 0) {
                                ViewBindingAdapter.setBackground(individualTransferBinding.editTextIndividualRecipientName, drawableFromResource);
                            }
                            if ((j & 1556) != 0) {
                                TextViewBindingAdapter.setText(individualTransferBinding.editTextIndividualRecipientName, value);
                            }
                            if ((j & 1156) == 0) {
                                individualTransferBinding.materialAssistTypeSpinner.setVisibility(i3);
                                individualTransferBinding.mboundView2.setVisibility(i3);
                            }
                        }
                        drawableFromResource = null;
                    }
                }
            }
            watcher2 = null;
            j4 = j & 1156;
            if (j4 == 0) {
                i3 = 0;
            } else {
                if (individualObservable == null) {
                }
                safeUnbox = ViewDataBinding.safeUnbox(individualObservable == null ? individualObservable.getMaterialAssistance() : null);
                if (j4 == 0) {
                }
                if (safeUnbox) {
                }
                i3 = safeUnbox ? 0 : 8;
                j = j4;
            }
            if ((j & 1812) == 0) {
                drawableFromResource = null;
            } else {
                if (individualObservable == null) {
                }
                updateRegistration(4, recipient_name);
                if ((j & 1556) != 0) {
                }
                j3 = j & 1300;
                if (j3 == 0) {
                    drawableFromResource = null;
                } else {
                    if (recipient_name == null) {
                        valid = false;
                    } else {
                        valid = recipient_name.getValid();
                    }
                    if (j3 != 0) {
                        if (valid) {
                        }
                        j = valid ? j | PlaybackStateCompat.ACTION_SET_REPEAT_MODE : j | PlaybackStateCompat.ACTION_PREPARE_FROM_URI;
                    }
                    if (valid) {
                        view = individualTransferBinding.editTextIndividualRecipientName;
                        i4 = C0859R.drawable.underline_gray_dc;
                    } else {
                        view = individualTransferBinding.editTextIndividualRecipientName;
                        i4 = C0859R.drawable.underline_orange;
                    }
                    drawableFromResource = getDrawableFromResource(view, i4);
                }
                if ((j & PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) != 0) {
                    valueOf = null;
                } else {
                    valueOf = String.valueOf(210 - i);
                }
                j2 = j & 1061;
                if (j2 != 0) {
                }
                if ((j & 1030) != 0) {
                    individualTransferBinding.editTextIndividualPurpose.addTextChangedListener(watcher);
                }
                if ((j & 1093) != 0) {
                    ViewBindingAdapter.setBackground(individualTransferBinding.editTextIndividualPurpose, drawable);
                }
                if (j2 != 0) {
                    TextViewBindingAdapter.setText(individualTransferBinding.editTextIndividualPurpose, charSequence);
                    TextViewBindingAdapter.setText(individualTransferBinding.mboundView4, charSequence2);
                }
                if ((j & 1036) != 0) {
                    individualTransferBinding.editTextIndividualRecipientName.addTextChangedListener(watcher2);
                }
                if ((j & 1300) != 0) {
                    ViewBindingAdapter.setBackground(individualTransferBinding.editTextIndividualRecipientName, drawableFromResource);
                }
                if ((j & 1556) != 0) {
                    TextViewBindingAdapter.setText(individualTransferBinding.editTextIndividualRecipientName, value);
                }
                if ((j & 1156) == 0) {
                    individualTransferBinding.materialAssistTypeSpinner.setVisibility(i3);
                    individualTransferBinding.mboundView2.setVisibility(i3);
                }
            }
        }
        drawableFromResource = null;
        drawable = null;
        i2 = 0;
        watcher = null;
        charSequence = null;
        i = 0;
        watcher2 = null;
        i3 = 0;
        value = null;
        if ((j & PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) != 0) {
            valueOf = String.valueOf(210 - i);
        } else {
            valueOf = null;
        }
        j2 = j & 1061;
        if (j2 != 0) {
            if (i2 != 0) {
            }
        }
        if ((j & 1030) != 0) {
            individualTransferBinding.editTextIndividualPurpose.addTextChangedListener(watcher);
        }
        if ((j & 1093) != 0) {
            ViewBindingAdapter.setBackground(individualTransferBinding.editTextIndividualPurpose, drawable);
        }
        if (j2 != 0) {
            TextViewBindingAdapter.setText(individualTransferBinding.editTextIndividualPurpose, charSequence);
            TextViewBindingAdapter.setText(individualTransferBinding.mboundView4, charSequence2);
        }
        if ((j & 1036) != 0) {
            individualTransferBinding.editTextIndividualRecipientName.addTextChangedListener(watcher2);
        }
        if ((j & 1300) != 0) {
            ViewBindingAdapter.setBackground(individualTransferBinding.editTextIndividualRecipientName, drawableFromResource);
        }
        if ((j & 1556) != 0) {
            TextViewBindingAdapter.setText(individualTransferBinding.editTextIndividualRecipientName, value);
        }
        if ((j & 1156) == 0) {
            individualTransferBinding.materialAssistTypeSpinner.setVisibility(i3);
            individualTransferBinding.mboundView2.setVisibility(i3);
        }
    }

    public static IndividualTransferBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static IndividualTransferBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (IndividualTransferBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.individual_transfer, viewGroup, z, dataBindingComponent);
    }

    public static IndividualTransferBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static IndividualTransferBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.individual_transfer, null, false), dataBindingComponent);
    }

    public static IndividualTransferBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static IndividualTransferBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/individual_transfer_0".equals(view.getTag())) {
            return new IndividualTransferBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
