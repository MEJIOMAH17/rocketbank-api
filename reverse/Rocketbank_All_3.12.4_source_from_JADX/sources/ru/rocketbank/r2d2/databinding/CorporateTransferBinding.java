package ru.rocketbank.r2d2.databinding;

import android.arch.lifecycle.LifecycleOwner;
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
import android.widget.ProgressBar;
import java.util.HashMap;
import ru.rocketbank.core.widgets.RocketEditText;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.fragments.transfers.CorporateObservable;
import ru.rocketbank.r2d2.utils.TextWatcherAbstract;
import ru.rocketbank.r2d2.utils.ViewModelObservable.ViewField;

public class CorporateTransferBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes;
    private static final SparseIntArray sViewsWithIds;
    public final LinearLayout corporateView;
    public final RocketEditText editTextCorporatePurpose;
    public final GkhLayputBinding includeGkh;
    public final RocketEditText inn;
    public final ProgressBar innProgressBar;
    public final RocketEditText kpp;
    private CorporateObservable mCorporate;
    private long mDirtyFlags = -1;
    private final RocketTextView mboundView4;
    public final RocketEditText recipientName;

    static {
        IncludedLayouts includedLayouts = new IncludedLayouts(8);
        sIncludes = includedLayouts;
        includedLayouts.setIncludes(0, new String[]{"gkh_layput"}, new int[]{6}, new int[]{C0859R.layout.gkh_layput});
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.innProgressBar, 7);
    }

    public CorporateTransferBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 10);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 8, sIncludes, sViewsWithIds);
        this.corporateView = (LinearLayout) dataBindingComponent[0];
        this.corporateView.setTag(null);
        this.editTextCorporatePurpose = (RocketEditText) dataBindingComponent[5];
        this.editTextCorporatePurpose.setTag(null);
        this.includeGkh = (GkhLayputBinding) dataBindingComponent[6];
        setContainedBinding(this.includeGkh);
        this.inn = (RocketEditText) dataBindingComponent[1];
        this.inn.setTag(null);
        this.innProgressBar = (ProgressBar) dataBindingComponent[7];
        this.kpp = (RocketEditText) dataBindingComponent[2];
        this.kpp.setTag(null);
        this.mboundView4 = (RocketTextView) dataBindingComponent[4];
        this.mboundView4.setTag(null);
        this.recipientName = (RocketEditText) dataBindingComponent[3];
        this.recipientName.setTag(null);
        setRootTag(view);
        invalidateAll();
    }

    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = PlaybackStateCompat.ACTION_SET_REPEAT_MODE;
        }
        this.includeGkh.invalidateAll();
        requestRebind();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean hasPendingBindings() {
        /*
        r5 = this;
        monitor-enter(r5);
        r0 = r5.mDirtyFlags;	 Catch:{ all -> 0x0018 }
        r2 = 0;
        r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1));
        r0 = 1;
        if (r4 == 0) goto L_0x000c;
    L_0x000a:
        monitor-exit(r5);	 Catch:{ all -> 0x0018 }
        return r0;
    L_0x000c:
        monitor-exit(r5);	 Catch:{ all -> 0x0018 }
        r1 = r5.includeGkh;
        r1 = r1.hasPendingBindings();
        if (r1 == 0) goto L_0x0016;
    L_0x0015:
        return r0;
    L_0x0016:
        r0 = 0;
        return r0;
    L_0x0018:
        r0 = move-exception;
        monitor-exit(r5);	 Catch:{ all -> 0x0018 }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.databinding.CorporateTransferBinding.hasPendingBindings():boolean");
    }

    public boolean setVariable(int i, Object obj) {
        if (19 != i) {
            return false;
        }
        setCorporate((CorporateObservable) obj);
        return true;
    }

    public void setCorporate(CorporateObservable corporateObservable) {
        updateRegistration(7, corporateObservable);
        this.mCorporate = corporateObservable;
        synchronized (this) {
            this.mDirtyFlags |= 128;
        }
        notifyPropertyChanged(19);
        super.requestRebind();
    }

    public CorporateObservable getCorporate() {
        return this.mCorporate;
    }

    public void setLifecycleOwner(LifecycleOwner lifecycleOwner) {
        super.setLifecycleOwner(lifecycleOwner);
        this.includeGkh.setLifecycleOwner(lifecycleOwner);
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeCorporateFieldsPurpose((ViewField) obj, i2);
            case 1:
                return onChangeCorporateFieldsRecipientName((ViewField) obj, i2);
            case 2:
                return onChangeCorporateInn((ViewField) obj, i2);
            case 3:
                return onChangeCorporateRecipientName((ViewField) obj, i2);
            case 4:
                return onChangeCorporateKpp((ViewField) obj, i2);
            case 5:
                return onChangeCorporateFieldsInn((ViewField) obj, i2);
            case 6:
                return onChangeCorporateFieldsKpp((ViewField) obj, i2);
            case 7:
                return onChangeCorporate((CorporateObservable) obj, i2);
            case 8:
                return onChangeIncludeGkh((GkhLayputBinding) obj, i2);
            case 9:
                return onChangeCorporatePurpose((ViewField) obj, i2);
            default:
                return false;
        }
    }

    private boolean onChangeCorporateFieldsPurpose(ViewField viewField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    private boolean onChangeCorporateFieldsRecipientName(ViewField viewField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        return true;
    }

    private boolean onChangeCorporateInn(ViewField viewField, int i) {
        if (i == 0) {
            synchronized (this) {
                this.mDirtyFlags |= 4;
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

    private boolean onChangeCorporateRecipientName(ViewField viewField, int i) {
        if (i == 0) {
            synchronized (this) {
                this.mDirtyFlags |= 8;
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

    private boolean onChangeCorporateKpp(ViewField viewField, int i) {
        if (i == 0) {
            synchronized (this) {
                this.mDirtyFlags |= 16;
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

    private boolean onChangeCorporateFieldsInn(ViewField viewField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 32;
        }
        return true;
    }

    private boolean onChangeCorporateFieldsKpp(ViewField viewField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 64;
        }
        return true;
    }

    private boolean onChangeCorporate(CorporateObservable corporateObservable, int i) {
        if (i == 0) {
            synchronized (this) {
                this.mDirtyFlags |= 128;
            }
            return true;
        } else if (i == 46) {
            synchronized (this) {
                this.mDirtyFlags |= 4;
            }
            return true;
        } else if (i == 53) {
            synchronized (this) {
                this.mDirtyFlags |= 16;
            }
            return true;
        } else if (i == 70) {
            synchronized (this) {
                this.mDirtyFlags |= 8;
            }
            return true;
        } else if (i != 67) {
            return null;
        } else {
            synchronized (this) {
                this.mDirtyFlags |= 512;
            }
            return true;
        }
    }

    private boolean onChangeIncludeGkh(GkhLayputBinding gkhLayputBinding, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 256;
        }
        return true;
    }

    private boolean onChangeCorporatePurpose(ViewField viewField, int i) {
        if (i == 0) {
            synchronized (this) {
                this.mDirtyFlags |= 512;
            }
            return true;
        } else if (i == 89) {
            synchronized (this) {
                this.mDirtyFlags |= PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH;
            }
            return true;
        } else if (i != 88) {
            return null;
        } else {
            synchronized (this) {
                this.mDirtyFlags |= PlaybackStateCompat.ACTION_PREPARE_FROM_URI;
            }
            return true;
        }
    }

    protected void executeBindings() {
        long j;
        Drawable drawableFromResource;
        CharSequence charSequence;
        Drawable drawable;
        TextWatcher watcher;
        int i;
        TextWatcher watcher2;
        CharSequence value;
        Object obj;
        String str;
        Drawable drawable2;
        Drawable drawable3;
        TextWatcherAbstract textWatcherAbstract;
        CharSequence charSequence2;
        TextWatcher textWatcher;
        CharSequence valueOf;
        TextWatcherAbstract textWatcherAbstract2;
        CorporateTransferBinding corporateTransferBinding = this;
        synchronized (this) {
            try {
                j = corporateTransferBinding.mDirtyFlags;
                corporateTransferBinding.mDirtyFlags = 0;
            } catch (Throwable th) {
                while (true) {
                    Throwable th2 = th;
                }
            }
        }
        CorporateObservable corporateObservable = corporateTransferBinding.mCorporate;
        if ((j & 524031) != 0) {
            long j2;
            long j3;
            String value2;
            Drawable drawableFromResource2;
            String value3;
            TextWatcherAbstract watcher3;
            TextWatcherAbstract watcher4;
            ViewField purpose;
            TextWatcherAbstract textWatcherAbstract3;
            long j4;
            boolean valid;
            View view;
            int i2;
            Drawable drawableFromResource3;
            Drawable drawable4;
            TextWatcherAbstract textWatcherAbstract4;
            if ((j & 265348) != 0) {
                ViewField inn = corporateObservable != null ? corporateObservable.getInn() : null;
                updateRegistration(2, inn);
                j2 = j & 263300;
                if (j2 != 0) {
                    boolean valid2;
                    if (inn != null) {
                        valid2 = inn.getValid();
                    } else {
                        valid2 = false;
                    }
                    j3 = j2 != 0 ? valid2 ? j | 268435456 : j | 134217728 : j;
                    drawableFromResource = valid2 ? getDrawableFromResource(corporateTransferBinding.inn, C0859R.drawable.underline_orange) : getDrawableFromResource(corporateTransferBinding.inn, C0859R.drawable.underline_gray_dc);
                    j = j3;
                } else {
                    drawableFromResource = null;
                }
                value2 = ((j & 264324) == 0 || inn == null) ? null : inn.getValue();
            } else {
                value2 = null;
                drawableFromResource = null;
            }
            if ((j & 274568) != 0) {
                ViewField recipient_name = corporateObservable != null ? corporateObservable.getRecipient_name() : null;
                updateRegistration(3, recipient_name);
                long j5 = j & 266376;
                if (j5 != 0) {
                    boolean valid3;
                    if (recipient_name != null) {
                        valid3 = recipient_name.getValid();
                    } else {
                        valid3 = false;
                    }
                    long j6 = j5 != 0 ? valid3 ? j | 4194304 : j | PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE : j;
                    drawableFromResource2 = valid3 ? getDrawableFromResource(corporateTransferBinding.recipientName, C0859R.drawable.underline_orange) : getDrawableFromResource(corporateTransferBinding.recipientName, C0859R.drawable.underline_gray_dc);
                    j = j6;
                } else {
                    drawableFromResource2 = null;
                }
                value3 = ((j & 270472) == 0 || recipient_name == null) ? null : recipient_name.getValue();
            } else {
                value3 = null;
                drawableFromResource2 = null;
            }
            if ((j & 311440) != 0) {
                ViewField kpp = corporateObservable != null ? corporateObservable.getKpp() : null;
                updateRegistration(4, kpp);
                String value4 = ((j & 295056) == 0 || kpp == null) ? null : kpp.getValue();
                j2 = j & 278672;
                if (j2 != 0) {
                    boolean valid4;
                    if (kpp != null) {
                        valid4 = kpp.getValid();
                    } else {
                        valid4 = false;
                    }
                    j3 = j2 != 0 ? valid4 ? j | 67108864 : j | 33554432 : j;
                    Drawable drawableFromResource4 = valid4 ? getDrawableFromResource(corporateTransferBinding.kpp, C0859R.drawable.underline_orange) : getDrawableFromResource(corporateTransferBinding.kpp, C0859R.drawable.underline_gray_dc);
                    charSequence = value4;
                    drawable = drawableFromResource4;
                    j = j3;
                } else {
                    charSequence = value4;
                    drawable = null;
                }
            } else {
                drawable = null;
                charSequence = null;
            }
            if ((j & 262371) != 0) {
                Object obj2;
                HashMap fields = corporateObservable != null ? corporateObservable.getFields() : null;
                if ((j & 262273) != 0) {
                    Object obj3 = fields != null ? (ViewField) fields.get("purpose") : null;
                    updateRegistration(0, obj3);
                    if (obj3 != null) {
                        watcher = obj3.getWatcher();
                        if ((j & 262274) != 0) {
                            if (fields == null) {
                                obj2 = (ViewField) fields.get("recipient_name");
                                i = 1;
                            } else {
                                i = 1;
                                obj2 = null;
                            }
                            updateRegistration(i, obj2);
                            if (obj2 != null) {
                                watcher3 = obj2.getWatcher();
                                if ((j & 262304) != 0) {
                                    obj2 = fields == null ? (ViewField) fields.get("inn") : null;
                                    updateRegistration(5, obj2);
                                    if (obj2 != null) {
                                        watcher4 = obj2.getWatcher();
                                        if ((j & 262336) != 0) {
                                            obj2 = fields == null ? (ViewField) fields.get("kpp") : null;
                                            updateRegistration(6, obj2);
                                            if (obj2 != null) {
                                                watcher2 = obj2.getWatcher();
                                                if ((j & 459392) != 0) {
                                                    if (corporateObservable != null) {
                                                        purpose = corporateObservable.getPurpose();
                                                        textWatcherAbstract3 = watcher4;
                                                    } else {
                                                        textWatcherAbstract3 = watcher4;
                                                        purpose = null;
                                                    }
                                                    updateRegistration(9, purpose);
                                                    j4 = j & 393856;
                                                    if (j4 != 0) {
                                                        if (purpose != null) {
                                                            valid = purpose.getValid();
                                                        } else {
                                                            valid = false;
                                                        }
                                                        j3 = j4 != 0 ? valid ? j | PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED : j | PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED : j;
                                                        if (valid) {
                                                            view = corporateTransferBinding.editTextCorporatePurpose;
                                                            i2 = C0859R.drawable.underline_orange;
                                                        } else {
                                                            view = corporateTransferBinding.editTextCorporatePurpose;
                                                            i2 = C0859R.drawable.underline_gray_dc;
                                                        }
                                                        drawableFromResource3 = getDrawableFromResource(view, i2);
                                                        j = j3;
                                                    } else {
                                                        drawableFromResource3 = null;
                                                    }
                                                    j3 = j & 328320;
                                                    if (j3 != 0) {
                                                        value = purpose != null ? purpose.getValue() : null;
                                                        if (value != null) {
                                                            drawable4 = drawableFromResource3;
                                                            textWatcherAbstract4 = watcher3;
                                                            i = value.length();
                                                        } else {
                                                            drawable4 = drawableFromResource3;
                                                            textWatcherAbstract4 = watcher3;
                                                            i = 0;
                                                        }
                                                        if (i >= 100) {
                                                            j2 = 0;
                                                            obj = 1;
                                                        } else {
                                                            j2 = 0;
                                                            obj = null;
                                                        }
                                                        if (j3 != j2) {
                                                            str = value3;
                                                            drawable2 = drawableFromResource2;
                                                            j = obj != null ? j | 16777216 : j | 8388608;
                                                        } else {
                                                            str = value3;
                                                            drawable2 = drawableFromResource2;
                                                        }
                                                        drawable3 = drawable4;
                                                        textWatcherAbstract = textWatcherAbstract4;
                                                        charSequence2 = value2;
                                                        textWatcher = textWatcherAbstract3;
                                                    } else {
                                                        textWatcherAbstract4 = watcher3;
                                                        str = value3;
                                                        drawable2 = drawableFromResource2;
                                                        drawable3 = drawableFromResource3;
                                                        textWatcherAbstract = textWatcherAbstract4;
                                                        i = 0;
                                                    }
                                                } else {
                                                    textWatcherAbstract3 = watcher4;
                                                    str = value3;
                                                    drawable2 = drawableFromResource2;
                                                    textWatcherAbstract = watcher3;
                                                    i = 0;
                                                    drawable3 = null;
                                                }
                                                value = null;
                                                obj = null;
                                                charSequence2 = value2;
                                                textWatcher = textWatcherAbstract3;
                                            }
                                        }
                                    }
                                }
                                watcher4 = null;
                                if ((j & 262336) != 0) {
                                    if (fields == null) {
                                    }
                                    updateRegistration(6, obj2);
                                    if (obj2 != null) {
                                        watcher2 = obj2.getWatcher();
                                        if ((j & 459392) != 0) {
                                            textWatcherAbstract3 = watcher4;
                                            str = value3;
                                            drawable2 = drawableFromResource2;
                                            textWatcherAbstract = watcher3;
                                            i = 0;
                                            drawable3 = null;
                                        } else {
                                            if (corporateObservable != null) {
                                                textWatcherAbstract3 = watcher4;
                                                purpose = null;
                                            } else {
                                                purpose = corporateObservable.getPurpose();
                                                textWatcherAbstract3 = watcher4;
                                            }
                                            updateRegistration(9, purpose);
                                            j4 = j & 393856;
                                            if (j4 != 0) {
                                                drawableFromResource3 = null;
                                            } else {
                                                if (purpose != null) {
                                                    valid = false;
                                                } else {
                                                    valid = purpose.getValid();
                                                }
                                                if (j4 != 0) {
                                                }
                                                if (valid) {
                                                    view = corporateTransferBinding.editTextCorporatePurpose;
                                                    i2 = C0859R.drawable.underline_gray_dc;
                                                } else {
                                                    view = corporateTransferBinding.editTextCorporatePurpose;
                                                    i2 = C0859R.drawable.underline_orange;
                                                }
                                                drawableFromResource3 = getDrawableFromResource(view, i2);
                                                j = j3;
                                            }
                                            j3 = j & 328320;
                                            if (j3 != 0) {
                                                textWatcherAbstract4 = watcher3;
                                                str = value3;
                                                drawable2 = drawableFromResource2;
                                                drawable3 = drawableFromResource3;
                                                textWatcherAbstract = textWatcherAbstract4;
                                                i = 0;
                                            } else {
                                                if (purpose != null) {
                                                }
                                                if (value != null) {
                                                    drawable4 = drawableFromResource3;
                                                    textWatcherAbstract4 = watcher3;
                                                    i = 0;
                                                } else {
                                                    drawable4 = drawableFromResource3;
                                                    textWatcherAbstract4 = watcher3;
                                                    i = value.length();
                                                }
                                                if (i >= 100) {
                                                    j2 = 0;
                                                    obj = null;
                                                } else {
                                                    j2 = 0;
                                                    obj = 1;
                                                }
                                                if (j3 != j2) {
                                                    str = value3;
                                                    drawable2 = drawableFromResource2;
                                                } else {
                                                    if (obj != null) {
                                                    }
                                                    str = value3;
                                                    drawable2 = drawableFromResource2;
                                                    j = obj != null ? j | 16777216 : j | 8388608;
                                                }
                                                drawable3 = drawable4;
                                                textWatcherAbstract = textWatcherAbstract4;
                                                charSequence2 = value2;
                                                textWatcher = textWatcherAbstract3;
                                            }
                                        }
                                        value = null;
                                        obj = null;
                                        charSequence2 = value2;
                                        textWatcher = textWatcherAbstract3;
                                    }
                                }
                            }
                        }
                        watcher3 = null;
                        if ((j & 262304) != 0) {
                            if (fields == null) {
                            }
                            updateRegistration(5, obj2);
                            if (obj2 != null) {
                                watcher4 = obj2.getWatcher();
                                if ((j & 262336) != 0) {
                                    if (fields == null) {
                                    }
                                    updateRegistration(6, obj2);
                                    if (obj2 != null) {
                                        watcher2 = obj2.getWatcher();
                                        if ((j & 459392) != 0) {
                                            if (corporateObservable != null) {
                                                purpose = corporateObservable.getPurpose();
                                                textWatcherAbstract3 = watcher4;
                                            } else {
                                                textWatcherAbstract3 = watcher4;
                                                purpose = null;
                                            }
                                            updateRegistration(9, purpose);
                                            j4 = j & 393856;
                                            if (j4 != 0) {
                                                if (purpose != null) {
                                                    valid = purpose.getValid();
                                                } else {
                                                    valid = false;
                                                }
                                                if (j4 != 0) {
                                                    if (valid) {
                                                    }
                                                }
                                                if (valid) {
                                                    view = corporateTransferBinding.editTextCorporatePurpose;
                                                    i2 = C0859R.drawable.underline_orange;
                                                } else {
                                                    view = corporateTransferBinding.editTextCorporatePurpose;
                                                    i2 = C0859R.drawable.underline_gray_dc;
                                                }
                                                drawableFromResource3 = getDrawableFromResource(view, i2);
                                                j = j3;
                                            } else {
                                                drawableFromResource3 = null;
                                            }
                                            j3 = j & 328320;
                                            if (j3 != 0) {
                                                if (purpose != null) {
                                                }
                                                if (value != null) {
                                                    drawable4 = drawableFromResource3;
                                                    textWatcherAbstract4 = watcher3;
                                                    i = value.length();
                                                } else {
                                                    drawable4 = drawableFromResource3;
                                                    textWatcherAbstract4 = watcher3;
                                                    i = 0;
                                                }
                                                if (i >= 100) {
                                                    j2 = 0;
                                                    obj = 1;
                                                } else {
                                                    j2 = 0;
                                                    obj = null;
                                                }
                                                if (j3 != j2) {
                                                    if (obj != null) {
                                                    }
                                                    str = value3;
                                                    drawable2 = drawableFromResource2;
                                                    j = obj != null ? j | 16777216 : j | 8388608;
                                                } else {
                                                    str = value3;
                                                    drawable2 = drawableFromResource2;
                                                }
                                                drawable3 = drawable4;
                                                textWatcherAbstract = textWatcherAbstract4;
                                                charSequence2 = value2;
                                                textWatcher = textWatcherAbstract3;
                                            } else {
                                                textWatcherAbstract4 = watcher3;
                                                str = value3;
                                                drawable2 = drawableFromResource2;
                                                drawable3 = drawableFromResource3;
                                                textWatcherAbstract = textWatcherAbstract4;
                                                i = 0;
                                            }
                                        } else {
                                            textWatcherAbstract3 = watcher4;
                                            str = value3;
                                            drawable2 = drawableFromResource2;
                                            textWatcherAbstract = watcher3;
                                            i = 0;
                                            drawable3 = null;
                                        }
                                        value = null;
                                        obj = null;
                                        charSequence2 = value2;
                                        textWatcher = textWatcherAbstract3;
                                    }
                                }
                            }
                        }
                        watcher4 = null;
                        if ((j & 262336) != 0) {
                            if (fields == null) {
                            }
                            updateRegistration(6, obj2);
                            if (obj2 != null) {
                                watcher2 = obj2.getWatcher();
                                if ((j & 459392) != 0) {
                                    textWatcherAbstract3 = watcher4;
                                    str = value3;
                                    drawable2 = drawableFromResource2;
                                    textWatcherAbstract = watcher3;
                                    i = 0;
                                    drawable3 = null;
                                } else {
                                    if (corporateObservable != null) {
                                        textWatcherAbstract3 = watcher4;
                                        purpose = null;
                                    } else {
                                        purpose = corporateObservable.getPurpose();
                                        textWatcherAbstract3 = watcher4;
                                    }
                                    updateRegistration(9, purpose);
                                    j4 = j & 393856;
                                    if (j4 != 0) {
                                        drawableFromResource3 = null;
                                    } else {
                                        if (purpose != null) {
                                            valid = false;
                                        } else {
                                            valid = purpose.getValid();
                                        }
                                        if (j4 != 0) {
                                        }
                                        if (valid) {
                                            view = corporateTransferBinding.editTextCorporatePurpose;
                                            i2 = C0859R.drawable.underline_gray_dc;
                                        } else {
                                            view = corporateTransferBinding.editTextCorporatePurpose;
                                            i2 = C0859R.drawable.underline_orange;
                                        }
                                        drawableFromResource3 = getDrawableFromResource(view, i2);
                                        j = j3;
                                    }
                                    j3 = j & 328320;
                                    if (j3 != 0) {
                                        textWatcherAbstract4 = watcher3;
                                        str = value3;
                                        drawable2 = drawableFromResource2;
                                        drawable3 = drawableFromResource3;
                                        textWatcherAbstract = textWatcherAbstract4;
                                        i = 0;
                                    } else {
                                        if (purpose != null) {
                                        }
                                        if (value != null) {
                                            drawable4 = drawableFromResource3;
                                            textWatcherAbstract4 = watcher3;
                                            i = 0;
                                        } else {
                                            drawable4 = drawableFromResource3;
                                            textWatcherAbstract4 = watcher3;
                                            i = value.length();
                                        }
                                        if (i >= 100) {
                                            j2 = 0;
                                            obj = null;
                                        } else {
                                            j2 = 0;
                                            obj = 1;
                                        }
                                        if (j3 != j2) {
                                            str = value3;
                                            drawable2 = drawableFromResource2;
                                        } else {
                                            if (obj != null) {
                                            }
                                            str = value3;
                                            drawable2 = drawableFromResource2;
                                            j = obj != null ? j | 16777216 : j | 8388608;
                                        }
                                        drawable3 = drawable4;
                                        textWatcherAbstract = textWatcherAbstract4;
                                        charSequence2 = value2;
                                        textWatcher = textWatcherAbstract3;
                                    }
                                }
                                value = null;
                                obj = null;
                                charSequence2 = value2;
                                textWatcher = textWatcherAbstract3;
                            }
                        }
                    }
                }
                watcher = null;
                if ((j & 262274) != 0) {
                    if (fields == null) {
                        i = 1;
                        obj2 = null;
                    } else {
                        obj2 = (ViewField) fields.get("recipient_name");
                        i = 1;
                    }
                    updateRegistration(i, obj2);
                    if (obj2 != null) {
                        watcher3 = obj2.getWatcher();
                        if ((j & 262304) != 0) {
                            if (fields == null) {
                            }
                            updateRegistration(5, obj2);
                            if (obj2 != null) {
                                watcher4 = obj2.getWatcher();
                                if ((j & 262336) != 0) {
                                    if (fields == null) {
                                    }
                                    updateRegistration(6, obj2);
                                    if (obj2 != null) {
                                        watcher2 = obj2.getWatcher();
                                        if ((j & 459392) != 0) {
                                            if (corporateObservable != null) {
                                                purpose = corporateObservable.getPurpose();
                                                textWatcherAbstract3 = watcher4;
                                            } else {
                                                textWatcherAbstract3 = watcher4;
                                                purpose = null;
                                            }
                                            updateRegistration(9, purpose);
                                            j4 = j & 393856;
                                            if (j4 != 0) {
                                                if (purpose != null) {
                                                    valid = purpose.getValid();
                                                } else {
                                                    valid = false;
                                                }
                                                if (j4 != 0) {
                                                    if (valid) {
                                                    }
                                                }
                                                if (valid) {
                                                    view = corporateTransferBinding.editTextCorporatePurpose;
                                                    i2 = C0859R.drawable.underline_orange;
                                                } else {
                                                    view = corporateTransferBinding.editTextCorporatePurpose;
                                                    i2 = C0859R.drawable.underline_gray_dc;
                                                }
                                                drawableFromResource3 = getDrawableFromResource(view, i2);
                                                j = j3;
                                            } else {
                                                drawableFromResource3 = null;
                                            }
                                            j3 = j & 328320;
                                            if (j3 != 0) {
                                                if (purpose != null) {
                                                }
                                                if (value != null) {
                                                    drawable4 = drawableFromResource3;
                                                    textWatcherAbstract4 = watcher3;
                                                    i = value.length();
                                                } else {
                                                    drawable4 = drawableFromResource3;
                                                    textWatcherAbstract4 = watcher3;
                                                    i = 0;
                                                }
                                                if (i >= 100) {
                                                    j2 = 0;
                                                    obj = 1;
                                                } else {
                                                    j2 = 0;
                                                    obj = null;
                                                }
                                                if (j3 != j2) {
                                                    if (obj != null) {
                                                    }
                                                    str = value3;
                                                    drawable2 = drawableFromResource2;
                                                    j = obj != null ? j | 16777216 : j | 8388608;
                                                } else {
                                                    str = value3;
                                                    drawable2 = drawableFromResource2;
                                                }
                                                drawable3 = drawable4;
                                                textWatcherAbstract = textWatcherAbstract4;
                                                charSequence2 = value2;
                                                textWatcher = textWatcherAbstract3;
                                            } else {
                                                textWatcherAbstract4 = watcher3;
                                                str = value3;
                                                drawable2 = drawableFromResource2;
                                                drawable3 = drawableFromResource3;
                                                textWatcherAbstract = textWatcherAbstract4;
                                                i = 0;
                                            }
                                        } else {
                                            textWatcherAbstract3 = watcher4;
                                            str = value3;
                                            drawable2 = drawableFromResource2;
                                            textWatcherAbstract = watcher3;
                                            i = 0;
                                            drawable3 = null;
                                        }
                                        value = null;
                                        obj = null;
                                        charSequence2 = value2;
                                        textWatcher = textWatcherAbstract3;
                                    }
                                }
                            }
                        }
                        watcher4 = null;
                        if ((j & 262336) != 0) {
                            if (fields == null) {
                            }
                            updateRegistration(6, obj2);
                            if (obj2 != null) {
                                watcher2 = obj2.getWatcher();
                                if ((j & 459392) != 0) {
                                    textWatcherAbstract3 = watcher4;
                                    str = value3;
                                    drawable2 = drawableFromResource2;
                                    textWatcherAbstract = watcher3;
                                    i = 0;
                                    drawable3 = null;
                                } else {
                                    if (corporateObservable != null) {
                                        textWatcherAbstract3 = watcher4;
                                        purpose = null;
                                    } else {
                                        purpose = corporateObservable.getPurpose();
                                        textWatcherAbstract3 = watcher4;
                                    }
                                    updateRegistration(9, purpose);
                                    j4 = j & 393856;
                                    if (j4 != 0) {
                                        drawableFromResource3 = null;
                                    } else {
                                        if (purpose != null) {
                                            valid = false;
                                        } else {
                                            valid = purpose.getValid();
                                        }
                                        if (j4 != 0) {
                                        }
                                        if (valid) {
                                            view = corporateTransferBinding.editTextCorporatePurpose;
                                            i2 = C0859R.drawable.underline_gray_dc;
                                        } else {
                                            view = corporateTransferBinding.editTextCorporatePurpose;
                                            i2 = C0859R.drawable.underline_orange;
                                        }
                                        drawableFromResource3 = getDrawableFromResource(view, i2);
                                        j = j3;
                                    }
                                    j3 = j & 328320;
                                    if (j3 != 0) {
                                        textWatcherAbstract4 = watcher3;
                                        str = value3;
                                        drawable2 = drawableFromResource2;
                                        drawable3 = drawableFromResource3;
                                        textWatcherAbstract = textWatcherAbstract4;
                                        i = 0;
                                    } else {
                                        if (purpose != null) {
                                        }
                                        if (value != null) {
                                            drawable4 = drawableFromResource3;
                                            textWatcherAbstract4 = watcher3;
                                            i = 0;
                                        } else {
                                            drawable4 = drawableFromResource3;
                                            textWatcherAbstract4 = watcher3;
                                            i = value.length();
                                        }
                                        if (i >= 100) {
                                            j2 = 0;
                                            obj = null;
                                        } else {
                                            j2 = 0;
                                            obj = 1;
                                        }
                                        if (j3 != j2) {
                                            str = value3;
                                            drawable2 = drawableFromResource2;
                                        } else {
                                            if (obj != null) {
                                            }
                                            str = value3;
                                            drawable2 = drawableFromResource2;
                                            j = obj != null ? j | 16777216 : j | 8388608;
                                        }
                                        drawable3 = drawable4;
                                        textWatcherAbstract = textWatcherAbstract4;
                                        charSequence2 = value2;
                                        textWatcher = textWatcherAbstract3;
                                    }
                                }
                                value = null;
                                obj = null;
                                charSequence2 = value2;
                                textWatcher = textWatcherAbstract3;
                            }
                        }
                    }
                }
                watcher3 = null;
                if ((j & 262304) != 0) {
                    if (fields == null) {
                    }
                    updateRegistration(5, obj2);
                    if (obj2 != null) {
                        watcher4 = obj2.getWatcher();
                        if ((j & 262336) != 0) {
                            if (fields == null) {
                            }
                            updateRegistration(6, obj2);
                            if (obj2 != null) {
                                watcher2 = obj2.getWatcher();
                                if ((j & 459392) != 0) {
                                    if (corporateObservable != null) {
                                        purpose = corporateObservable.getPurpose();
                                        textWatcherAbstract3 = watcher4;
                                    } else {
                                        textWatcherAbstract3 = watcher4;
                                        purpose = null;
                                    }
                                    updateRegistration(9, purpose);
                                    j4 = j & 393856;
                                    if (j4 != 0) {
                                        if (purpose != null) {
                                            valid = purpose.getValid();
                                        } else {
                                            valid = false;
                                        }
                                        if (j4 != 0) {
                                            if (valid) {
                                            }
                                        }
                                        if (valid) {
                                            view = corporateTransferBinding.editTextCorporatePurpose;
                                            i2 = C0859R.drawable.underline_orange;
                                        } else {
                                            view = corporateTransferBinding.editTextCorporatePurpose;
                                            i2 = C0859R.drawable.underline_gray_dc;
                                        }
                                        drawableFromResource3 = getDrawableFromResource(view, i2);
                                        j = j3;
                                    } else {
                                        drawableFromResource3 = null;
                                    }
                                    j3 = j & 328320;
                                    if (j3 != 0) {
                                        if (purpose != null) {
                                        }
                                        if (value != null) {
                                            drawable4 = drawableFromResource3;
                                            textWatcherAbstract4 = watcher3;
                                            i = value.length();
                                        } else {
                                            drawable4 = drawableFromResource3;
                                            textWatcherAbstract4 = watcher3;
                                            i = 0;
                                        }
                                        if (i >= 100) {
                                            j2 = 0;
                                            obj = 1;
                                        } else {
                                            j2 = 0;
                                            obj = null;
                                        }
                                        if (j3 != j2) {
                                            if (obj != null) {
                                            }
                                            str = value3;
                                            drawable2 = drawableFromResource2;
                                            j = obj != null ? j | 16777216 : j | 8388608;
                                        } else {
                                            str = value3;
                                            drawable2 = drawableFromResource2;
                                        }
                                        drawable3 = drawable4;
                                        textWatcherAbstract = textWatcherAbstract4;
                                        charSequence2 = value2;
                                        textWatcher = textWatcherAbstract3;
                                    } else {
                                        textWatcherAbstract4 = watcher3;
                                        str = value3;
                                        drawable2 = drawableFromResource2;
                                        drawable3 = drawableFromResource3;
                                        textWatcherAbstract = textWatcherAbstract4;
                                        i = 0;
                                    }
                                } else {
                                    textWatcherAbstract3 = watcher4;
                                    str = value3;
                                    drawable2 = drawableFromResource2;
                                    textWatcherAbstract = watcher3;
                                    i = 0;
                                    drawable3 = null;
                                }
                                value = null;
                                obj = null;
                                charSequence2 = value2;
                                textWatcher = textWatcherAbstract3;
                            }
                        }
                    }
                }
                watcher4 = null;
                if ((j & 262336) != 0) {
                    if (fields == null) {
                    }
                    updateRegistration(6, obj2);
                    if (obj2 != null) {
                        watcher2 = obj2.getWatcher();
                        if ((j & 459392) != 0) {
                            textWatcherAbstract3 = watcher4;
                            str = value3;
                            drawable2 = drawableFromResource2;
                            textWatcherAbstract = watcher3;
                            i = 0;
                            drawable3 = null;
                        } else {
                            if (corporateObservable != null) {
                                textWatcherAbstract3 = watcher4;
                                purpose = null;
                            } else {
                                purpose = corporateObservable.getPurpose();
                                textWatcherAbstract3 = watcher4;
                            }
                            updateRegistration(9, purpose);
                            j4 = j & 393856;
                            if (j4 != 0) {
                                drawableFromResource3 = null;
                            } else {
                                if (purpose != null) {
                                    valid = false;
                                } else {
                                    valid = purpose.getValid();
                                }
                                if (j4 != 0) {
                                }
                                if (valid) {
                                    view = corporateTransferBinding.editTextCorporatePurpose;
                                    i2 = C0859R.drawable.underline_gray_dc;
                                } else {
                                    view = corporateTransferBinding.editTextCorporatePurpose;
                                    i2 = C0859R.drawable.underline_orange;
                                }
                                drawableFromResource3 = getDrawableFromResource(view, i2);
                                j = j3;
                            }
                            j3 = j & 328320;
                            if (j3 != 0) {
                                textWatcherAbstract4 = watcher3;
                                str = value3;
                                drawable2 = drawableFromResource2;
                                drawable3 = drawableFromResource3;
                                textWatcherAbstract = textWatcherAbstract4;
                                i = 0;
                            } else {
                                if (purpose != null) {
                                }
                                if (value != null) {
                                    drawable4 = drawableFromResource3;
                                    textWatcherAbstract4 = watcher3;
                                    i = 0;
                                } else {
                                    drawable4 = drawableFromResource3;
                                    textWatcherAbstract4 = watcher3;
                                    i = value.length();
                                }
                                if (i >= 100) {
                                    j2 = 0;
                                    obj = null;
                                } else {
                                    j2 = 0;
                                    obj = 1;
                                }
                                if (j3 != j2) {
                                    str = value3;
                                    drawable2 = drawableFromResource2;
                                } else {
                                    if (obj != null) {
                                    }
                                    str = value3;
                                    drawable2 = drawableFromResource2;
                                    j = obj != null ? j | 16777216 : j | 8388608;
                                }
                                drawable3 = drawable4;
                                textWatcherAbstract = textWatcherAbstract4;
                                charSequence2 = value2;
                                textWatcher = textWatcherAbstract3;
                            }
                        }
                        value = null;
                        obj = null;
                        charSequence2 = value2;
                        textWatcher = textWatcherAbstract3;
                    }
                }
            } else {
                watcher4 = null;
                watcher3 = null;
                watcher = null;
            }
            watcher2 = null;
            if ((j & 459392) != 0) {
                if (corporateObservable != null) {
                    purpose = corporateObservable.getPurpose();
                    textWatcherAbstract3 = watcher4;
                } else {
                    textWatcherAbstract3 = watcher4;
                    purpose = null;
                }
                updateRegistration(9, purpose);
                j4 = j & 393856;
                if (j4 != 0) {
                    if (purpose != null) {
                        valid = purpose.getValid();
                    } else {
                        valid = false;
                    }
                    if (j4 != 0) {
                        if (valid) {
                        }
                    }
                    if (valid) {
                        view = corporateTransferBinding.editTextCorporatePurpose;
                        i2 = C0859R.drawable.underline_orange;
                    } else {
                        view = corporateTransferBinding.editTextCorporatePurpose;
                        i2 = C0859R.drawable.underline_gray_dc;
                    }
                    drawableFromResource3 = getDrawableFromResource(view, i2);
                    j = j3;
                } else {
                    drawableFromResource3 = null;
                }
                j3 = j & 328320;
                if (j3 != 0) {
                    if (purpose != null) {
                    }
                    if (value != null) {
                        drawable4 = drawableFromResource3;
                        textWatcherAbstract4 = watcher3;
                        i = value.length();
                    } else {
                        drawable4 = drawableFromResource3;
                        textWatcherAbstract4 = watcher3;
                        i = 0;
                    }
                    if (i >= 100) {
                        j2 = 0;
                        obj = 1;
                    } else {
                        j2 = 0;
                        obj = null;
                    }
                    if (j3 != j2) {
                        if (obj != null) {
                        }
                        str = value3;
                        drawable2 = drawableFromResource2;
                        j = obj != null ? j | 16777216 : j | 8388608;
                    } else {
                        str = value3;
                        drawable2 = drawableFromResource2;
                    }
                    drawable3 = drawable4;
                    textWatcherAbstract = textWatcherAbstract4;
                    charSequence2 = value2;
                    textWatcher = textWatcherAbstract3;
                } else {
                    textWatcherAbstract4 = watcher3;
                    str = value3;
                    drawable2 = drawableFromResource2;
                    drawable3 = drawableFromResource3;
                    textWatcherAbstract = textWatcherAbstract4;
                    i = 0;
                }
            } else {
                textWatcherAbstract3 = watcher4;
                str = value3;
                drawable2 = drawableFromResource2;
                textWatcherAbstract = watcher3;
                i = 0;
                drawable3 = null;
            }
            value = null;
            obj = null;
            charSequence2 = value2;
            textWatcher = textWatcherAbstract3;
        } else {
            i = 0;
            drawable3 = null;
            textWatcher = null;
            charSequence2 = null;
            drawable = null;
            watcher = null;
            drawableFromResource = null;
            textWatcherAbstract = null;
            charSequence = null;
            watcher2 = null;
            value = null;
            obj = null;
            drawable2 = null;
            str = null;
        }
        if ((j & 16777216) != 0) {
            valueOf = String.valueOf(210 - i);
        } else {
            valueOf = null;
        }
        long j7 = j & 328320;
        if (j7 == 0) {
            valueOf = null;
        } else if (obj == null) {
            valueOf = "";
        }
        if ((j & 262273) != 0) {
            textWatcherAbstract2 = textWatcherAbstract;
            corporateTransferBinding.editTextCorporatePurpose.addTextChangedListener(watcher);
        } else {
            textWatcherAbstract2 = textWatcherAbstract;
        }
        if ((j & 393856) != 0) {
            ViewBindingAdapter.setBackground(corporateTransferBinding.editTextCorporatePurpose, drawable3);
        }
        if (j7 != 0) {
            TextViewBindingAdapter.setText(corporateTransferBinding.editTextCorporatePurpose, value);
            TextViewBindingAdapter.setText(corporateTransferBinding.mboundView4, valueOf);
        }
        if ((j & 262272) != 0) {
            corporateTransferBinding.includeGkh.setCorporate(corporateObservable);
        }
        if ((j & 262304) != 0) {
            corporateTransferBinding.inn.addTextChangedListener(textWatcher);
        }
        if ((j & 263300) != 0) {
            ViewBindingAdapter.setBackground(corporateTransferBinding.inn, drawableFromResource);
        }
        if ((j & 264324) != 0) {
            TextViewBindingAdapter.setText(corporateTransferBinding.inn, charSequence2);
        }
        if ((j & 262336) != 0) {
            corporateTransferBinding.kpp.addTextChangedListener(watcher2);
        }
        if ((j & 278672) != 0) {
            ViewBindingAdapter.setBackground(corporateTransferBinding.kpp, drawable);
        }
        if ((j & 295056) != 0) {
            TextViewBindingAdapter.setText(corporateTransferBinding.kpp, charSequence);
        }
        if ((j & 262274) != 0) {
            corporateTransferBinding.recipientName.addTextChangedListener(textWatcherAbstract2);
        }
        if ((j & 266376) != 0) {
            ViewBindingAdapter.setBackground(corporateTransferBinding.recipientName, drawable2);
        }
        if ((j & 270472) != 0) {
            TextViewBindingAdapter.setText(corporateTransferBinding.recipientName, str);
        }
        executeBindingsOn(corporateTransferBinding.includeGkh);
    }

    public static CorporateTransferBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static CorporateTransferBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (CorporateTransferBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.corporate_transfer, viewGroup, z, dataBindingComponent);
    }

    public static CorporateTransferBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static CorporateTransferBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.corporate_transfer, null, false), dataBindingComponent);
    }

    public static CorporateTransferBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static CorporateTransferBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/corporate_transfer_0".equals(view.getTag())) {
            return new CorporateTransferBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
