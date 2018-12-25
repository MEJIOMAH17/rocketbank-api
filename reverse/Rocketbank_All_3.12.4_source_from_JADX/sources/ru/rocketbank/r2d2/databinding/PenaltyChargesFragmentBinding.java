package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.databinding.adapters.TextViewBindingAdapter;
import android.databinding.adapters.ViewBindingAdapter;
import android.graphics.drawable.Drawable;
import android.support.v4.media.session.PlaybackStateCompat;
import android.support.v7.widget.SwitchCompat;
import android.text.TextWatcher;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import ru.rocketbank.core.widgets.RocketEditText;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.charges.penalty.PenaltyChargeViewModel;
import ru.rocketbank.r2d2.utils.TextWatcherAbstract;
import ru.rocketbank.r2d2.utils.ViewModelObservable.ViewField;

public class PenaltyChargesFragmentBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final RocketEditText editTextCtc;
    public final RocketEditText editTextDriverLicence;
    public final RocketEditText editTextUin;
    private long mDirtyFlags = -1;
    private PenaltyChargeViewModel mPenaltyCharge;
    private final LinearLayout mboundView0;
    private final RocketTextView mboundView1;
    private final RocketTextView mboundView2;
    private final RocketTextView mboundView4;
    private final RocketTextView mboundView6;
    public final SwitchCompat switcher;
    public final RocketTextView value;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.value, 8);
        sViewsWithIds.put(C0859R.id.switcher, 9);
    }

    public PenaltyChargesFragmentBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 7);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 10, sIncludes, sViewsWithIds);
        this.editTextCtc = (RocketEditText) dataBindingComponent[3];
        this.editTextCtc.setTag(null);
        this.editTextDriverLicence = (RocketEditText) dataBindingComponent[5];
        this.editTextDriverLicence.setTag(null);
        this.editTextUin = (RocketEditText) dataBindingComponent[7];
        this.editTextUin.setTag(null);
        this.mboundView0 = (LinearLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.mboundView1 = (RocketTextView) dataBindingComponent[1];
        this.mboundView1.setTag(null);
        this.mboundView2 = (RocketTextView) dataBindingComponent[2];
        this.mboundView2.setTag(null);
        this.mboundView4 = (RocketTextView) dataBindingComponent[4];
        this.mboundView4.setTag(null);
        this.mboundView6 = (RocketTextView) dataBindingComponent[6];
        this.mboundView6.setTag(null);
        this.switcher = (SwitchCompat) dataBindingComponent[9];
        this.value = (RocketTextView) dataBindingComponent[8];
        setRootTag(view);
        invalidateAll();
    }

    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = PlaybackStateCompat.ACTION_PREPARE;
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
        if (62 != i) {
            return false;
        }
        setPenaltyCharge((PenaltyChargeViewModel) obj);
        return true;
    }

    public void setPenaltyCharge(PenaltyChargeViewModel penaltyChargeViewModel) {
        updateRegistration(0, penaltyChargeViewModel);
        this.mPenaltyCharge = penaltyChargeViewModel;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(62);
        super.requestRebind();
    }

    public PenaltyChargeViewModel getPenaltyCharge() {
        return this.mPenaltyCharge;
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangePenaltyCharge((PenaltyChargeViewModel) obj, i2);
            case 1:
                return onChangePenaltyChargeGetFieldJavaLangStringCtc((ViewField) obj, i2);
            case 2:
                return onChangePenaltyChargeCtc((ViewField) obj, i2);
            case 3:
                return onChangePenaltyChargeUin((ViewField) obj, i2);
            case 4:
                return onChangePenaltyChargeGetFieldJavaLangStringDriverLicence((ViewField) obj, i2);
            case 5:
                return onChangePenaltyChargeDriverLicence((ViewField) obj, i2);
            case 6:
                return onChangePenaltyChargeGetFieldJavaLangStringUin((ViewField) obj, i2);
            default:
                return false;
        }
    }

    private boolean onChangePenaltyCharge(PenaltyChargeViewModel penaltyChargeViewModel, int i) {
        if (i == 0) {
            synchronized (this) {
                this.mDirtyFlags |= 1;
            }
            return true;
        } else if (i == 42) {
            synchronized (this) {
                this.mDirtyFlags |= 128;
            }
            return true;
        } else if (i == 23) {
            synchronized (this) {
                this.mDirtyFlags |= 4;
            }
            return true;
        } else if (i == 29) {
            synchronized (this) {
                this.mDirtyFlags |= 32;
            }
            return true;
        } else if (i != 87) {
            return null;
        } else {
            synchronized (this) {
                this.mDirtyFlags |= 8;
            }
            return true;
        }
    }

    private boolean onChangePenaltyChargeGetFieldJavaLangStringCtc(ViewField viewField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        return true;
    }

    private boolean onChangePenaltyChargeCtc(ViewField viewField, int i) {
        if (i == 0) {
            synchronized (this) {
                this.mDirtyFlags |= 4;
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

    private boolean onChangePenaltyChargeUin(ViewField viewField, int i) {
        if (i == 0) {
            synchronized (this) {
                this.mDirtyFlags |= 8;
            }
            return true;
        } else if (i == 88) {
            synchronized (this) {
                this.mDirtyFlags |= PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID;
            }
            return true;
        } else if (i != 89) {
            return null;
        } else {
            synchronized (this) {
                this.mDirtyFlags |= PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH;
            }
            return true;
        }
    }

    private boolean onChangePenaltyChargeGetFieldJavaLangStringDriverLicence(ViewField viewField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 16;
        }
        return true;
    }

    private boolean onChangePenaltyChargeDriverLicence(ViewField viewField, int i) {
        if (i == 0) {
            synchronized (this) {
                this.mDirtyFlags |= 32;
            }
            return true;
        } else if (i == 88) {
            synchronized (this) {
                this.mDirtyFlags |= PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM;
            }
            return true;
        } else if (i != 89) {
            return null;
        } else {
            synchronized (this) {
                this.mDirtyFlags |= PlaybackStateCompat.ACTION_PLAY_FROM_URI;
            }
            return true;
        }
    }

    private boolean onChangePenaltyChargeGetFieldJavaLangStringUin(ViewField viewField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 64;
        }
        return true;
    }

    protected void executeBindings() {
        TextWatcher watcher;
        Drawable drawableFromResource;
        CharSequence value;
        TextWatcher watcher2;
        Drawable drawable;
        String str;
        TextWatcher textWatcher;
        int i;
        CharSequence charSequence;
        Drawable drawable2;
        int i2;
        PenaltyChargesFragmentBinding penaltyChargesFragmentBinding = this;
        synchronized (this) {
            try {
                long j = penaltyChargesFragmentBinding.mDirtyFlags;
                penaltyChargesFragmentBinding.mDirtyFlags = 0;
            } catch (Throwable th) {
                while (true) {
                    Throwable th2 = th;
                }
            }
        }
        PenaltyChargeViewModel penaltyChargeViewModel = penaltyChargesFragmentBinding.mPenaltyCharge;
        boolean z = false;
        TextWatcherAbstract textWatcherAbstract = null;
        if ((j & 32767) != 0) {
            boolean z2;
            boolean z3;
            ViewField ctc;
            long j2;
            boolean valid;
            long j3;
            ViewField uin;
            String value2;
            boolean valid2;
            Drawable drawableFromResource2;
            Object field;
            ViewField driver_licence;
            String value3;
            String str2;
            Drawable drawableFromResource3;
            Object field2;
            long j4 = j & 16513;
            if (j4 != 0) {
                boolean safeUnbox = ViewDataBinding.safeUnbox(penaltyChargeViewModel != null ? penaltyChargeViewModel.getIKnowNum() : null);
                if (j4 != 0) {
                    j = safeUnbox ? (j | PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH) | 16777216 : (j | PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID) | 8388608;
                }
                z2 = true;
                z3 = safeUnbox ? false : true;
                if (!safeUnbox) {
                    z2 = false;
                }
            } else {
                z2 = false;
                z3 = z2;
            }
            if ((j & 16387) != 0) {
                Object field3 = penaltyChargeViewModel != null ? penaltyChargeViewModel.getField("ctc") : null;
                updateRegistration(1, field3);
                if (field3 != null) {
                    watcher = field3.getWatcher();
                    if ((j & 17157) == 0) {
                        ctc = penaltyChargeViewModel == null ? penaltyChargeViewModel.getCtc() : null;
                        updateRegistration(2, ctc);
                        j2 = j & 16645;
                        if (j2 == 0) {
                            if (ctc == null) {
                                valid = ctc.getValid();
                            } else {
                                valid = false;
                            }
                            j3 = j2 == 0 ? valid ? j | PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED : j | PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED : j;
                            drawableFromResource = valid ? getDrawableFromResource(penaltyChargesFragmentBinding.editTextCtc, C0859R.drawable.underline_orange) : getDrawableFromResource(penaltyChargesFragmentBinding.editTextCtc, C0859R.drawable.underline_gray_dc);
                            j = j3;
                        } else {
                            drawableFromResource = null;
                        }
                        value = ((j & 16901) != 0 || ctc == null) ? null : ctc.getValue();
                    } else {
                        value = null;
                        drawableFromResource = value;
                    }
                    if ((j & 19465) == 0) {
                        uin = penaltyChargeViewModel == null ? penaltyChargeViewModel.getUin() : null;
                        updateRegistration(3, uin);
                        value2 = ((j & 18441) != 0 || uin == null) ? null : uin.getValue();
                        j2 = j & 17417;
                        if (j2 == 0) {
                            if (uin == null) {
                                valid2 = uin.getValid();
                            } else {
                                valid2 = false;
                            }
                            if (j2 != 0) {
                                j = valid2 ? j | PlaybackStateCompat.ACTION_SET_REPEAT_MODE : j | PlaybackStateCompat.ACTION_PREPARE_FROM_URI;
                            }
                            drawableFromResource2 = valid2 ? getDrawableFromResource(penaltyChargesFragmentBinding.editTextUin, C0859R.drawable.underline_orange) : getDrawableFromResource(penaltyChargesFragmentBinding.editTextUin, C0859R.drawable.underline_gray_dc);
                        } else {
                            drawableFromResource2 = null;
                        }
                    } else {
                        drawableFromResource2 = null;
                        value2 = drawableFromResource2;
                    }
                    if ((j & 16401) != 0) {
                        field = penaltyChargeViewModel == null ? penaltyChargeViewModel.getField("driver_licence") : null;
                        updateRegistration(4, field);
                        if (field != null) {
                            watcher2 = field.getWatcher();
                            if ((j & 28705) == 0) {
                                driver_licence = penaltyChargeViewModel == null ? penaltyChargeViewModel.getDriver_licence() : null;
                                updateRegistration(5, driver_licence);
                                value3 = ((j & 24609) != 0 || driver_licence == null) ? null : driver_licence.getValue();
                                j3 = j & 20513;
                                if (j3 == 0) {
                                    if (driver_licence != null) {
                                        z = driver_licence.getValid();
                                    }
                                    j3 = j3 == 0 ? z ? j | 4194304 : j | PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE : j;
                                    str2 = value3;
                                    drawableFromResource3 = z ? getDrawableFromResource(penaltyChargesFragmentBinding.editTextDriverLicence, C0859R.drawable.underline_orange) : getDrawableFromResource(penaltyChargesFragmentBinding.editTextDriverLicence, C0859R.drawable.underline_gray_dc);
                                    j = j3;
                                } else {
                                    str2 = value3;
                                    drawableFromResource3 = null;
                                }
                            } else {
                                drawableFromResource3 = null;
                                str2 = drawableFromResource3;
                            }
                            if ((j & 16449) != 0) {
                                field2 = penaltyChargeViewModel == null ? penaltyChargeViewModel.getField("uin") : null;
                                updateRegistration(6, field2);
                                if (field2 != null) {
                                    textWatcherAbstract = field2.getWatcher();
                                }
                            }
                            drawable = drawableFromResource2;
                            str = value2;
                            textWatcher = textWatcherAbstract;
                            i = z2;
                            charSequence = str2;
                            drawable2 = drawableFromResource3;
                            i2 = z3;
                        }
                    }
                    watcher2 = null;
                    if ((j & 28705) == 0) {
                        drawableFromResource3 = null;
                        str2 = drawableFromResource3;
                    } else {
                        if (penaltyChargeViewModel == null) {
                        }
                        updateRegistration(5, driver_licence);
                        if ((j & 24609) != 0) {
                        }
                        j3 = j & 20513;
                        if (j3 == 0) {
                            str2 = value3;
                            drawableFromResource3 = null;
                        } else {
                            if (driver_licence != null) {
                                z = driver_licence.getValid();
                            }
                            if (j3 == 0) {
                            }
                            if (z) {
                            }
                            str2 = value3;
                            drawableFromResource3 = z ? getDrawableFromResource(penaltyChargesFragmentBinding.editTextDriverLicence, C0859R.drawable.underline_orange) : getDrawableFromResource(penaltyChargesFragmentBinding.editTextDriverLicence, C0859R.drawable.underline_gray_dc);
                            j = j3;
                        }
                    }
                    if ((j & 16449) != 0) {
                        if (penaltyChargeViewModel == null) {
                        }
                        updateRegistration(6, field2);
                        if (field2 != null) {
                            textWatcherAbstract = field2.getWatcher();
                        }
                    }
                    drawable = drawableFromResource2;
                    str = value2;
                    textWatcher = textWatcherAbstract;
                    i = z2;
                    charSequence = str2;
                    drawable2 = drawableFromResource3;
                    i2 = z3;
                }
            }
            watcher = null;
            if ((j & 17157) == 0) {
                value = null;
                drawableFromResource = value;
            } else {
                if (penaltyChargeViewModel == null) {
                }
                updateRegistration(2, ctc);
                j2 = j & 16645;
                if (j2 == 0) {
                    drawableFromResource = null;
                } else {
                    if (ctc == null) {
                        valid = false;
                    } else {
                        valid = ctc.getValid();
                    }
                    if (j2 == 0) {
                    }
                    if (valid) {
                    }
                    drawableFromResource = valid ? getDrawableFromResource(penaltyChargesFragmentBinding.editTextCtc, C0859R.drawable.underline_orange) : getDrawableFromResource(penaltyChargesFragmentBinding.editTextCtc, C0859R.drawable.underline_gray_dc);
                    j = j3;
                }
                if ((j & 16901) != 0) {
                }
            }
            if ((j & 19465) == 0) {
                drawableFromResource2 = null;
                value2 = drawableFromResource2;
            } else {
                if (penaltyChargeViewModel == null) {
                }
                updateRegistration(3, uin);
                if ((j & 18441) != 0) {
                }
                j2 = j & 17417;
                if (j2 == 0) {
                    drawableFromResource2 = null;
                } else {
                    if (uin == null) {
                        valid2 = false;
                    } else {
                        valid2 = uin.getValid();
                    }
                    if (j2 != 0) {
                        if (valid2) {
                        }
                        j = valid2 ? j | PlaybackStateCompat.ACTION_SET_REPEAT_MODE : j | PlaybackStateCompat.ACTION_PREPARE_FROM_URI;
                    }
                    if (valid2) {
                    }
                }
            }
            if ((j & 16401) != 0) {
                if (penaltyChargeViewModel == null) {
                }
                updateRegistration(4, field);
                if (field != null) {
                    watcher2 = field.getWatcher();
                    if ((j & 28705) == 0) {
                        if (penaltyChargeViewModel == null) {
                        }
                        updateRegistration(5, driver_licence);
                        if ((j & 24609) != 0) {
                        }
                        j3 = j & 20513;
                        if (j3 == 0) {
                            if (driver_licence != null) {
                                z = driver_licence.getValid();
                            }
                            if (j3 == 0) {
                                if (z) {
                                }
                            }
                            if (z) {
                            }
                            str2 = value3;
                            drawableFromResource3 = z ? getDrawableFromResource(penaltyChargesFragmentBinding.editTextDriverLicence, C0859R.drawable.underline_orange) : getDrawableFromResource(penaltyChargesFragmentBinding.editTextDriverLicence, C0859R.drawable.underline_gray_dc);
                            j = j3;
                        } else {
                            str2 = value3;
                            drawableFromResource3 = null;
                        }
                    } else {
                        drawableFromResource3 = null;
                        str2 = drawableFromResource3;
                    }
                    if ((j & 16449) != 0) {
                        if (penaltyChargeViewModel == null) {
                        }
                        updateRegistration(6, field2);
                        if (field2 != null) {
                            textWatcherAbstract = field2.getWatcher();
                        }
                    }
                    drawable = drawableFromResource2;
                    str = value2;
                    textWatcher = textWatcherAbstract;
                    i = z2;
                    charSequence = str2;
                    drawable2 = drawableFromResource3;
                    i2 = z3;
                }
            }
            watcher2 = null;
            if ((j & 28705) == 0) {
                drawableFromResource3 = null;
                str2 = drawableFromResource3;
            } else {
                if (penaltyChargeViewModel == null) {
                }
                updateRegistration(5, driver_licence);
                if ((j & 24609) != 0) {
                }
                j3 = j & 20513;
                if (j3 == 0) {
                    str2 = value3;
                    drawableFromResource3 = null;
                } else {
                    if (driver_licence != null) {
                        z = driver_licence.getValid();
                    }
                    if (j3 == 0) {
                    }
                    if (z) {
                    }
                    str2 = value3;
                    drawableFromResource3 = z ? getDrawableFromResource(penaltyChargesFragmentBinding.editTextDriverLicence, C0859R.drawable.underline_orange) : getDrawableFromResource(penaltyChargesFragmentBinding.editTextDriverLicence, C0859R.drawable.underline_gray_dc);
                    j = j3;
                }
            }
            if ((j & 16449) != 0) {
                if (penaltyChargeViewModel == null) {
                }
                updateRegistration(6, field2);
                if (field2 != null) {
                    textWatcherAbstract = field2.getWatcher();
                }
            }
            drawable = drawableFromResource2;
            str = value2;
            textWatcher = textWatcherAbstract;
            i = z2;
            charSequence = str2;
            drawable2 = drawableFromResource3;
            i2 = z3;
        } else {
            i = 0;
            i2 = i;
            watcher = null;
            value = watcher;
            drawable2 = value;
            drawableFromResource = drawable2;
            charSequence = drawableFromResource;
            textWatcher = charSequence;
            watcher2 = textWatcher;
            drawable = watcher2;
            str = drawable;
        }
        if ((j & 16387) != 0) {
            penaltyChargesFragmentBinding.editTextCtc.addTextChangedListener(watcher);
        }
        if ((j & 16645) != 0) {
            ViewBindingAdapter.setBackground(penaltyChargesFragmentBinding.editTextCtc, drawableFromResource);
        }
        if ((j & 16901) != 0) {
            TextViewBindingAdapter.setText(penaltyChargesFragmentBinding.editTextCtc, value);
        }
        if ((j & 16513) != 0) {
            penaltyChargesFragmentBinding.editTextCtc.setVisibility(i);
            penaltyChargesFragmentBinding.editTextDriverLicence.setVisibility(i);
            penaltyChargesFragmentBinding.editTextUin.setVisibility(i2);
            penaltyChargesFragmentBinding.mboundView1.setVisibility(i);
            penaltyChargesFragmentBinding.mboundView2.setVisibility(i);
            penaltyChargesFragmentBinding.mboundView4.setVisibility(i);
            penaltyChargesFragmentBinding.mboundView6.setVisibility(i2);
        }
        if ((j & 16401) != 0) {
            penaltyChargesFragmentBinding.editTextDriverLicence.addTextChangedListener(watcher2);
        }
        if ((j & 20513) != 0) {
            ViewBindingAdapter.setBackground(penaltyChargesFragmentBinding.editTextDriverLicence, drawable2);
        }
        if ((j & 24609) != 0) {
            TextViewBindingAdapter.setText(penaltyChargesFragmentBinding.editTextDriverLicence, charSequence);
        }
        if ((j & 16449) != 0) {
            penaltyChargesFragmentBinding.editTextUin.addTextChangedListener(textWatcher);
        }
        if ((j & 17417) != 0) {
            ViewBindingAdapter.setBackground(penaltyChargesFragmentBinding.editTextUin, drawable);
        }
        if ((j & 18441) != 0) {
            TextViewBindingAdapter.setText(penaltyChargesFragmentBinding.editTextUin, str);
        }
    }

    public static PenaltyChargesFragmentBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static PenaltyChargesFragmentBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (PenaltyChargesFragmentBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.penalty_charges_fragment, viewGroup, z, dataBindingComponent);
    }

    public static PenaltyChargesFragmentBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static PenaltyChargesFragmentBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.penalty_charges_fragment, null, false), dataBindingComponent);
    }

    public static PenaltyChargesFragmentBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static PenaltyChargesFragmentBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/penalty_charges_fragment_0".equals(view.getTag())) {
            return new PenaltyChargesFragmentBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
