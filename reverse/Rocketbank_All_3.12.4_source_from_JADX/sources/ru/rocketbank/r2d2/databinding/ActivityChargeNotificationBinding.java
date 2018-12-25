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
import android.support.v7.widget.Toolbar;
import android.text.TextWatcher;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import ru.rocketbank.core.widgets.RocketButton;
import ru.rocketbank.core.widgets.RocketEditText;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.charges.penalty.PenaltyChargeViewModel;
import ru.rocketbank.r2d2.charges.tax.TaxChargeViewModel;
import ru.rocketbank.r2d2.utils.ViewModelObservable.ViewField;

public class ActivityChargeNotificationBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final RocketButton buttonCheck;
    public final LinearLayout content;
    public final RocketEditText editTextCtc;
    public final RocketEditText editTextDriverLicence;
    public final RocketEditText editTextInn;
    private long mDirtyFlags = -1;
    private PenaltyChargeViewModel mPenaltyCharge;
    private Boolean mPenaltyTaxNotificationEnabled;
    private TaxChargeViewModel mTaxCharge;
    private final RocketTextView mboundView2;
    private final RocketTextView mboundView4;
    public final RocketTextView rocketTextView2;
    public final SwitchCompat switcherPenaltyTax;
    public final Toolbar toolbar;
    public final View toolbarShadow;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.switcherPenaltyTax, 7);
        sViewsWithIds.put(C0859R.id.rocketTextView2, 8);
        sViewsWithIds.put(C0859R.id.buttonCheck, 9);
        sViewsWithIds.put(C0859R.id.toolbarShadow, 10);
    }

    public ActivityChargeNotificationBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 8);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 11, sIncludes, sViewsWithIds);
        this.buttonCheck = (RocketButton) dataBindingComponent[9];
        this.content = (LinearLayout) dataBindingComponent[0];
        this.content.setTag(null);
        this.editTextCtc = (RocketEditText) dataBindingComponent[3];
        this.editTextCtc.setTag(null);
        this.editTextDriverLicence = (RocketEditText) dataBindingComponent[5];
        this.editTextDriverLicence.setTag(null);
        this.editTextInn = (RocketEditText) dataBindingComponent[6];
        this.editTextInn.setTag(null);
        this.mboundView2 = (RocketTextView) dataBindingComponent[2];
        this.mboundView2.setTag(null);
        this.mboundView4 = (RocketTextView) dataBindingComponent[4];
        this.mboundView4.setTag(null);
        this.rocketTextView2 = (RocketTextView) dataBindingComponent[8];
        this.switcherPenaltyTax = (SwitchCompat) dataBindingComponent[7];
        this.toolbar = (Toolbar) dataBindingComponent[1];
        this.toolbar.setTag(null);
        this.toolbarShadow = (View) dataBindingComponent[10];
        setRootTag(view);
        invalidateAll();
    }

    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH;
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
        if (62 == i) {
            setPenaltyCharge((PenaltyChargeViewModel) obj);
        } else if (78 == i) {
            setTaxCharge((TaxChargeViewModel) obj);
        } else if (63 != i) {
            return false;
        } else {
            setPenaltyTaxNotificationEnabled((Boolean) obj);
        }
        return true;
    }

    public void setPenaltyCharge(PenaltyChargeViewModel penaltyChargeViewModel) {
        updateRegistration(1, penaltyChargeViewModel);
        this.mPenaltyCharge = penaltyChargeViewModel;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(62);
        super.requestRebind();
    }

    public PenaltyChargeViewModel getPenaltyCharge() {
        return this.mPenaltyCharge;
    }

    public void setTaxCharge(TaxChargeViewModel taxChargeViewModel) {
        updateRegistration(2, taxChargeViewModel);
        this.mTaxCharge = taxChargeViewModel;
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        notifyPropertyChanged(78);
        super.requestRebind();
    }

    public TaxChargeViewModel getTaxCharge() {
        return this.mTaxCharge;
    }

    public void setPenaltyTaxNotificationEnabled(Boolean bool) {
        this.mPenaltyTaxNotificationEnabled = bool;
    }

    public Boolean getPenaltyTaxNotificationEnabled() {
        return this.mPenaltyTaxNotificationEnabled;
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeTaxChargeGetFieldJavaLangStringInn((ViewField) obj, i2);
            case 1:
                return onChangePenaltyCharge((PenaltyChargeViewModel) obj, i2);
            case 2:
                return onChangeTaxCharge((TaxChargeViewModel) obj, i2);
            case 3:
                return onChangeTaxChargeInn((ViewField) obj, i2);
            case 4:
                return onChangePenaltyChargeGetFieldJavaLangStringCtc((ViewField) obj, i2);
            case 5:
                return onChangePenaltyChargeCtc((ViewField) obj, i2);
            case 6:
                return onChangePenaltyChargeGetFieldJavaLangStringDriverLicence((ViewField) obj, i2);
            case 7:
                return onChangePenaltyChargeDriverLicence((ViewField) obj, i2);
            default:
                return false;
        }
    }

    private boolean onChangeTaxChargeGetFieldJavaLangStringInn(ViewField viewField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    private boolean onChangePenaltyCharge(PenaltyChargeViewModel penaltyChargeViewModel, int i) {
        if (i == 0) {
            synchronized (this) {
                this.mDirtyFlags |= 2;
            }
            return true;
        } else if (i == 42) {
            synchronized (this) {
                this.mDirtyFlags |= 512;
            }
            return true;
        } else if (i == 23) {
            synchronized (this) {
                this.mDirtyFlags |= 32;
            }
            return true;
        } else if (i != 29) {
            return null;
        } else {
            synchronized (this) {
                this.mDirtyFlags |= 128;
            }
            return true;
        }
    }

    private boolean onChangeTaxCharge(TaxChargeViewModel taxChargeViewModel, int i) {
        if (i == 0) {
            synchronized (this) {
                this.mDirtyFlags |= 4;
            }
            return true;
        } else if (i != 46) {
            return null;
        } else {
            synchronized (this) {
                this.mDirtyFlags |= 8;
            }
            return true;
        }
    }

    private boolean onChangeTaxChargeInn(ViewField viewField, int i) {
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

    private boolean onChangePenaltyChargeGetFieldJavaLangStringCtc(ViewField viewField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 16;
        }
        return true;
    }

    private boolean onChangePenaltyChargeCtc(ViewField viewField, int i) {
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

    private boolean onChangePenaltyChargeGetFieldJavaLangStringDriverLicence(ViewField viewField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 64;
        }
        return true;
    }

    private boolean onChangePenaltyChargeDriverLicence(ViewField viewField, int i) {
        if (i == 0) {
            synchronized (this) {
                this.mDirtyFlags |= 128;
            }
            return true;
        } else if (i == 88) {
            synchronized (this) {
                this.mDirtyFlags |= PlaybackStateCompat.ACTION_PREPARE;
            }
            return true;
        } else if (i != 89) {
            return null;
        } else {
            synchronized (this) {
                this.mDirtyFlags |= PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
            }
            return true;
        }
    }

    protected void executeBindings() {
        CharSequence value;
        TextWatcher watcher;
        Drawable drawableFromResource;
        ActivityChargeNotificationBinding activityChargeNotificationBinding = this;
        synchronized (this) {
            try {
                long j = activityChargeNotificationBinding.mDirtyFlags;
                activityChargeNotificationBinding.mDirtyFlags = 0;
            } catch (Throwable th) {
                while (true) {
                    Throwable th2 = th;
                }
            }
        }
        PenaltyChargeViewModel penaltyChargeViewModel = activityChargeNotificationBinding.mPenaltyCharge;
        TaxChargeViewModel taxChargeViewModel = activityChargeNotificationBinding.mTaxCharge;
        int i;
        TextWatcher watcher2;
        Drawable drawableFromResource2;
        CharSequence value2;
        TextWatcher watcher3;
        Drawable drawableFromResource3;
        Object field;
        ViewField inn;
        long j2;
        boolean valid;
        long j3;
        View view;
        int i2;
        CharSequence value3;
        if ((j & 127730) != 0) {
            Object field2;
            ViewField ctc;
            long j4;
            boolean valid2;
            Object field3;
            ViewField driver_licence;
            boolean valid3;
            long j5 = j & 66050;
            if (j5 != 0) {
                boolean safeUnbox = ViewDataBinding.safeUnbox(penaltyChargeViewModel != null ? penaltyChargeViewModel.getIKnowNum() : null);
                if (j5 != 0) {
                    j = safeUnbox ? j | 16777216 : j | 8388608;
                }
                if (safeUnbox) {
                    i = 8;
                    if ((j & 65554) != 0) {
                        field2 = penaltyChargeViewModel == null ? penaltyChargeViewModel.getField("ctc") : null;
                        updateRegistration(4, field2);
                        if (field2 != null) {
                            watcher2 = field2.getWatcher();
                            if ((j & 77858) == 0) {
                                ctc = penaltyChargeViewModel == null ? penaltyChargeViewModel.getCtc() : null;
                                updateRegistration(5, ctc);
                                j4 = j & 69666;
                                if (j4 == 0) {
                                    if (ctc == null) {
                                        valid2 = ctc.getValid();
                                    } else {
                                        valid2 = false;
                                    }
                                    if (j4 != 0) {
                                        j = valid2 ? j | PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED : j | PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED;
                                    }
                                    drawableFromResource2 = valid2 ? getDrawableFromResource(activityChargeNotificationBinding.editTextCtc, C0859R.drawable.underline_orange) : getDrawableFromResource(activityChargeNotificationBinding.editTextCtc, C0859R.drawable.underline_gray_dc);
                                } else {
                                    drawableFromResource2 = null;
                                }
                                value2 = ((j & 73762) != 0 || ctc == null) ? null : ctc.getValue();
                            } else {
                                value2 = null;
                                drawableFromResource2 = null;
                            }
                            if ((j & 65602) != 0) {
                                field3 = penaltyChargeViewModel == null ? penaltyChargeViewModel.getField("driver_licence") : null;
                                updateRegistration(6, field3);
                                if (field3 != null) {
                                    watcher3 = field3.getWatcher();
                                    if ((j & 114818) == 0) {
                                        driver_licence = penaltyChargeViewModel == null ? penaltyChargeViewModel.getDriver_licence() : null;
                                        updateRegistration(7, driver_licence);
                                        value = ((j & 98434) != 0 || driver_licence == null) ? null : driver_licence.getValue();
                                        j5 = j & 82050;
                                        if (j5 == 0) {
                                            if (driver_licence == null) {
                                                valid3 = driver_licence.getValid();
                                            } else {
                                                valid3 = false;
                                            }
                                            if (j5 != 0) {
                                                j = valid3 ? j | 4194304 : j | PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE;
                                            }
                                            drawableFromResource3 = valid3 ? getDrawableFromResource(activityChargeNotificationBinding.editTextDriverLicence, C0859R.drawable.underline_orange) : getDrawableFromResource(activityChargeNotificationBinding.editTextDriverLicence, C0859R.drawable.underline_gray_dc);
                                        } else {
                                            drawableFromResource3 = null;
                                        }
                                        if ((j & 68621) != 0) {
                                            if ((j & 65541) != 0) {
                                                field = taxChargeViewModel != null ? taxChargeViewModel.getField("inn") : null;
                                                updateRegistration(0, field);
                                                if (field != null) {
                                                    watcher = field.getWatcher();
                                                    if ((j & 68620) == 0) {
                                                        inn = taxChargeViewModel == null ? taxChargeViewModel.getInn() : null;
                                                        updateRegistration(3, inn);
                                                        j2 = j & 66572;
                                                        if (j2 == 0) {
                                                            if (inn == null) {
                                                                valid = inn.getValid();
                                                            } else {
                                                                valid = false;
                                                            }
                                                            j3 = j2 == 0 ? valid ? j | PlaybackStateCompat.ACTION_SET_REPEAT_MODE : j | PlaybackStateCompat.ACTION_PREPARE_FROM_URI : j;
                                                            if (valid) {
                                                                view = activityChargeNotificationBinding.editTextInn;
                                                                i2 = C0859R.drawable.underline_gray_dc;
                                                            } else {
                                                                view = activityChargeNotificationBinding.editTextInn;
                                                                i2 = C0859R.drawable.underline_orange;
                                                            }
                                                            drawableFromResource = getDrawableFromResource(view, i2);
                                                            j = j3;
                                                        } else {
                                                            drawableFromResource = null;
                                                        }
                                                        value3 = ((j & 67596) != 0 || inn == null) ? null : inn.getValue();
                                                        if ((j & 65554) != 0) {
                                                            activityChargeNotificationBinding.editTextCtc.addTextChangedListener(watcher2);
                                                        }
                                                        if ((j & 69666) != 0) {
                                                            ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextCtc, drawableFromResource2);
                                                        }
                                                        if ((j & 73762) != 0) {
                                                            TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextCtc, value2);
                                                        }
                                                        if ((j & 66050) != 0) {
                                                            activityChargeNotificationBinding.editTextCtc.setVisibility(i);
                                                            activityChargeNotificationBinding.editTextDriverLicence.setVisibility(i);
                                                            activityChargeNotificationBinding.mboundView2.setVisibility(i);
                                                            activityChargeNotificationBinding.mboundView4.setVisibility(i);
                                                        }
                                                        if ((j & 65602) != 0) {
                                                            activityChargeNotificationBinding.editTextDriverLicence.addTextChangedListener(watcher3);
                                                        }
                                                        if ((j & 82050) != 0) {
                                                            ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextDriverLicence, drawableFromResource3);
                                                        }
                                                        if ((j & 98434) != 0) {
                                                            TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextDriverLicence, value);
                                                        }
                                                        if ((j & 65541) != 0) {
                                                            activityChargeNotificationBinding.editTextInn.addTextChangedListener(watcher);
                                                        }
                                                        if ((j & 66572) != 0) {
                                                            ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextInn, drawableFromResource);
                                                        }
                                                        if ((j & 67596) == 0) {
                                                            TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextInn, value3);
                                                        }
                                                    }
                                                    value3 = null;
                                                }
                                            }
                                            watcher = null;
                                            if ((j & 68620) == 0) {
                                                value3 = null;
                                            } else {
                                                if (taxChargeViewModel == null) {
                                                }
                                                updateRegistration(3, inn);
                                                j2 = j & 66572;
                                                if (j2 == 0) {
                                                    drawableFromResource = null;
                                                } else {
                                                    if (inn == null) {
                                                        valid = false;
                                                    } else {
                                                        valid = inn.getValid();
                                                    }
                                                    if (j2 == 0) {
                                                    }
                                                    if (valid) {
                                                        view = activityChargeNotificationBinding.editTextInn;
                                                        i2 = C0859R.drawable.underline_gray_dc;
                                                    } else {
                                                        view = activityChargeNotificationBinding.editTextInn;
                                                        i2 = C0859R.drawable.underline_orange;
                                                    }
                                                    drawableFromResource = getDrawableFromResource(view, i2);
                                                    j = j3;
                                                }
                                                if ((j & 67596) != 0) {
                                                }
                                                if ((j & 65554) != 0) {
                                                    activityChargeNotificationBinding.editTextCtc.addTextChangedListener(watcher2);
                                                }
                                                if ((j & 69666) != 0) {
                                                    ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextCtc, drawableFromResource2);
                                                }
                                                if ((j & 73762) != 0) {
                                                    TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextCtc, value2);
                                                }
                                                if ((j & 66050) != 0) {
                                                    activityChargeNotificationBinding.editTextCtc.setVisibility(i);
                                                    activityChargeNotificationBinding.editTextDriverLicence.setVisibility(i);
                                                    activityChargeNotificationBinding.mboundView2.setVisibility(i);
                                                    activityChargeNotificationBinding.mboundView4.setVisibility(i);
                                                }
                                                if ((j & 65602) != 0) {
                                                    activityChargeNotificationBinding.editTextDriverLicence.addTextChangedListener(watcher3);
                                                }
                                                if ((j & 82050) != 0) {
                                                    ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextDriverLicence, drawableFromResource3);
                                                }
                                                if ((j & 98434) != 0) {
                                                    TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextDriverLicence, value);
                                                }
                                                if ((j & 65541) != 0) {
                                                    activityChargeNotificationBinding.editTextInn.addTextChangedListener(watcher);
                                                }
                                                if ((j & 66572) != 0) {
                                                    ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextInn, drawableFromResource);
                                                }
                                                if ((j & 67596) == 0) {
                                                    TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextInn, value3);
                                                }
                                            }
                                        }
                                        value3 = null;
                                        watcher = null;
                                        drawableFromResource = null;
                                        if ((j & 65554) != 0) {
                                            activityChargeNotificationBinding.editTextCtc.addTextChangedListener(watcher2);
                                        }
                                        if ((j & 69666) != 0) {
                                            ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextCtc, drawableFromResource2);
                                        }
                                        if ((j & 73762) != 0) {
                                            TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextCtc, value2);
                                        }
                                        if ((j & 66050) != 0) {
                                            activityChargeNotificationBinding.editTextCtc.setVisibility(i);
                                            activityChargeNotificationBinding.editTextDriverLicence.setVisibility(i);
                                            activityChargeNotificationBinding.mboundView2.setVisibility(i);
                                            activityChargeNotificationBinding.mboundView4.setVisibility(i);
                                        }
                                        if ((j & 65602) != 0) {
                                            activityChargeNotificationBinding.editTextDriverLicence.addTextChangedListener(watcher3);
                                        }
                                        if ((j & 82050) != 0) {
                                            ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextDriverLicence, drawableFromResource3);
                                        }
                                        if ((j & 98434) != 0) {
                                            TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextDriverLicence, value);
                                        }
                                        if ((j & 65541) != 0) {
                                            activityChargeNotificationBinding.editTextInn.addTextChangedListener(watcher);
                                        }
                                        if ((j & 66572) != 0) {
                                            ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextInn, drawableFromResource);
                                        }
                                        if ((j & 67596) == 0) {
                                            TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextInn, value3);
                                        }
                                    }
                                    drawableFromResource3 = null;
                                }
                            }
                            watcher3 = null;
                            if ((j & 114818) == 0) {
                                drawableFromResource3 = null;
                            } else {
                                if (penaltyChargeViewModel == null) {
                                }
                                updateRegistration(7, driver_licence);
                                if ((j & 98434) != 0) {
                                }
                                j5 = j & 82050;
                                if (j5 == 0) {
                                    drawableFromResource3 = null;
                                } else {
                                    if (driver_licence == null) {
                                        valid3 = false;
                                    } else {
                                        valid3 = driver_licence.getValid();
                                    }
                                    if (j5 != 0) {
                                        if (valid3) {
                                        }
                                        j = valid3 ? j | 4194304 : j | PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE;
                                    }
                                    if (valid3) {
                                    }
                                }
                                if ((j & 68621) != 0) {
                                    value3 = null;
                                    watcher = null;
                                } else {
                                    if ((j & 65541) != 0) {
                                        if (taxChargeViewModel != null) {
                                        }
                                        updateRegistration(0, field);
                                        if (field != null) {
                                            watcher = field.getWatcher();
                                            if ((j & 68620) == 0) {
                                                if (taxChargeViewModel == null) {
                                                }
                                                updateRegistration(3, inn);
                                                j2 = j & 66572;
                                                if (j2 == 0) {
                                                    if (inn == null) {
                                                        valid = inn.getValid();
                                                    } else {
                                                        valid = false;
                                                    }
                                                    if (j2 == 0) {
                                                        if (valid) {
                                                        }
                                                    }
                                                    if (valid) {
                                                        view = activityChargeNotificationBinding.editTextInn;
                                                        i2 = C0859R.drawable.underline_orange;
                                                    } else {
                                                        view = activityChargeNotificationBinding.editTextInn;
                                                        i2 = C0859R.drawable.underline_gray_dc;
                                                    }
                                                    drawableFromResource = getDrawableFromResource(view, i2);
                                                    j = j3;
                                                } else {
                                                    drawableFromResource = null;
                                                }
                                                if ((j & 67596) != 0) {
                                                }
                                                if ((j & 65554) != 0) {
                                                    activityChargeNotificationBinding.editTextCtc.addTextChangedListener(watcher2);
                                                }
                                                if ((j & 69666) != 0) {
                                                    ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextCtc, drawableFromResource2);
                                                }
                                                if ((j & 73762) != 0) {
                                                    TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextCtc, value2);
                                                }
                                                if ((j & 66050) != 0) {
                                                    activityChargeNotificationBinding.editTextCtc.setVisibility(i);
                                                    activityChargeNotificationBinding.editTextDriverLicence.setVisibility(i);
                                                    activityChargeNotificationBinding.mboundView2.setVisibility(i);
                                                    activityChargeNotificationBinding.mboundView4.setVisibility(i);
                                                }
                                                if ((j & 65602) != 0) {
                                                    activityChargeNotificationBinding.editTextDriverLicence.addTextChangedListener(watcher3);
                                                }
                                                if ((j & 82050) != 0) {
                                                    ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextDriverLicence, drawableFromResource3);
                                                }
                                                if ((j & 98434) != 0) {
                                                    TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextDriverLicence, value);
                                                }
                                                if ((j & 65541) != 0) {
                                                    activityChargeNotificationBinding.editTextInn.addTextChangedListener(watcher);
                                                }
                                                if ((j & 66572) != 0) {
                                                    ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextInn, drawableFromResource);
                                                }
                                                if ((j & 67596) == 0) {
                                                    TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextInn, value3);
                                                }
                                            }
                                            value3 = null;
                                        }
                                    }
                                    watcher = null;
                                    if ((j & 68620) == 0) {
                                        value3 = null;
                                    } else {
                                        if (taxChargeViewModel == null) {
                                        }
                                        updateRegistration(3, inn);
                                        j2 = j & 66572;
                                        if (j2 == 0) {
                                            drawableFromResource = null;
                                        } else {
                                            if (inn == null) {
                                                valid = false;
                                            } else {
                                                valid = inn.getValid();
                                            }
                                            if (j2 == 0) {
                                            }
                                            if (valid) {
                                                view = activityChargeNotificationBinding.editTextInn;
                                                i2 = C0859R.drawable.underline_gray_dc;
                                            } else {
                                                view = activityChargeNotificationBinding.editTextInn;
                                                i2 = C0859R.drawable.underline_orange;
                                            }
                                            drawableFromResource = getDrawableFromResource(view, i2);
                                            j = j3;
                                        }
                                        if ((j & 67596) != 0) {
                                        }
                                        if ((j & 65554) != 0) {
                                            activityChargeNotificationBinding.editTextCtc.addTextChangedListener(watcher2);
                                        }
                                        if ((j & 69666) != 0) {
                                            ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextCtc, drawableFromResource2);
                                        }
                                        if ((j & 73762) != 0) {
                                            TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextCtc, value2);
                                        }
                                        if ((j & 66050) != 0) {
                                            activityChargeNotificationBinding.editTextCtc.setVisibility(i);
                                            activityChargeNotificationBinding.editTextDriverLicence.setVisibility(i);
                                            activityChargeNotificationBinding.mboundView2.setVisibility(i);
                                            activityChargeNotificationBinding.mboundView4.setVisibility(i);
                                        }
                                        if ((j & 65602) != 0) {
                                            activityChargeNotificationBinding.editTextDriverLicence.addTextChangedListener(watcher3);
                                        }
                                        if ((j & 82050) != 0) {
                                            ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextDriverLicence, drawableFromResource3);
                                        }
                                        if ((j & 98434) != 0) {
                                            TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextDriverLicence, value);
                                        }
                                        if ((j & 65541) != 0) {
                                            activityChargeNotificationBinding.editTextInn.addTextChangedListener(watcher);
                                        }
                                        if ((j & 66572) != 0) {
                                            ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextInn, drawableFromResource);
                                        }
                                        if ((j & 67596) == 0) {
                                            TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextInn, value3);
                                        }
                                    }
                                }
                                drawableFromResource = null;
                                if ((j & 65554) != 0) {
                                    activityChargeNotificationBinding.editTextCtc.addTextChangedListener(watcher2);
                                }
                                if ((j & 69666) != 0) {
                                    ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextCtc, drawableFromResource2);
                                }
                                if ((j & 73762) != 0) {
                                    TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextCtc, value2);
                                }
                                if ((j & 66050) != 0) {
                                    activityChargeNotificationBinding.editTextCtc.setVisibility(i);
                                    activityChargeNotificationBinding.editTextDriverLicence.setVisibility(i);
                                    activityChargeNotificationBinding.mboundView2.setVisibility(i);
                                    activityChargeNotificationBinding.mboundView4.setVisibility(i);
                                }
                                if ((j & 65602) != 0) {
                                    activityChargeNotificationBinding.editTextDriverLicence.addTextChangedListener(watcher3);
                                }
                                if ((j & 82050) != 0) {
                                    ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextDriverLicence, drawableFromResource3);
                                }
                                if ((j & 98434) != 0) {
                                    TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextDriverLicence, value);
                                }
                                if ((j & 65541) != 0) {
                                    activityChargeNotificationBinding.editTextInn.addTextChangedListener(watcher);
                                }
                                if ((j & 66572) != 0) {
                                    ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextInn, drawableFromResource);
                                }
                                if ((j & 67596) == 0) {
                                    TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextInn, value3);
                                }
                            }
                        }
                    }
                    watcher2 = null;
                    if ((j & 77858) == 0) {
                        value2 = null;
                        drawableFromResource2 = null;
                    } else {
                        if (penaltyChargeViewModel == null) {
                        }
                        updateRegistration(5, ctc);
                        j4 = j & 69666;
                        if (j4 == 0) {
                            drawableFromResource2 = null;
                        } else {
                            if (ctc == null) {
                                valid2 = false;
                            } else {
                                valid2 = ctc.getValid();
                            }
                            if (j4 != 0) {
                                if (valid2) {
                                }
                                j = valid2 ? j | PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED : j | PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED;
                            }
                            if (valid2) {
                            }
                        }
                        if ((j & 73762) != 0) {
                        }
                    }
                    if ((j & 65602) != 0) {
                        if (penaltyChargeViewModel == null) {
                        }
                        updateRegistration(6, field3);
                        if (field3 != null) {
                            watcher3 = field3.getWatcher();
                            if ((j & 114818) == 0) {
                                if (penaltyChargeViewModel == null) {
                                }
                                updateRegistration(7, driver_licence);
                                if ((j & 98434) != 0) {
                                }
                                j5 = j & 82050;
                                if (j5 == 0) {
                                    if (driver_licence == null) {
                                        valid3 = driver_licence.getValid();
                                    } else {
                                        valid3 = false;
                                    }
                                    if (j5 != 0) {
                                        if (valid3) {
                                        }
                                        j = valid3 ? j | 4194304 : j | PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE;
                                    }
                                    if (valid3) {
                                    }
                                } else {
                                    drawableFromResource3 = null;
                                }
                                if ((j & 68621) != 0) {
                                    if ((j & 65541) != 0) {
                                        if (taxChargeViewModel != null) {
                                        }
                                        updateRegistration(0, field);
                                        if (field != null) {
                                            watcher = field.getWatcher();
                                            if ((j & 68620) == 0) {
                                                if (taxChargeViewModel == null) {
                                                }
                                                updateRegistration(3, inn);
                                                j2 = j & 66572;
                                                if (j2 == 0) {
                                                    if (inn == null) {
                                                        valid = inn.getValid();
                                                    } else {
                                                        valid = false;
                                                    }
                                                    if (j2 == 0) {
                                                        if (valid) {
                                                        }
                                                    }
                                                    if (valid) {
                                                        view = activityChargeNotificationBinding.editTextInn;
                                                        i2 = C0859R.drawable.underline_orange;
                                                    } else {
                                                        view = activityChargeNotificationBinding.editTextInn;
                                                        i2 = C0859R.drawable.underline_gray_dc;
                                                    }
                                                    drawableFromResource = getDrawableFromResource(view, i2);
                                                    j = j3;
                                                } else {
                                                    drawableFromResource = null;
                                                }
                                                if ((j & 67596) != 0) {
                                                }
                                                if ((j & 65554) != 0) {
                                                    activityChargeNotificationBinding.editTextCtc.addTextChangedListener(watcher2);
                                                }
                                                if ((j & 69666) != 0) {
                                                    ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextCtc, drawableFromResource2);
                                                }
                                                if ((j & 73762) != 0) {
                                                    TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextCtc, value2);
                                                }
                                                if ((j & 66050) != 0) {
                                                    activityChargeNotificationBinding.editTextCtc.setVisibility(i);
                                                    activityChargeNotificationBinding.editTextDriverLicence.setVisibility(i);
                                                    activityChargeNotificationBinding.mboundView2.setVisibility(i);
                                                    activityChargeNotificationBinding.mboundView4.setVisibility(i);
                                                }
                                                if ((j & 65602) != 0) {
                                                    activityChargeNotificationBinding.editTextDriverLicence.addTextChangedListener(watcher3);
                                                }
                                                if ((j & 82050) != 0) {
                                                    ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextDriverLicence, drawableFromResource3);
                                                }
                                                if ((j & 98434) != 0) {
                                                    TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextDriverLicence, value);
                                                }
                                                if ((j & 65541) != 0) {
                                                    activityChargeNotificationBinding.editTextInn.addTextChangedListener(watcher);
                                                }
                                                if ((j & 66572) != 0) {
                                                    ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextInn, drawableFromResource);
                                                }
                                                if ((j & 67596) == 0) {
                                                    TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextInn, value3);
                                                }
                                            }
                                            value3 = null;
                                        }
                                    }
                                    watcher = null;
                                    if ((j & 68620) == 0) {
                                        value3 = null;
                                    } else {
                                        if (taxChargeViewModel == null) {
                                        }
                                        updateRegistration(3, inn);
                                        j2 = j & 66572;
                                        if (j2 == 0) {
                                            drawableFromResource = null;
                                        } else {
                                            if (inn == null) {
                                                valid = false;
                                            } else {
                                                valid = inn.getValid();
                                            }
                                            if (j2 == 0) {
                                            }
                                            if (valid) {
                                                view = activityChargeNotificationBinding.editTextInn;
                                                i2 = C0859R.drawable.underline_gray_dc;
                                            } else {
                                                view = activityChargeNotificationBinding.editTextInn;
                                                i2 = C0859R.drawable.underline_orange;
                                            }
                                            drawableFromResource = getDrawableFromResource(view, i2);
                                            j = j3;
                                        }
                                        if ((j & 67596) != 0) {
                                        }
                                        if ((j & 65554) != 0) {
                                            activityChargeNotificationBinding.editTextCtc.addTextChangedListener(watcher2);
                                        }
                                        if ((j & 69666) != 0) {
                                            ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextCtc, drawableFromResource2);
                                        }
                                        if ((j & 73762) != 0) {
                                            TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextCtc, value2);
                                        }
                                        if ((j & 66050) != 0) {
                                            activityChargeNotificationBinding.editTextCtc.setVisibility(i);
                                            activityChargeNotificationBinding.editTextDriverLicence.setVisibility(i);
                                            activityChargeNotificationBinding.mboundView2.setVisibility(i);
                                            activityChargeNotificationBinding.mboundView4.setVisibility(i);
                                        }
                                        if ((j & 65602) != 0) {
                                            activityChargeNotificationBinding.editTextDriverLicence.addTextChangedListener(watcher3);
                                        }
                                        if ((j & 82050) != 0) {
                                            ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextDriverLicence, drawableFromResource3);
                                        }
                                        if ((j & 98434) != 0) {
                                            TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextDriverLicence, value);
                                        }
                                        if ((j & 65541) != 0) {
                                            activityChargeNotificationBinding.editTextInn.addTextChangedListener(watcher);
                                        }
                                        if ((j & 66572) != 0) {
                                            ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextInn, drawableFromResource);
                                        }
                                        if ((j & 67596) == 0) {
                                            TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextInn, value3);
                                        }
                                    }
                                }
                                value3 = null;
                                watcher = null;
                                drawableFromResource = null;
                                if ((j & 65554) != 0) {
                                    activityChargeNotificationBinding.editTextCtc.addTextChangedListener(watcher2);
                                }
                                if ((j & 69666) != 0) {
                                    ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextCtc, drawableFromResource2);
                                }
                                if ((j & 73762) != 0) {
                                    TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextCtc, value2);
                                }
                                if ((j & 66050) != 0) {
                                    activityChargeNotificationBinding.editTextCtc.setVisibility(i);
                                    activityChargeNotificationBinding.editTextDriverLicence.setVisibility(i);
                                    activityChargeNotificationBinding.mboundView2.setVisibility(i);
                                    activityChargeNotificationBinding.mboundView4.setVisibility(i);
                                }
                                if ((j & 65602) != 0) {
                                    activityChargeNotificationBinding.editTextDriverLicence.addTextChangedListener(watcher3);
                                }
                                if ((j & 82050) != 0) {
                                    ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextDriverLicence, drawableFromResource3);
                                }
                                if ((j & 98434) != 0) {
                                    TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextDriverLicence, value);
                                }
                                if ((j & 65541) != 0) {
                                    activityChargeNotificationBinding.editTextInn.addTextChangedListener(watcher);
                                }
                                if ((j & 66572) != 0) {
                                    ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextInn, drawableFromResource);
                                }
                                if ((j & 67596) == 0) {
                                    TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextInn, value3);
                                }
                            }
                            drawableFromResource3 = null;
                        }
                    }
                    watcher3 = null;
                    if ((j & 114818) == 0) {
                        drawableFromResource3 = null;
                    } else {
                        if (penaltyChargeViewModel == null) {
                        }
                        updateRegistration(7, driver_licence);
                        if ((j & 98434) != 0) {
                        }
                        j5 = j & 82050;
                        if (j5 == 0) {
                            drawableFromResource3 = null;
                        } else {
                            if (driver_licence == null) {
                                valid3 = false;
                            } else {
                                valid3 = driver_licence.getValid();
                            }
                            if (j5 != 0) {
                                if (valid3) {
                                }
                                j = valid3 ? j | 4194304 : j | PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE;
                            }
                            if (valid3) {
                            }
                        }
                        if ((j & 68621) != 0) {
                            value3 = null;
                            watcher = null;
                        } else {
                            if ((j & 65541) != 0) {
                                if (taxChargeViewModel != null) {
                                }
                                updateRegistration(0, field);
                                if (field != null) {
                                    watcher = field.getWatcher();
                                    if ((j & 68620) == 0) {
                                        if (taxChargeViewModel == null) {
                                        }
                                        updateRegistration(3, inn);
                                        j2 = j & 66572;
                                        if (j2 == 0) {
                                            if (inn == null) {
                                                valid = inn.getValid();
                                            } else {
                                                valid = false;
                                            }
                                            if (j2 == 0) {
                                                if (valid) {
                                                }
                                            }
                                            if (valid) {
                                                view = activityChargeNotificationBinding.editTextInn;
                                                i2 = C0859R.drawable.underline_orange;
                                            } else {
                                                view = activityChargeNotificationBinding.editTextInn;
                                                i2 = C0859R.drawable.underline_gray_dc;
                                            }
                                            drawableFromResource = getDrawableFromResource(view, i2);
                                            j = j3;
                                        } else {
                                            drawableFromResource = null;
                                        }
                                        if ((j & 67596) != 0) {
                                        }
                                        if ((j & 65554) != 0) {
                                            activityChargeNotificationBinding.editTextCtc.addTextChangedListener(watcher2);
                                        }
                                        if ((j & 69666) != 0) {
                                            ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextCtc, drawableFromResource2);
                                        }
                                        if ((j & 73762) != 0) {
                                            TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextCtc, value2);
                                        }
                                        if ((j & 66050) != 0) {
                                            activityChargeNotificationBinding.editTextCtc.setVisibility(i);
                                            activityChargeNotificationBinding.editTextDriverLicence.setVisibility(i);
                                            activityChargeNotificationBinding.mboundView2.setVisibility(i);
                                            activityChargeNotificationBinding.mboundView4.setVisibility(i);
                                        }
                                        if ((j & 65602) != 0) {
                                            activityChargeNotificationBinding.editTextDriverLicence.addTextChangedListener(watcher3);
                                        }
                                        if ((j & 82050) != 0) {
                                            ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextDriverLicence, drawableFromResource3);
                                        }
                                        if ((j & 98434) != 0) {
                                            TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextDriverLicence, value);
                                        }
                                        if ((j & 65541) != 0) {
                                            activityChargeNotificationBinding.editTextInn.addTextChangedListener(watcher);
                                        }
                                        if ((j & 66572) != 0) {
                                            ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextInn, drawableFromResource);
                                        }
                                        if ((j & 67596) == 0) {
                                            TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextInn, value3);
                                        }
                                    }
                                    value3 = null;
                                }
                            }
                            watcher = null;
                            if ((j & 68620) == 0) {
                                value3 = null;
                            } else {
                                if (taxChargeViewModel == null) {
                                }
                                updateRegistration(3, inn);
                                j2 = j & 66572;
                                if (j2 == 0) {
                                    drawableFromResource = null;
                                } else {
                                    if (inn == null) {
                                        valid = false;
                                    } else {
                                        valid = inn.getValid();
                                    }
                                    if (j2 == 0) {
                                    }
                                    if (valid) {
                                        view = activityChargeNotificationBinding.editTextInn;
                                        i2 = C0859R.drawable.underline_gray_dc;
                                    } else {
                                        view = activityChargeNotificationBinding.editTextInn;
                                        i2 = C0859R.drawable.underline_orange;
                                    }
                                    drawableFromResource = getDrawableFromResource(view, i2);
                                    j = j3;
                                }
                                if ((j & 67596) != 0) {
                                }
                                if ((j & 65554) != 0) {
                                    activityChargeNotificationBinding.editTextCtc.addTextChangedListener(watcher2);
                                }
                                if ((j & 69666) != 0) {
                                    ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextCtc, drawableFromResource2);
                                }
                                if ((j & 73762) != 0) {
                                    TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextCtc, value2);
                                }
                                if ((j & 66050) != 0) {
                                    activityChargeNotificationBinding.editTextCtc.setVisibility(i);
                                    activityChargeNotificationBinding.editTextDriverLicence.setVisibility(i);
                                    activityChargeNotificationBinding.mboundView2.setVisibility(i);
                                    activityChargeNotificationBinding.mboundView4.setVisibility(i);
                                }
                                if ((j & 65602) != 0) {
                                    activityChargeNotificationBinding.editTextDriverLicence.addTextChangedListener(watcher3);
                                }
                                if ((j & 82050) != 0) {
                                    ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextDriverLicence, drawableFromResource3);
                                }
                                if ((j & 98434) != 0) {
                                    TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextDriverLicence, value);
                                }
                                if ((j & 65541) != 0) {
                                    activityChargeNotificationBinding.editTextInn.addTextChangedListener(watcher);
                                }
                                if ((j & 66572) != 0) {
                                    ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextInn, drawableFromResource);
                                }
                                if ((j & 67596) == 0) {
                                    TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextInn, value3);
                                }
                            }
                        }
                        drawableFromResource = null;
                        if ((j & 65554) != 0) {
                            activityChargeNotificationBinding.editTextCtc.addTextChangedListener(watcher2);
                        }
                        if ((j & 69666) != 0) {
                            ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextCtc, drawableFromResource2);
                        }
                        if ((j & 73762) != 0) {
                            TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextCtc, value2);
                        }
                        if ((j & 66050) != 0) {
                            activityChargeNotificationBinding.editTextCtc.setVisibility(i);
                            activityChargeNotificationBinding.editTextDriverLicence.setVisibility(i);
                            activityChargeNotificationBinding.mboundView2.setVisibility(i);
                            activityChargeNotificationBinding.mboundView4.setVisibility(i);
                        }
                        if ((j & 65602) != 0) {
                            activityChargeNotificationBinding.editTextDriverLicence.addTextChangedListener(watcher3);
                        }
                        if ((j & 82050) != 0) {
                            ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextDriverLicence, drawableFromResource3);
                        }
                        if ((j & 98434) != 0) {
                            TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextDriverLicence, value);
                        }
                        if ((j & 65541) != 0) {
                            activityChargeNotificationBinding.editTextInn.addTextChangedListener(watcher);
                        }
                        if ((j & 66572) != 0) {
                            ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextInn, drawableFromResource);
                        }
                        if ((j & 67596) == 0) {
                            TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextInn, value3);
                        }
                    }
                }
            }
            i = 0;
            if ((j & 65554) != 0) {
                if (penaltyChargeViewModel == null) {
                }
                updateRegistration(4, field2);
                if (field2 != null) {
                    watcher2 = field2.getWatcher();
                    if ((j & 77858) == 0) {
                        if (penaltyChargeViewModel == null) {
                        }
                        updateRegistration(5, ctc);
                        j4 = j & 69666;
                        if (j4 == 0) {
                            if (ctc == null) {
                                valid2 = ctc.getValid();
                            } else {
                                valid2 = false;
                            }
                            if (j4 != 0) {
                                if (valid2) {
                                }
                                j = valid2 ? j | PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED : j | PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED;
                            }
                            if (valid2) {
                            }
                        } else {
                            drawableFromResource2 = null;
                        }
                        if ((j & 73762) != 0) {
                        }
                    } else {
                        value2 = null;
                        drawableFromResource2 = null;
                    }
                    if ((j & 65602) != 0) {
                        if (penaltyChargeViewModel == null) {
                        }
                        updateRegistration(6, field3);
                        if (field3 != null) {
                            watcher3 = field3.getWatcher();
                            if ((j & 114818) == 0) {
                                if (penaltyChargeViewModel == null) {
                                }
                                updateRegistration(7, driver_licence);
                                if ((j & 98434) != 0) {
                                }
                                j5 = j & 82050;
                                if (j5 == 0) {
                                    if (driver_licence == null) {
                                        valid3 = driver_licence.getValid();
                                    } else {
                                        valid3 = false;
                                    }
                                    if (j5 != 0) {
                                        if (valid3) {
                                        }
                                        j = valid3 ? j | 4194304 : j | PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE;
                                    }
                                    if (valid3) {
                                    }
                                } else {
                                    drawableFromResource3 = null;
                                }
                                if ((j & 68621) != 0) {
                                    if ((j & 65541) != 0) {
                                        if (taxChargeViewModel != null) {
                                        }
                                        updateRegistration(0, field);
                                        if (field != null) {
                                            watcher = field.getWatcher();
                                            if ((j & 68620) == 0) {
                                                if (taxChargeViewModel == null) {
                                                }
                                                updateRegistration(3, inn);
                                                j2 = j & 66572;
                                                if (j2 == 0) {
                                                    if (inn == null) {
                                                        valid = inn.getValid();
                                                    } else {
                                                        valid = false;
                                                    }
                                                    if (j2 == 0) {
                                                        if (valid) {
                                                        }
                                                    }
                                                    if (valid) {
                                                        view = activityChargeNotificationBinding.editTextInn;
                                                        i2 = C0859R.drawable.underline_orange;
                                                    } else {
                                                        view = activityChargeNotificationBinding.editTextInn;
                                                        i2 = C0859R.drawable.underline_gray_dc;
                                                    }
                                                    drawableFromResource = getDrawableFromResource(view, i2);
                                                    j = j3;
                                                } else {
                                                    drawableFromResource = null;
                                                }
                                                if ((j & 67596) != 0) {
                                                }
                                                if ((j & 65554) != 0) {
                                                    activityChargeNotificationBinding.editTextCtc.addTextChangedListener(watcher2);
                                                }
                                                if ((j & 69666) != 0) {
                                                    ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextCtc, drawableFromResource2);
                                                }
                                                if ((j & 73762) != 0) {
                                                    TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextCtc, value2);
                                                }
                                                if ((j & 66050) != 0) {
                                                    activityChargeNotificationBinding.editTextCtc.setVisibility(i);
                                                    activityChargeNotificationBinding.editTextDriverLicence.setVisibility(i);
                                                    activityChargeNotificationBinding.mboundView2.setVisibility(i);
                                                    activityChargeNotificationBinding.mboundView4.setVisibility(i);
                                                }
                                                if ((j & 65602) != 0) {
                                                    activityChargeNotificationBinding.editTextDriverLicence.addTextChangedListener(watcher3);
                                                }
                                                if ((j & 82050) != 0) {
                                                    ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextDriverLicence, drawableFromResource3);
                                                }
                                                if ((j & 98434) != 0) {
                                                    TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextDriverLicence, value);
                                                }
                                                if ((j & 65541) != 0) {
                                                    activityChargeNotificationBinding.editTextInn.addTextChangedListener(watcher);
                                                }
                                                if ((j & 66572) != 0) {
                                                    ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextInn, drawableFromResource);
                                                }
                                                if ((j & 67596) == 0) {
                                                    TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextInn, value3);
                                                }
                                            }
                                            value3 = null;
                                        }
                                    }
                                    watcher = null;
                                    if ((j & 68620) == 0) {
                                        value3 = null;
                                    } else {
                                        if (taxChargeViewModel == null) {
                                        }
                                        updateRegistration(3, inn);
                                        j2 = j & 66572;
                                        if (j2 == 0) {
                                            drawableFromResource = null;
                                        } else {
                                            if (inn == null) {
                                                valid = false;
                                            } else {
                                                valid = inn.getValid();
                                            }
                                            if (j2 == 0) {
                                            }
                                            if (valid) {
                                                view = activityChargeNotificationBinding.editTextInn;
                                                i2 = C0859R.drawable.underline_gray_dc;
                                            } else {
                                                view = activityChargeNotificationBinding.editTextInn;
                                                i2 = C0859R.drawable.underline_orange;
                                            }
                                            drawableFromResource = getDrawableFromResource(view, i2);
                                            j = j3;
                                        }
                                        if ((j & 67596) != 0) {
                                        }
                                        if ((j & 65554) != 0) {
                                            activityChargeNotificationBinding.editTextCtc.addTextChangedListener(watcher2);
                                        }
                                        if ((j & 69666) != 0) {
                                            ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextCtc, drawableFromResource2);
                                        }
                                        if ((j & 73762) != 0) {
                                            TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextCtc, value2);
                                        }
                                        if ((j & 66050) != 0) {
                                            activityChargeNotificationBinding.editTextCtc.setVisibility(i);
                                            activityChargeNotificationBinding.editTextDriverLicence.setVisibility(i);
                                            activityChargeNotificationBinding.mboundView2.setVisibility(i);
                                            activityChargeNotificationBinding.mboundView4.setVisibility(i);
                                        }
                                        if ((j & 65602) != 0) {
                                            activityChargeNotificationBinding.editTextDriverLicence.addTextChangedListener(watcher3);
                                        }
                                        if ((j & 82050) != 0) {
                                            ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextDriverLicence, drawableFromResource3);
                                        }
                                        if ((j & 98434) != 0) {
                                            TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextDriverLicence, value);
                                        }
                                        if ((j & 65541) != 0) {
                                            activityChargeNotificationBinding.editTextInn.addTextChangedListener(watcher);
                                        }
                                        if ((j & 66572) != 0) {
                                            ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextInn, drawableFromResource);
                                        }
                                        if ((j & 67596) == 0) {
                                            TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextInn, value3);
                                        }
                                    }
                                }
                                value3 = null;
                                watcher = null;
                                drawableFromResource = null;
                                if ((j & 65554) != 0) {
                                    activityChargeNotificationBinding.editTextCtc.addTextChangedListener(watcher2);
                                }
                                if ((j & 69666) != 0) {
                                    ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextCtc, drawableFromResource2);
                                }
                                if ((j & 73762) != 0) {
                                    TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextCtc, value2);
                                }
                                if ((j & 66050) != 0) {
                                    activityChargeNotificationBinding.editTextCtc.setVisibility(i);
                                    activityChargeNotificationBinding.editTextDriverLicence.setVisibility(i);
                                    activityChargeNotificationBinding.mboundView2.setVisibility(i);
                                    activityChargeNotificationBinding.mboundView4.setVisibility(i);
                                }
                                if ((j & 65602) != 0) {
                                    activityChargeNotificationBinding.editTextDriverLicence.addTextChangedListener(watcher3);
                                }
                                if ((j & 82050) != 0) {
                                    ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextDriverLicence, drawableFromResource3);
                                }
                                if ((j & 98434) != 0) {
                                    TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextDriverLicence, value);
                                }
                                if ((j & 65541) != 0) {
                                    activityChargeNotificationBinding.editTextInn.addTextChangedListener(watcher);
                                }
                                if ((j & 66572) != 0) {
                                    ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextInn, drawableFromResource);
                                }
                                if ((j & 67596) == 0) {
                                    TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextInn, value3);
                                }
                            }
                            drawableFromResource3 = null;
                        }
                    }
                    watcher3 = null;
                    if ((j & 114818) == 0) {
                        drawableFromResource3 = null;
                    } else {
                        if (penaltyChargeViewModel == null) {
                        }
                        updateRegistration(7, driver_licence);
                        if ((j & 98434) != 0) {
                        }
                        j5 = j & 82050;
                        if (j5 == 0) {
                            drawableFromResource3 = null;
                        } else {
                            if (driver_licence == null) {
                                valid3 = false;
                            } else {
                                valid3 = driver_licence.getValid();
                            }
                            if (j5 != 0) {
                                if (valid3) {
                                }
                                j = valid3 ? j | 4194304 : j | PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE;
                            }
                            if (valid3) {
                            }
                        }
                        if ((j & 68621) != 0) {
                            value3 = null;
                            watcher = null;
                        } else {
                            if ((j & 65541) != 0) {
                                if (taxChargeViewModel != null) {
                                }
                                updateRegistration(0, field);
                                if (field != null) {
                                    watcher = field.getWatcher();
                                    if ((j & 68620) == 0) {
                                        if (taxChargeViewModel == null) {
                                        }
                                        updateRegistration(3, inn);
                                        j2 = j & 66572;
                                        if (j2 == 0) {
                                            if (inn == null) {
                                                valid = inn.getValid();
                                            } else {
                                                valid = false;
                                            }
                                            if (j2 == 0) {
                                                if (valid) {
                                                }
                                            }
                                            if (valid) {
                                                view = activityChargeNotificationBinding.editTextInn;
                                                i2 = C0859R.drawable.underline_orange;
                                            } else {
                                                view = activityChargeNotificationBinding.editTextInn;
                                                i2 = C0859R.drawable.underline_gray_dc;
                                            }
                                            drawableFromResource = getDrawableFromResource(view, i2);
                                            j = j3;
                                        } else {
                                            drawableFromResource = null;
                                        }
                                        if ((j & 67596) != 0) {
                                        }
                                        if ((j & 65554) != 0) {
                                            activityChargeNotificationBinding.editTextCtc.addTextChangedListener(watcher2);
                                        }
                                        if ((j & 69666) != 0) {
                                            ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextCtc, drawableFromResource2);
                                        }
                                        if ((j & 73762) != 0) {
                                            TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextCtc, value2);
                                        }
                                        if ((j & 66050) != 0) {
                                            activityChargeNotificationBinding.editTextCtc.setVisibility(i);
                                            activityChargeNotificationBinding.editTextDriverLicence.setVisibility(i);
                                            activityChargeNotificationBinding.mboundView2.setVisibility(i);
                                            activityChargeNotificationBinding.mboundView4.setVisibility(i);
                                        }
                                        if ((j & 65602) != 0) {
                                            activityChargeNotificationBinding.editTextDriverLicence.addTextChangedListener(watcher3);
                                        }
                                        if ((j & 82050) != 0) {
                                            ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextDriverLicence, drawableFromResource3);
                                        }
                                        if ((j & 98434) != 0) {
                                            TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextDriverLicence, value);
                                        }
                                        if ((j & 65541) != 0) {
                                            activityChargeNotificationBinding.editTextInn.addTextChangedListener(watcher);
                                        }
                                        if ((j & 66572) != 0) {
                                            ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextInn, drawableFromResource);
                                        }
                                        if ((j & 67596) == 0) {
                                            TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextInn, value3);
                                        }
                                    }
                                    value3 = null;
                                }
                            }
                            watcher = null;
                            if ((j & 68620) == 0) {
                                value3 = null;
                            } else {
                                if (taxChargeViewModel == null) {
                                }
                                updateRegistration(3, inn);
                                j2 = j & 66572;
                                if (j2 == 0) {
                                    drawableFromResource = null;
                                } else {
                                    if (inn == null) {
                                        valid = false;
                                    } else {
                                        valid = inn.getValid();
                                    }
                                    if (j2 == 0) {
                                    }
                                    if (valid) {
                                        view = activityChargeNotificationBinding.editTextInn;
                                        i2 = C0859R.drawable.underline_gray_dc;
                                    } else {
                                        view = activityChargeNotificationBinding.editTextInn;
                                        i2 = C0859R.drawable.underline_orange;
                                    }
                                    drawableFromResource = getDrawableFromResource(view, i2);
                                    j = j3;
                                }
                                if ((j & 67596) != 0) {
                                }
                                if ((j & 65554) != 0) {
                                    activityChargeNotificationBinding.editTextCtc.addTextChangedListener(watcher2);
                                }
                                if ((j & 69666) != 0) {
                                    ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextCtc, drawableFromResource2);
                                }
                                if ((j & 73762) != 0) {
                                    TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextCtc, value2);
                                }
                                if ((j & 66050) != 0) {
                                    activityChargeNotificationBinding.editTextCtc.setVisibility(i);
                                    activityChargeNotificationBinding.editTextDriverLicence.setVisibility(i);
                                    activityChargeNotificationBinding.mboundView2.setVisibility(i);
                                    activityChargeNotificationBinding.mboundView4.setVisibility(i);
                                }
                                if ((j & 65602) != 0) {
                                    activityChargeNotificationBinding.editTextDriverLicence.addTextChangedListener(watcher3);
                                }
                                if ((j & 82050) != 0) {
                                    ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextDriverLicence, drawableFromResource3);
                                }
                                if ((j & 98434) != 0) {
                                    TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextDriverLicence, value);
                                }
                                if ((j & 65541) != 0) {
                                    activityChargeNotificationBinding.editTextInn.addTextChangedListener(watcher);
                                }
                                if ((j & 66572) != 0) {
                                    ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextInn, drawableFromResource);
                                }
                                if ((j & 67596) == 0) {
                                    TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextInn, value3);
                                }
                            }
                        }
                        drawableFromResource = null;
                        if ((j & 65554) != 0) {
                            activityChargeNotificationBinding.editTextCtc.addTextChangedListener(watcher2);
                        }
                        if ((j & 69666) != 0) {
                            ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextCtc, drawableFromResource2);
                        }
                        if ((j & 73762) != 0) {
                            TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextCtc, value2);
                        }
                        if ((j & 66050) != 0) {
                            activityChargeNotificationBinding.editTextCtc.setVisibility(i);
                            activityChargeNotificationBinding.editTextDriverLicence.setVisibility(i);
                            activityChargeNotificationBinding.mboundView2.setVisibility(i);
                            activityChargeNotificationBinding.mboundView4.setVisibility(i);
                        }
                        if ((j & 65602) != 0) {
                            activityChargeNotificationBinding.editTextDriverLicence.addTextChangedListener(watcher3);
                        }
                        if ((j & 82050) != 0) {
                            ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextDriverLicence, drawableFromResource3);
                        }
                        if ((j & 98434) != 0) {
                            TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextDriverLicence, value);
                        }
                        if ((j & 65541) != 0) {
                            activityChargeNotificationBinding.editTextInn.addTextChangedListener(watcher);
                        }
                        if ((j & 66572) != 0) {
                            ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextInn, drawableFromResource);
                        }
                        if ((j & 67596) == 0) {
                            TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextInn, value3);
                        }
                    }
                }
            }
            watcher2 = null;
            if ((j & 77858) == 0) {
                value2 = null;
                drawableFromResource2 = null;
            } else {
                if (penaltyChargeViewModel == null) {
                }
                updateRegistration(5, ctc);
                j4 = j & 69666;
                if (j4 == 0) {
                    drawableFromResource2 = null;
                } else {
                    if (ctc == null) {
                        valid2 = false;
                    } else {
                        valid2 = ctc.getValid();
                    }
                    if (j4 != 0) {
                        if (valid2) {
                        }
                        j = valid2 ? j | PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED : j | PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED;
                    }
                    if (valid2) {
                    }
                }
                if ((j & 73762) != 0) {
                }
            }
            if ((j & 65602) != 0) {
                if (penaltyChargeViewModel == null) {
                }
                updateRegistration(6, field3);
                if (field3 != null) {
                    watcher3 = field3.getWatcher();
                    if ((j & 114818) == 0) {
                        if (penaltyChargeViewModel == null) {
                        }
                        updateRegistration(7, driver_licence);
                        if ((j & 98434) != 0) {
                        }
                        j5 = j & 82050;
                        if (j5 == 0) {
                            if (driver_licence == null) {
                                valid3 = driver_licence.getValid();
                            } else {
                                valid3 = false;
                            }
                            if (j5 != 0) {
                                if (valid3) {
                                }
                                j = valid3 ? j | 4194304 : j | PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE;
                            }
                            if (valid3) {
                            }
                        } else {
                            drawableFromResource3 = null;
                        }
                        if ((j & 68621) != 0) {
                            if ((j & 65541) != 0) {
                                if (taxChargeViewModel != null) {
                                }
                                updateRegistration(0, field);
                                if (field != null) {
                                    watcher = field.getWatcher();
                                    if ((j & 68620) == 0) {
                                        if (taxChargeViewModel == null) {
                                        }
                                        updateRegistration(3, inn);
                                        j2 = j & 66572;
                                        if (j2 == 0) {
                                            if (inn == null) {
                                                valid = inn.getValid();
                                            } else {
                                                valid = false;
                                            }
                                            if (j2 == 0) {
                                                if (valid) {
                                                }
                                            }
                                            if (valid) {
                                                view = activityChargeNotificationBinding.editTextInn;
                                                i2 = C0859R.drawable.underline_orange;
                                            } else {
                                                view = activityChargeNotificationBinding.editTextInn;
                                                i2 = C0859R.drawable.underline_gray_dc;
                                            }
                                            drawableFromResource = getDrawableFromResource(view, i2);
                                            j = j3;
                                        } else {
                                            drawableFromResource = null;
                                        }
                                        if ((j & 67596) != 0) {
                                        }
                                        if ((j & 65554) != 0) {
                                            activityChargeNotificationBinding.editTextCtc.addTextChangedListener(watcher2);
                                        }
                                        if ((j & 69666) != 0) {
                                            ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextCtc, drawableFromResource2);
                                        }
                                        if ((j & 73762) != 0) {
                                            TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextCtc, value2);
                                        }
                                        if ((j & 66050) != 0) {
                                            activityChargeNotificationBinding.editTextCtc.setVisibility(i);
                                            activityChargeNotificationBinding.editTextDriverLicence.setVisibility(i);
                                            activityChargeNotificationBinding.mboundView2.setVisibility(i);
                                            activityChargeNotificationBinding.mboundView4.setVisibility(i);
                                        }
                                        if ((j & 65602) != 0) {
                                            activityChargeNotificationBinding.editTextDriverLicence.addTextChangedListener(watcher3);
                                        }
                                        if ((j & 82050) != 0) {
                                            ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextDriverLicence, drawableFromResource3);
                                        }
                                        if ((j & 98434) != 0) {
                                            TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextDriverLicence, value);
                                        }
                                        if ((j & 65541) != 0) {
                                            activityChargeNotificationBinding.editTextInn.addTextChangedListener(watcher);
                                        }
                                        if ((j & 66572) != 0) {
                                            ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextInn, drawableFromResource);
                                        }
                                        if ((j & 67596) == 0) {
                                            TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextInn, value3);
                                        }
                                    }
                                    value3 = null;
                                }
                            }
                            watcher = null;
                            if ((j & 68620) == 0) {
                                value3 = null;
                            } else {
                                if (taxChargeViewModel == null) {
                                }
                                updateRegistration(3, inn);
                                j2 = j & 66572;
                                if (j2 == 0) {
                                    drawableFromResource = null;
                                } else {
                                    if (inn == null) {
                                        valid = false;
                                    } else {
                                        valid = inn.getValid();
                                    }
                                    if (j2 == 0) {
                                    }
                                    if (valid) {
                                        view = activityChargeNotificationBinding.editTextInn;
                                        i2 = C0859R.drawable.underline_gray_dc;
                                    } else {
                                        view = activityChargeNotificationBinding.editTextInn;
                                        i2 = C0859R.drawable.underline_orange;
                                    }
                                    drawableFromResource = getDrawableFromResource(view, i2);
                                    j = j3;
                                }
                                if ((j & 67596) != 0) {
                                }
                                if ((j & 65554) != 0) {
                                    activityChargeNotificationBinding.editTextCtc.addTextChangedListener(watcher2);
                                }
                                if ((j & 69666) != 0) {
                                    ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextCtc, drawableFromResource2);
                                }
                                if ((j & 73762) != 0) {
                                    TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextCtc, value2);
                                }
                                if ((j & 66050) != 0) {
                                    activityChargeNotificationBinding.editTextCtc.setVisibility(i);
                                    activityChargeNotificationBinding.editTextDriverLicence.setVisibility(i);
                                    activityChargeNotificationBinding.mboundView2.setVisibility(i);
                                    activityChargeNotificationBinding.mboundView4.setVisibility(i);
                                }
                                if ((j & 65602) != 0) {
                                    activityChargeNotificationBinding.editTextDriverLicence.addTextChangedListener(watcher3);
                                }
                                if ((j & 82050) != 0) {
                                    ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextDriverLicence, drawableFromResource3);
                                }
                                if ((j & 98434) != 0) {
                                    TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextDriverLicence, value);
                                }
                                if ((j & 65541) != 0) {
                                    activityChargeNotificationBinding.editTextInn.addTextChangedListener(watcher);
                                }
                                if ((j & 66572) != 0) {
                                    ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextInn, drawableFromResource);
                                }
                                if ((j & 67596) == 0) {
                                    TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextInn, value3);
                                }
                            }
                        }
                        value3 = null;
                        watcher = null;
                        drawableFromResource = null;
                        if ((j & 65554) != 0) {
                            activityChargeNotificationBinding.editTextCtc.addTextChangedListener(watcher2);
                        }
                        if ((j & 69666) != 0) {
                            ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextCtc, drawableFromResource2);
                        }
                        if ((j & 73762) != 0) {
                            TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextCtc, value2);
                        }
                        if ((j & 66050) != 0) {
                            activityChargeNotificationBinding.editTextCtc.setVisibility(i);
                            activityChargeNotificationBinding.editTextDriverLicence.setVisibility(i);
                            activityChargeNotificationBinding.mboundView2.setVisibility(i);
                            activityChargeNotificationBinding.mboundView4.setVisibility(i);
                        }
                        if ((j & 65602) != 0) {
                            activityChargeNotificationBinding.editTextDriverLicence.addTextChangedListener(watcher3);
                        }
                        if ((j & 82050) != 0) {
                            ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextDriverLicence, drawableFromResource3);
                        }
                        if ((j & 98434) != 0) {
                            TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextDriverLicence, value);
                        }
                        if ((j & 65541) != 0) {
                            activityChargeNotificationBinding.editTextInn.addTextChangedListener(watcher);
                        }
                        if ((j & 66572) != 0) {
                            ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextInn, drawableFromResource);
                        }
                        if ((j & 67596) == 0) {
                            TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextInn, value3);
                        }
                    }
                    drawableFromResource3 = null;
                }
            }
            watcher3 = null;
            if ((j & 114818) == 0) {
                drawableFromResource3 = null;
            } else {
                if (penaltyChargeViewModel == null) {
                }
                updateRegistration(7, driver_licence);
                if ((j & 98434) != 0) {
                }
                j5 = j & 82050;
                if (j5 == 0) {
                    drawableFromResource3 = null;
                } else {
                    if (driver_licence == null) {
                        valid3 = false;
                    } else {
                        valid3 = driver_licence.getValid();
                    }
                    if (j5 != 0) {
                        if (valid3) {
                        }
                        j = valid3 ? j | 4194304 : j | PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE;
                    }
                    if (valid3) {
                    }
                }
                if ((j & 68621) != 0) {
                    value3 = null;
                    watcher = null;
                } else {
                    if ((j & 65541) != 0) {
                        if (taxChargeViewModel != null) {
                        }
                        updateRegistration(0, field);
                        if (field != null) {
                            watcher = field.getWatcher();
                            if ((j & 68620) == 0) {
                                if (taxChargeViewModel == null) {
                                }
                                updateRegistration(3, inn);
                                j2 = j & 66572;
                                if (j2 == 0) {
                                    if (inn == null) {
                                        valid = inn.getValid();
                                    } else {
                                        valid = false;
                                    }
                                    if (j2 == 0) {
                                        if (valid) {
                                        }
                                    }
                                    if (valid) {
                                        view = activityChargeNotificationBinding.editTextInn;
                                        i2 = C0859R.drawable.underline_orange;
                                    } else {
                                        view = activityChargeNotificationBinding.editTextInn;
                                        i2 = C0859R.drawable.underline_gray_dc;
                                    }
                                    drawableFromResource = getDrawableFromResource(view, i2);
                                    j = j3;
                                } else {
                                    drawableFromResource = null;
                                }
                                if ((j & 67596) != 0) {
                                }
                                if ((j & 65554) != 0) {
                                    activityChargeNotificationBinding.editTextCtc.addTextChangedListener(watcher2);
                                }
                                if ((j & 69666) != 0) {
                                    ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextCtc, drawableFromResource2);
                                }
                                if ((j & 73762) != 0) {
                                    TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextCtc, value2);
                                }
                                if ((j & 66050) != 0) {
                                    activityChargeNotificationBinding.editTextCtc.setVisibility(i);
                                    activityChargeNotificationBinding.editTextDriverLicence.setVisibility(i);
                                    activityChargeNotificationBinding.mboundView2.setVisibility(i);
                                    activityChargeNotificationBinding.mboundView4.setVisibility(i);
                                }
                                if ((j & 65602) != 0) {
                                    activityChargeNotificationBinding.editTextDriverLicence.addTextChangedListener(watcher3);
                                }
                                if ((j & 82050) != 0) {
                                    ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextDriverLicence, drawableFromResource3);
                                }
                                if ((j & 98434) != 0) {
                                    TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextDriverLicence, value);
                                }
                                if ((j & 65541) != 0) {
                                    activityChargeNotificationBinding.editTextInn.addTextChangedListener(watcher);
                                }
                                if ((j & 66572) != 0) {
                                    ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextInn, drawableFromResource);
                                }
                                if ((j & 67596) == 0) {
                                    TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextInn, value3);
                                }
                            }
                            value3 = null;
                        }
                    }
                    watcher = null;
                    if ((j & 68620) == 0) {
                        value3 = null;
                    } else {
                        if (taxChargeViewModel == null) {
                        }
                        updateRegistration(3, inn);
                        j2 = j & 66572;
                        if (j2 == 0) {
                            drawableFromResource = null;
                        } else {
                            if (inn == null) {
                                valid = false;
                            } else {
                                valid = inn.getValid();
                            }
                            if (j2 == 0) {
                            }
                            if (valid) {
                                view = activityChargeNotificationBinding.editTextInn;
                                i2 = C0859R.drawable.underline_gray_dc;
                            } else {
                                view = activityChargeNotificationBinding.editTextInn;
                                i2 = C0859R.drawable.underline_orange;
                            }
                            drawableFromResource = getDrawableFromResource(view, i2);
                            j = j3;
                        }
                        if ((j & 67596) != 0) {
                        }
                        if ((j & 65554) != 0) {
                            activityChargeNotificationBinding.editTextCtc.addTextChangedListener(watcher2);
                        }
                        if ((j & 69666) != 0) {
                            ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextCtc, drawableFromResource2);
                        }
                        if ((j & 73762) != 0) {
                            TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextCtc, value2);
                        }
                        if ((j & 66050) != 0) {
                            activityChargeNotificationBinding.editTextCtc.setVisibility(i);
                            activityChargeNotificationBinding.editTextDriverLicence.setVisibility(i);
                            activityChargeNotificationBinding.mboundView2.setVisibility(i);
                            activityChargeNotificationBinding.mboundView4.setVisibility(i);
                        }
                        if ((j & 65602) != 0) {
                            activityChargeNotificationBinding.editTextDriverLicence.addTextChangedListener(watcher3);
                        }
                        if ((j & 82050) != 0) {
                            ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextDriverLicence, drawableFromResource3);
                        }
                        if ((j & 98434) != 0) {
                            TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextDriverLicence, value);
                        }
                        if ((j & 65541) != 0) {
                            activityChargeNotificationBinding.editTextInn.addTextChangedListener(watcher);
                        }
                        if ((j & 66572) != 0) {
                            ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextInn, drawableFromResource);
                        }
                        if ((j & 67596) == 0) {
                            TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextInn, value3);
                        }
                    }
                }
                drawableFromResource = null;
                if ((j & 65554) != 0) {
                    activityChargeNotificationBinding.editTextCtc.addTextChangedListener(watcher2);
                }
                if ((j & 69666) != 0) {
                    ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextCtc, drawableFromResource2);
                }
                if ((j & 73762) != 0) {
                    TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextCtc, value2);
                }
                if ((j & 66050) != 0) {
                    activityChargeNotificationBinding.editTextCtc.setVisibility(i);
                    activityChargeNotificationBinding.editTextDriverLicence.setVisibility(i);
                    activityChargeNotificationBinding.mboundView2.setVisibility(i);
                    activityChargeNotificationBinding.mboundView4.setVisibility(i);
                }
                if ((j & 65602) != 0) {
                    activityChargeNotificationBinding.editTextDriverLicence.addTextChangedListener(watcher3);
                }
                if ((j & 82050) != 0) {
                    ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextDriverLicence, drawableFromResource3);
                }
                if ((j & 98434) != 0) {
                    TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextDriverLicence, value);
                }
                if ((j & 65541) != 0) {
                    activityChargeNotificationBinding.editTextInn.addTextChangedListener(watcher);
                }
                if ((j & 66572) != 0) {
                    ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextInn, drawableFromResource);
                }
                if ((j & 67596) == 0) {
                    TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextInn, value3);
                }
            }
        }
        drawableFromResource3 = null;
        i = 0;
        value2 = null;
        watcher2 = null;
        drawableFromResource2 = null;
        watcher3 = null;
        value = null;
        if ((j & 68621) != 0) {
            if ((j & 65541) != 0) {
                if (taxChargeViewModel != null) {
                }
                updateRegistration(0, field);
                if (field != null) {
                    watcher = field.getWatcher();
                    if ((j & 68620) == 0) {
                        if (taxChargeViewModel == null) {
                        }
                        updateRegistration(3, inn);
                        j2 = j & 66572;
                        if (j2 == 0) {
                            if (inn == null) {
                                valid = inn.getValid();
                            } else {
                                valid = false;
                            }
                            if (j2 == 0) {
                                if (valid) {
                                }
                            }
                            if (valid) {
                                view = activityChargeNotificationBinding.editTextInn;
                                i2 = C0859R.drawable.underline_orange;
                            } else {
                                view = activityChargeNotificationBinding.editTextInn;
                                i2 = C0859R.drawable.underline_gray_dc;
                            }
                            drawableFromResource = getDrawableFromResource(view, i2);
                            j = j3;
                        } else {
                            drawableFromResource = null;
                        }
                        if ((j & 67596) != 0) {
                        }
                        if ((j & 65554) != 0) {
                            activityChargeNotificationBinding.editTextCtc.addTextChangedListener(watcher2);
                        }
                        if ((j & 69666) != 0) {
                            ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextCtc, drawableFromResource2);
                        }
                        if ((j & 73762) != 0) {
                            TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextCtc, value2);
                        }
                        if ((j & 66050) != 0) {
                            activityChargeNotificationBinding.editTextCtc.setVisibility(i);
                            activityChargeNotificationBinding.editTextDriverLicence.setVisibility(i);
                            activityChargeNotificationBinding.mboundView2.setVisibility(i);
                            activityChargeNotificationBinding.mboundView4.setVisibility(i);
                        }
                        if ((j & 65602) != 0) {
                            activityChargeNotificationBinding.editTextDriverLicence.addTextChangedListener(watcher3);
                        }
                        if ((j & 82050) != 0) {
                            ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextDriverLicence, drawableFromResource3);
                        }
                        if ((j & 98434) != 0) {
                            TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextDriverLicence, value);
                        }
                        if ((j & 65541) != 0) {
                            activityChargeNotificationBinding.editTextInn.addTextChangedListener(watcher);
                        }
                        if ((j & 66572) != 0) {
                            ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextInn, drawableFromResource);
                        }
                        if ((j & 67596) == 0) {
                            TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextInn, value3);
                        }
                    }
                    value3 = null;
                }
            }
            watcher = null;
            if ((j & 68620) == 0) {
                value3 = null;
            } else {
                if (taxChargeViewModel == null) {
                }
                updateRegistration(3, inn);
                j2 = j & 66572;
                if (j2 == 0) {
                    drawableFromResource = null;
                } else {
                    if (inn == null) {
                        valid = false;
                    } else {
                        valid = inn.getValid();
                    }
                    if (j2 == 0) {
                    }
                    if (valid) {
                        view = activityChargeNotificationBinding.editTextInn;
                        i2 = C0859R.drawable.underline_gray_dc;
                    } else {
                        view = activityChargeNotificationBinding.editTextInn;
                        i2 = C0859R.drawable.underline_orange;
                    }
                    drawableFromResource = getDrawableFromResource(view, i2);
                    j = j3;
                }
                if ((j & 67596) != 0) {
                }
                if ((j & 65554) != 0) {
                    activityChargeNotificationBinding.editTextCtc.addTextChangedListener(watcher2);
                }
                if ((j & 69666) != 0) {
                    ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextCtc, drawableFromResource2);
                }
                if ((j & 73762) != 0) {
                    TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextCtc, value2);
                }
                if ((j & 66050) != 0) {
                    activityChargeNotificationBinding.editTextCtc.setVisibility(i);
                    activityChargeNotificationBinding.editTextDriverLicence.setVisibility(i);
                    activityChargeNotificationBinding.mboundView2.setVisibility(i);
                    activityChargeNotificationBinding.mboundView4.setVisibility(i);
                }
                if ((j & 65602) != 0) {
                    activityChargeNotificationBinding.editTextDriverLicence.addTextChangedListener(watcher3);
                }
                if ((j & 82050) != 0) {
                    ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextDriverLicence, drawableFromResource3);
                }
                if ((j & 98434) != 0) {
                    TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextDriverLicence, value);
                }
                if ((j & 65541) != 0) {
                    activityChargeNotificationBinding.editTextInn.addTextChangedListener(watcher);
                }
                if ((j & 66572) != 0) {
                    ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextInn, drawableFromResource);
                }
                if ((j & 67596) == 0) {
                    TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextInn, value3);
                }
            }
        }
        value3 = null;
        watcher = null;
        drawableFromResource = null;
        if ((j & 65554) != 0) {
            activityChargeNotificationBinding.editTextCtc.addTextChangedListener(watcher2);
        }
        if ((j & 69666) != 0) {
            ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextCtc, drawableFromResource2);
        }
        if ((j & 73762) != 0) {
            TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextCtc, value2);
        }
        if ((j & 66050) != 0) {
            activityChargeNotificationBinding.editTextCtc.setVisibility(i);
            activityChargeNotificationBinding.editTextDriverLicence.setVisibility(i);
            activityChargeNotificationBinding.mboundView2.setVisibility(i);
            activityChargeNotificationBinding.mboundView4.setVisibility(i);
        }
        if ((j & 65602) != 0) {
            activityChargeNotificationBinding.editTextDriverLicence.addTextChangedListener(watcher3);
        }
        if ((j & 82050) != 0) {
            ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextDriverLicence, drawableFromResource3);
        }
        if ((j & 98434) != 0) {
            TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextDriverLicence, value);
        }
        if ((j & 65541) != 0) {
            activityChargeNotificationBinding.editTextInn.addTextChangedListener(watcher);
        }
        if ((j & 66572) != 0) {
            ViewBindingAdapter.setBackground(activityChargeNotificationBinding.editTextInn, drawableFromResource);
        }
        if ((j & 67596) == 0) {
            TextViewBindingAdapter.setText(activityChargeNotificationBinding.editTextInn, value3);
        }
    }

    public static ActivityChargeNotificationBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityChargeNotificationBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (ActivityChargeNotificationBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.activity_charge_notification, viewGroup, z, dataBindingComponent);
    }

    public static ActivityChargeNotificationBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityChargeNotificationBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.activity_charge_notification, null, false), dataBindingComponent);
    }

    public static ActivityChargeNotificationBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityChargeNotificationBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/activity_charge_notification_0".equals(view.getTag())) {
            return new ActivityChargeNotificationBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
