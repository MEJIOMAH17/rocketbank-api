package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.InverseBindingListener;
import android.databinding.ObservableBoolean;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.databinding.adapters.TextViewBindingAdapter;
import android.databinding.adapters.ViewBindingAdapter;
import android.graphics.drawable.Drawable;
import android.support.v4.media.session.PlaybackStateCompat;
import android.support.v7.widget.CardView;
import android.text.TextWatcher;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import java.util.HashMap;
import ru.rocketbank.core.widgets.RocketEditText;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.fragments.transfers.CorporateObservable;
import ru.rocketbank.r2d2.utils.TextWatcherAbstract;
import ru.rocketbank.r2d2.utils.ViewModelObservable.ViewField;

public class GkhLayputBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final RocketEditText gkhAccountNumber;
    public final RocketEditText gkhDocNumber;
    public final LinearLayout gkhFields;
    public final RocketTextView gkhInfo;
    public final RocketEditText gkhPaymentDocumentId;
    public final RocketTextView gkhPeriod;
    private InverseBindingListener gkhPeriodandroidTextAttrChanged = new C16651();
    public final RocketEditText gkhServiceId;
    public final CardView gkhSwitch;
    public final RocketEditText gkhUnitedFaceNumber;
    private CorporateObservable mCorporate;
    private long mDirtyFlags = -1;
    public final RocketTextView value;

    /* renamed from: ru.rocketbank.r2d2.databinding.GkhLayputBinding$1 */
    class C16651 implements InverseBindingListener {
        C16651() {
        }

        public void onChange() {
            String textString = TextViewBindingAdapter.getTextString(GkhLayputBinding.this.gkhPeriod);
            CorporateObservable access$000 = GkhLayputBinding.this.mCorporate;
            Object obj = null;
            if ((access$000 != null ? 1 : null) != null) {
                ViewField gkh_period = access$000.getGkh_period();
                if (gkh_period != null) {
                    obj = 1;
                }
                if (obj != null) {
                    gkh_period.setValue(textString);
                }
            }
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.gkh_switch, 7);
        sViewsWithIds.put(C0859R.id.value, 8);
        sViewsWithIds.put(C0859R.id.gkh_info, 9);
    }

    public GkhLayputBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 13);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 10, sIncludes, sViewsWithIds);
        this.gkhAccountNumber = (RocketEditText) dataBindingComponent[1];
        this.gkhAccountNumber.setTag(null);
        this.gkhDocNumber = (RocketEditText) dataBindingComponent[6];
        this.gkhDocNumber.setTag(null);
        this.gkhFields = (LinearLayout) dataBindingComponent[0];
        this.gkhFields.setTag(null);
        this.gkhInfo = (RocketTextView) dataBindingComponent[9];
        this.gkhPaymentDocumentId = (RocketEditText) dataBindingComponent[3];
        this.gkhPaymentDocumentId.setTag(null);
        this.gkhPeriod = (RocketTextView) dataBindingComponent[2];
        this.gkhPeriod.setTag(null);
        this.gkhServiceId = (RocketEditText) dataBindingComponent[4];
        this.gkhServiceId.setTag(null);
        this.gkhSwitch = (CardView) dataBindingComponent[7];
        this.gkhUnitedFaceNumber = (RocketEditText) dataBindingComponent[5];
        this.gkhUnitedFaceNumber.setTag(null);
        this.value = (RocketTextView) dataBindingComponent[8];
        setRootTag(view);
        invalidateAll();
    }

    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 33554432;
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

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeCorporateFieldsGkhEls((ViewField) obj, i2);
            case 1:
                return onChangeCorporateGkhEls((ViewField) obj, i2);
            case 2:
                return onChangeCorporateGkhMcServiceId((ViewField) obj, i2);
            case 3:
                return onChangeCorporateGkhPaymentDocumentId((ViewField) obj, i2);
            case 4:
                return onChangeCorporateGkhAccountNumber((ViewField) obj, i2);
            case 5:
                return onChangeCorporateFieldsGkhMcServiceId((ViewField) obj, i2);
            case 6:
                return onChangeCorporateGkhPaymentDocumentNumber((ViewField) obj, i2);
            case 7:
                return onChangeCorporate((CorporateObservable) obj, i2);
            case 8:
                return onChangeCorporateGkhPeriod((ViewField) obj, i2);
            case 9:
                return onChangeCorporateFieldsGkhAccountNumber((ViewField) obj, i2);
            case 10:
                return onChangeCorporateFieldsGkhPaymentDocumentId((ViewField) obj, i2);
            case 11:
                return onChangeCorporateFieldsGkhPaymentDocumentNumber((ViewField) obj, i2);
            case 12:
                return onChangeCorporateGkhVisible((ObservableBoolean) obj, i2);
            default:
                return false;
        }
    }

    private boolean onChangeCorporateFieldsGkhEls(ViewField viewField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    private boolean onChangeCorporateGkhEls(ViewField viewField, int i) {
        if (i == 0) {
            synchronized (this) {
                this.mDirtyFlags |= 2;
            }
            return true;
        } else if (i == 88) {
            synchronized (this) {
                this.mDirtyFlags |= PlaybackStateCompat.ACTION_PLAY_FROM_URI;
            }
            return true;
        } else if (i != 89) {
            return null;
        } else {
            synchronized (this) {
                this.mDirtyFlags |= PlaybackStateCompat.ACTION_PREPARE;
            }
            return true;
        }
    }

    private boolean onChangeCorporateGkhMcServiceId(ViewField viewField, int i) {
        if (i == 0) {
            synchronized (this) {
                this.mDirtyFlags |= 4;
            }
            return true;
        } else if (i == 88) {
            synchronized (this) {
                this.mDirtyFlags |= PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
            }
            return true;
        } else if (i != 89) {
            return null;
        } else {
            synchronized (this) {
                this.mDirtyFlags |= PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH;
            }
            return true;
        }
    }

    private boolean onChangeCorporateGkhPaymentDocumentId(ViewField viewField, int i) {
        if (i == 0) {
            synchronized (this) {
                this.mDirtyFlags |= 8;
            }
            return true;
        } else if (i == 88) {
            synchronized (this) {
                this.mDirtyFlags |= PlaybackStateCompat.ACTION_PREPARE_FROM_URI;
            }
            return true;
        } else if (i != 89) {
            return null;
        } else {
            synchronized (this) {
                this.mDirtyFlags |= PlaybackStateCompat.ACTION_SET_REPEAT_MODE;
            }
            return true;
        }
    }

    private boolean onChangeCorporateGkhAccountNumber(ViewField viewField, int i) {
        if (i == 0) {
            synchronized (this) {
                this.mDirtyFlags |= 16;
            }
            return true;
        } else if (i == 88) {
            synchronized (this) {
                this.mDirtyFlags |= PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED;
            }
            return true;
        } else if (i != 89) {
            return null;
        } else {
            synchronized (this) {
                this.mDirtyFlags |= PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
            }
            return true;
        }
    }

    private boolean onChangeCorporateFieldsGkhMcServiceId(ViewField viewField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 32;
        }
        return true;
    }

    private boolean onChangeCorporateGkhPaymentDocumentNumber(ViewField viewField, int i) {
        if (i == 0) {
            synchronized (this) {
                this.mDirtyFlags |= 64;
            }
            return true;
        } else if (i == 88) {
            synchronized (this) {
                this.mDirtyFlags |= PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE;
            }
            return true;
        } else if (i != 89) {
            return null;
        } else {
            synchronized (this) {
                this.mDirtyFlags |= 4194304;
            }
            return true;
        }
    }

    private boolean onChangeCorporate(CorporateObservable corporateObservable, int i) {
        if (i == 0) {
            synchronized (this) {
                this.mDirtyFlags |= 128;
            }
            return true;
        } else if (i == 34) {
            synchronized (this) {
                this.mDirtyFlags |= 16;
            }
            return true;
        } else if (i == 39) {
            synchronized (this) {
                this.mDirtyFlags |= 256;
            }
            return true;
        } else if (i == 37) {
            synchronized (this) {
                this.mDirtyFlags |= 8;
            }
            return true;
        } else if (i == 36) {
            synchronized (this) {
                this.mDirtyFlags |= 4;
            }
            return true;
        } else if (i == 35) {
            synchronized (this) {
                this.mDirtyFlags |= 2;
            }
            return true;
        } else if (i != 38) {
            return null;
        } else {
            synchronized (this) {
                this.mDirtyFlags |= 64;
            }
            return true;
        }
    }

    private boolean onChangeCorporateGkhPeriod(ViewField viewField, int i) {
        if (i == 0) {
            synchronized (this) {
                this.mDirtyFlags |= 256;
            }
            return true;
        } else if (i == 88) {
            synchronized (this) {
                this.mDirtyFlags |= 8388608;
            }
            return true;
        } else if (i != 89) {
            return null;
        } else {
            synchronized (this) {
                this.mDirtyFlags |= 16777216;
            }
            return true;
        }
    }

    private boolean onChangeCorporateFieldsGkhAccountNumber(ViewField viewField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 512;
        }
        return true;
    }

    private boolean onChangeCorporateFieldsGkhPaymentDocumentId(ViewField viewField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID;
        }
        return true;
    }

    private boolean onChangeCorporateFieldsGkhPaymentDocumentNumber(ViewField viewField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH;
        }
        return true;
    }

    private boolean onChangeCorporateGkhVisible(ObservableBoolean observableBoolean, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM;
        }
        return true;
    }

    protected void executeBindings() {
        String value;
        Drawable drawableFromResource;
        CharSequence value2;
        Drawable drawableFromResource2;
        Drawable drawable;
        CharSequence charSequence;
        String str;
        Drawable drawable2;
        String str2;
        CharSequence charSequence2;
        Drawable drawable3;
        Drawable drawable4;
        TextWatcherAbstract textWatcherAbstract;
        TextWatcherAbstract textWatcherAbstract2;
        TextWatcher textWatcher;
        int i;
        TextWatcher textWatcher2;
        TextWatcher textWatcher3;
        String str3;
        GkhLayputBinding gkhLayputBinding = this;
        synchronized (this) {
            try {
                long j = gkhLayputBinding.mDirtyFlags;
                gkhLayputBinding.mDirtyFlags = 0;
            } catch (Throwable th) {
                while (true) {
                    Throwable th2 = th;
                }
            }
        }
        CorporateObservable corporateObservable = gkhLayputBinding.mCorporate;
        if ((j & 67108863) != 0) {
            String value3;
            long j2;
            Drawable drawableFromResource3;
            String str4;
            long j3;
            boolean valid;
            Drawable drawableFromResource4;
            Drawable drawable5;
            String str5;
            Drawable drawable6;
            String str6;
            Drawable drawable7;
            TextWatcherAbstract watcher;
            TextWatcherAbstract textWatcherAbstract3;
            TextWatcherAbstract textWatcherAbstract4;
            TextWatcherAbstract textWatcherAbstract5;
            TextWatcherAbstract watcher2;
            if ((j & 33579138) != 0) {
                ViewField gkh_els = corporateObservable != null ? corporateObservable.getGkh_els() : null;
                updateRegistration(1, gkh_els);
                value3 = ((j & 33570946) == 0 || gkh_els == null) ? null : gkh_els.getValue();
                j2 = j & 33562754;
                if (j2 != 0) {
                    boolean valid2;
                    if (gkh_els != null) {
                        valid2 = gkh_els.getValid();
                    } else {
                        valid2 = false;
                    }
                    if (j2 != 0) {
                        j = valid2 ? j | 134217728 : j | 67108864;
                    }
                    drawableFromResource3 = valid2 ? getDrawableFromResource(gkhLayputBinding.gkhUnitedFaceNumber, C0859R.drawable.underline_orange) : getDrawableFromResource(gkhLayputBinding.gkhUnitedFaceNumber, C0859R.drawable.underline_gray_dc);
                } else {
                    drawableFromResource3 = null;
                }
            } else {
                drawableFromResource3 = null;
                value3 = null;
            }
            if ((j & 33652868) != 0) {
                ViewField gkh_mc_service_id = corporateObservable != null ? corporateObservable.getGkh_mc_service_id() : null;
                updateRegistration(2, gkh_mc_service_id);
                value = ((j & 33620100) == 0 || gkh_mc_service_id == null) ? null : gkh_mc_service_id.getValue();
                j2 = j & 33587332;
                if (j2 != 0) {
                    boolean valid3;
                    if (gkh_mc_service_id != null) {
                        valid3 = gkh_mc_service_id.getValid();
                    } else {
                        valid3 = false;
                    }
                    if (j2 != 0) {
                        j = valid3 ? j | 2147483648L : j | 1073741824;
                    }
                    drawableFromResource = valid3 ? getDrawableFromResource(gkhLayputBinding.gkhServiceId, C0859R.drawable.underline_orange) : getDrawableFromResource(gkhLayputBinding.gkhServiceId, C0859R.drawable.underline_gray_dc);
                } else {
                    drawableFromResource = null;
                }
            } else {
                drawableFromResource = null;
                value = null;
            }
            if ((j & 33947784) != 0) {
                ViewField gkh_payment_document_id = corporateObservable != null ? corporateObservable.getGkh_payment_document_id() : null;
                updateRegistration(3, gkh_payment_document_id);
                value2 = ((j & 33816712) == 0 || gkh_payment_document_id == null) ? null : gkh_payment_document_id.getValue();
                j2 = j & 33685640;
                if (j2 != 0) {
                    boolean valid4;
                    if (gkh_payment_document_id != null) {
                        valid4 = gkh_payment_document_id.getValid();
                    } else {
                        valid4 = false;
                    }
                    if (j2 != 0) {
                        j = valid4 ? j | 536870912 : j | 268435456;
                    }
                    drawableFromResource2 = valid4 ? getDrawableFromResource(gkhLayputBinding.gkhPaymentDocumentId, C0859R.drawable.underline_orange) : getDrawableFromResource(gkhLayputBinding.gkhPaymentDocumentId, C0859R.drawable.underline_gray_dc);
                } else {
                    drawableFromResource2 = null;
                }
            } else {
                drawableFromResource2 = null;
                value2 = null;
            }
            if ((j & 35127440) != 0) {
                Drawable drawableFromResource5;
                ViewField gkh_account_number = corporateObservable != null ? corporateObservable.getGkh_account_number() : null;
                updateRegistration(4, gkh_account_number);
                long j4 = j & 34078864;
                if (j4 != 0) {
                    boolean valid5;
                    if (gkh_account_number != null) {
                        valid5 = gkh_account_number.getValid();
                    } else {
                        valid5 = false;
                    }
                    j4 = j4 != 0 ? valid5 ? j | 34359738368L : j | 17179869184L : j;
                    drawableFromResource5 = valid5 ? getDrawableFromResource(gkhLayputBinding.gkhAccountNumber, C0859R.drawable.underline_orange) : getDrawableFromResource(gkhLayputBinding.gkhAccountNumber, C0859R.drawable.underline_gray_dc);
                    j = j4;
                } else {
                    drawableFromResource5 = null;
                }
                if ((j & 34603152) == 0 || gkh_account_number == null) {
                    drawable = drawableFromResource5;
                    charSequence = null;
                } else {
                    String value4 = gkh_account_number.getValue();
                    drawable = drawableFromResource5;
                    charSequence = value4;
                }
            } else {
                charSequence = null;
                drawable = null;
            }
            if ((j & 39846080) != 0) {
                long j5;
                ViewField gkh_payment_document_number = corporateObservable != null ? corporateObservable.getGkh_payment_document_number() : null;
                updateRegistration(6, gkh_payment_document_number);
                if ((j & 37748928) == 0 || gkh_payment_document_number == null) {
                    j5 = 35651776;
                    str4 = null;
                } else {
                    str4 = gkh_payment_document_number.getValue();
                    j5 = 35651776;
                }
                j3 = j & j5;
                if (j3 != 0) {
                    View view;
                    int i2;
                    if (gkh_payment_document_number != null) {
                        valid = gkh_payment_document_number.getValid();
                    } else {
                        valid = false;
                    }
                    if (j3 != 0) {
                        j = valid ? j | 137438953472L : j | 68719476736L;
                    }
                    if (valid) {
                        view = gkhLayputBinding.gkhDocNumber;
                        i2 = C0859R.drawable.underline_orange;
                    } else {
                        view = gkhLayputBinding.gkhDocNumber;
                        i2 = C0859R.drawable.underline_gray_dc;
                    }
                    drawableFromResource4 = getDrawableFromResource(view, i2);
                } else {
                    drawableFromResource4 = null;
                }
            } else {
                drawableFromResource4 = null;
                str4 = null;
            }
            j3 = 0;
            if ((j & 58720640) != 0) {
                long j6;
                Drawable drawableFromResource6;
                ViewField gkh_period = corporateObservable != null ? corporateObservable.getGkh_period() : null;
                updateRegistration(8, gkh_period);
                long j7 = j & 41943424;
                if (j7 != 0) {
                    if (gkh_period != null) {
                        valid = gkh_period.getValid();
                    } else {
                        valid = false;
                    }
                    if (j7 != 0) {
                        j = valid ? j | 8589934592L : j | 4294967296L;
                    }
                    if (valid) {
                        j6 = j;
                        drawableFromResource6 = getDrawableFromResource(gkhLayputBinding.gkhPeriod, C0859R.drawable.underline_orange);
                    } else {
                        j6 = j;
                        drawableFromResource6 = getDrawableFromResource(gkhLayputBinding.gkhPeriod, C0859R.drawable.underline_gray_dc);
                    }
                } else {
                    j6 = j;
                    drawableFromResource6 = null;
                }
                j3 = 0;
                if ((j6 & 50332032) == 0 || gkh_period == null) {
                    drawable5 = drawableFromResource6;
                    j = j6;
                    str5 = null;
                } else {
                    drawable5 = drawableFromResource6;
                    str5 = gkh_period.getValue();
                    j = j6;
                }
            } else {
                str5 = null;
                drawable5 = null;
            }
            if ((j & 33558177) != j3) {
                HashMap fields;
                Object obj;
                Object obj2;
                if (corporateObservable != null) {
                    drawable6 = drawableFromResource4;
                    fields = corporateObservable.getFields();
                } else {
                    drawable6 = drawableFromResource4;
                    fields = null;
                }
                if ((j & 33554561) != j3) {
                    Object obj3;
                    if (fields != null) {
                        str6 = str5;
                        obj3 = (ViewField) fields.get("gkh_els");
                        drawable7 = drawableFromResource3;
                    } else {
                        str6 = str5;
                        drawable7 = drawableFromResource3;
                        obj3 = null;
                    }
                    updateRegistration(0, obj3);
                    if (obj3 != null) {
                        watcher = obj3.getWatcher();
                        if ((j & 33554592) == 0) {
                            if (fields == null) {
                                obj = (ViewField) fields.get("gkh_mc_service_id");
                                textWatcherAbstract3 = watcher;
                            } else {
                                textWatcherAbstract3 = watcher;
                                obj = null;
                            }
                            updateRegistration(5, obj);
                            if (obj != null) {
                                watcher = obj.getWatcher();
                                if ((j & 33555072) == 0) {
                                    if (fields == null) {
                                        obj = (ViewField) fields.get("gkh_account_number");
                                        textWatcherAbstract4 = watcher;
                                    } else {
                                        textWatcherAbstract4 = watcher;
                                        obj = null;
                                    }
                                    updateRegistration(9, obj);
                                    if (obj != null) {
                                        watcher = obj.getWatcher();
                                        if ((j & 33555584) == 0) {
                                            if (fields == null) {
                                                obj = (ViewField) fields.get("gkh_payment_document_id");
                                                textWatcherAbstract5 = watcher;
                                            } else {
                                                textWatcherAbstract5 = watcher;
                                                obj = null;
                                            }
                                            updateRegistration(10, obj);
                                            if (obj != null) {
                                                watcher = obj.getWatcher();
                                                if ((j & 33556608) != 0) {
                                                    obj2 = fields == null ? (ViewField) fields.get("gkh_payment_document_number") : null;
                                                    updateRegistration(11, obj2);
                                                    if (obj2 != null) {
                                                        watcher2 = obj2.getWatcher();
                                                    }
                                                }
                                                watcher2 = null;
                                            }
                                        } else {
                                            textWatcherAbstract5 = watcher;
                                        }
                                        watcher = null;
                                        if ((j & 33556608) != 0) {
                                            if (fields == null) {
                                            }
                                            updateRegistration(11, obj2);
                                            if (obj2 != null) {
                                                watcher2 = obj2.getWatcher();
                                            }
                                        }
                                        watcher2 = null;
                                    }
                                } else {
                                    textWatcherAbstract4 = watcher;
                                }
                                watcher = null;
                                if ((j & 33555584) == 0) {
                                    textWatcherAbstract5 = watcher;
                                } else {
                                    if (fields == null) {
                                        textWatcherAbstract5 = watcher;
                                        obj = null;
                                    } else {
                                        obj = (ViewField) fields.get("gkh_payment_document_id");
                                        textWatcherAbstract5 = watcher;
                                    }
                                    updateRegistration(10, obj);
                                    if (obj != null) {
                                        watcher = obj.getWatcher();
                                        if ((j & 33556608) != 0) {
                                            if (fields == null) {
                                            }
                                            updateRegistration(11, obj2);
                                            if (obj2 != null) {
                                                watcher2 = obj2.getWatcher();
                                            }
                                        }
                                        watcher2 = null;
                                    }
                                }
                                watcher = null;
                                if ((j & 33556608) != 0) {
                                    if (fields == null) {
                                    }
                                    updateRegistration(11, obj2);
                                    if (obj2 != null) {
                                        watcher2 = obj2.getWatcher();
                                    }
                                }
                                watcher2 = null;
                            }
                        } else {
                            textWatcherAbstract3 = watcher;
                        }
                        watcher = null;
                        if ((j & 33555072) == 0) {
                            textWatcherAbstract4 = watcher;
                        } else {
                            if (fields == null) {
                                textWatcherAbstract4 = watcher;
                                obj = null;
                            } else {
                                obj = (ViewField) fields.get("gkh_account_number");
                                textWatcherAbstract4 = watcher;
                            }
                            updateRegistration(9, obj);
                            if (obj != null) {
                                watcher = obj.getWatcher();
                                if ((j & 33555584) == 0) {
                                    if (fields == null) {
                                        obj = (ViewField) fields.get("gkh_payment_document_id");
                                        textWatcherAbstract5 = watcher;
                                    } else {
                                        textWatcherAbstract5 = watcher;
                                        obj = null;
                                    }
                                    updateRegistration(10, obj);
                                    if (obj != null) {
                                        watcher = obj.getWatcher();
                                        if ((j & 33556608) != 0) {
                                            if (fields == null) {
                                            }
                                            updateRegistration(11, obj2);
                                            if (obj2 != null) {
                                                watcher2 = obj2.getWatcher();
                                            }
                                        }
                                        watcher2 = null;
                                    }
                                } else {
                                    textWatcherAbstract5 = watcher;
                                }
                                watcher = null;
                                if ((j & 33556608) != 0) {
                                    if (fields == null) {
                                    }
                                    updateRegistration(11, obj2);
                                    if (obj2 != null) {
                                        watcher2 = obj2.getWatcher();
                                    }
                                }
                                watcher2 = null;
                            }
                        }
                        watcher = null;
                        if ((j & 33555584) == 0) {
                            textWatcherAbstract5 = watcher;
                        } else {
                            if (fields == null) {
                                textWatcherAbstract5 = watcher;
                                obj = null;
                            } else {
                                obj = (ViewField) fields.get("gkh_payment_document_id");
                                textWatcherAbstract5 = watcher;
                            }
                            updateRegistration(10, obj);
                            if (obj != null) {
                                watcher = obj.getWatcher();
                                if ((j & 33556608) != 0) {
                                    if (fields == null) {
                                    }
                                    updateRegistration(11, obj2);
                                    if (obj2 != null) {
                                        watcher2 = obj2.getWatcher();
                                    }
                                }
                                watcher2 = null;
                            }
                        }
                        watcher = null;
                        if ((j & 33556608) != 0) {
                            if (fields == null) {
                            }
                            updateRegistration(11, obj2);
                            if (obj2 != null) {
                                watcher2 = obj2.getWatcher();
                            }
                        }
                        watcher2 = null;
                    }
                } else {
                    str6 = str5;
                    drawable7 = drawableFromResource3;
                }
                watcher = null;
                if ((j & 33554592) == 0) {
                    textWatcherAbstract3 = watcher;
                } else {
                    if (fields == null) {
                        textWatcherAbstract3 = watcher;
                        obj = null;
                    } else {
                        obj = (ViewField) fields.get("gkh_mc_service_id");
                        textWatcherAbstract3 = watcher;
                    }
                    updateRegistration(5, obj);
                    if (obj != null) {
                        watcher = obj.getWatcher();
                        if ((j & 33555072) == 0) {
                            if (fields == null) {
                                obj = (ViewField) fields.get("gkh_account_number");
                                textWatcherAbstract4 = watcher;
                            } else {
                                textWatcherAbstract4 = watcher;
                                obj = null;
                            }
                            updateRegistration(9, obj);
                            if (obj != null) {
                                watcher = obj.getWatcher();
                                if ((j & 33555584) == 0) {
                                    if (fields == null) {
                                        obj = (ViewField) fields.get("gkh_payment_document_id");
                                        textWatcherAbstract5 = watcher;
                                    } else {
                                        textWatcherAbstract5 = watcher;
                                        obj = null;
                                    }
                                    updateRegistration(10, obj);
                                    if (obj != null) {
                                        watcher = obj.getWatcher();
                                        if ((j & 33556608) != 0) {
                                            if (fields == null) {
                                            }
                                            updateRegistration(11, obj2);
                                            if (obj2 != null) {
                                                watcher2 = obj2.getWatcher();
                                            }
                                        }
                                        watcher2 = null;
                                    }
                                } else {
                                    textWatcherAbstract5 = watcher;
                                }
                                watcher = null;
                                if ((j & 33556608) != 0) {
                                    if (fields == null) {
                                    }
                                    updateRegistration(11, obj2);
                                    if (obj2 != null) {
                                        watcher2 = obj2.getWatcher();
                                    }
                                }
                                watcher2 = null;
                            }
                        } else {
                            textWatcherAbstract4 = watcher;
                        }
                        watcher = null;
                        if ((j & 33555584) == 0) {
                            textWatcherAbstract5 = watcher;
                        } else {
                            if (fields == null) {
                                textWatcherAbstract5 = watcher;
                                obj = null;
                            } else {
                                obj = (ViewField) fields.get("gkh_payment_document_id");
                                textWatcherAbstract5 = watcher;
                            }
                            updateRegistration(10, obj);
                            if (obj != null) {
                                watcher = obj.getWatcher();
                                if ((j & 33556608) != 0) {
                                    if (fields == null) {
                                    }
                                    updateRegistration(11, obj2);
                                    if (obj2 != null) {
                                        watcher2 = obj2.getWatcher();
                                    }
                                }
                                watcher2 = null;
                            }
                        }
                        watcher = null;
                        if ((j & 33556608) != 0) {
                            if (fields == null) {
                            }
                            updateRegistration(11, obj2);
                            if (obj2 != null) {
                                watcher2 = obj2.getWatcher();
                            }
                        }
                        watcher2 = null;
                    }
                }
                watcher = null;
                if ((j & 33555072) == 0) {
                    textWatcherAbstract4 = watcher;
                } else {
                    if (fields == null) {
                        textWatcherAbstract4 = watcher;
                        obj = null;
                    } else {
                        obj = (ViewField) fields.get("gkh_account_number");
                        textWatcherAbstract4 = watcher;
                    }
                    updateRegistration(9, obj);
                    if (obj != null) {
                        watcher = obj.getWatcher();
                        if ((j & 33555584) == 0) {
                            if (fields == null) {
                                obj = (ViewField) fields.get("gkh_payment_document_id");
                                textWatcherAbstract5 = watcher;
                            } else {
                                textWatcherAbstract5 = watcher;
                                obj = null;
                            }
                            updateRegistration(10, obj);
                            if (obj != null) {
                                watcher = obj.getWatcher();
                                if ((j & 33556608) != 0) {
                                    if (fields == null) {
                                    }
                                    updateRegistration(11, obj2);
                                    if (obj2 != null) {
                                        watcher2 = obj2.getWatcher();
                                    }
                                }
                                watcher2 = null;
                            }
                        } else {
                            textWatcherAbstract5 = watcher;
                        }
                        watcher = null;
                        if ((j & 33556608) != 0) {
                            if (fields == null) {
                            }
                            updateRegistration(11, obj2);
                            if (obj2 != null) {
                                watcher2 = obj2.getWatcher();
                            }
                        }
                        watcher2 = null;
                    }
                }
                watcher = null;
                if ((j & 33555584) == 0) {
                    textWatcherAbstract5 = watcher;
                } else {
                    if (fields == null) {
                        textWatcherAbstract5 = watcher;
                        obj = null;
                    } else {
                        obj = (ViewField) fields.get("gkh_payment_document_id");
                        textWatcherAbstract5 = watcher;
                    }
                    updateRegistration(10, obj);
                    if (obj != null) {
                        watcher = obj.getWatcher();
                        if ((j & 33556608) != 0) {
                            if (fields == null) {
                            }
                            updateRegistration(11, obj2);
                            if (obj2 != null) {
                                watcher2 = obj2.getWatcher();
                            }
                        }
                        watcher2 = null;
                    }
                }
                watcher = null;
                if ((j & 33556608) != 0) {
                    if (fields == null) {
                    }
                    updateRegistration(11, obj2);
                    if (obj2 != null) {
                        watcher2 = obj2.getWatcher();
                    }
                }
                watcher2 = null;
            } else {
                drawable6 = drawableFromResource4;
                str6 = str5;
                drawable7 = drawableFromResource3;
                watcher2 = null;
                watcher = null;
                textWatcherAbstract3 = null;
                textWatcherAbstract4 = null;
                textWatcherAbstract5 = null;
            }
            long j8 = j & 33558656;
            if (j8 != 0) {
                boolean z;
                Object gkhVisible = corporateObservable != null ? corporateObservable.getGkhVisible() : null;
                updateRegistration(12, gkhVisible);
                if (gkhVisible != null) {
                    z = gkhVisible.get();
                } else {
                    z = false;
                }
                if (j8 != 0) {
                    j = z ? j | 549755813888L : j | 274877906944L;
                }
                int i3 = z ? 0 : 8;
                str = value3;
                drawable2 = drawableFromResource;
                str2 = value;
                charSequence2 = str4;
                drawable3 = drawable6;
                value = str6;
                drawable4 = drawable7;
                textWatcherAbstract = textWatcherAbstract3;
                textWatcherAbstract2 = textWatcherAbstract4;
                textWatcher = watcher;
                drawableFromResource = drawable5;
                i = i3;
            } else {
                str = value3;
                drawable2 = drawableFromResource;
                str2 = value;
                charSequence2 = str4;
                drawable3 = drawable6;
                value = str6;
                drawable4 = drawable7;
                textWatcherAbstract = textWatcherAbstract3;
                textWatcherAbstract2 = textWatcherAbstract4;
                textWatcher = watcher;
                drawableFromResource = drawable5;
                i = 0;
            }
            textWatcher2 = watcher2;
            textWatcher3 = textWatcherAbstract5;
        } else {
            textWatcher3 = null;
            textWatcher2 = null;
            drawable3 = null;
            charSequence2 = null;
            i = 0;
            charSequence = null;
            textWatcher = null;
            drawableFromResource = null;
            value = null;
            drawableFromResource2 = null;
            value2 = null;
            drawable = null;
            textWatcherAbstract2 = null;
            drawable2 = null;
            str2 = null;
            textWatcherAbstract = null;
            drawable4 = null;
            str = null;
        }
        if ((j & 33555072) != 0) {
            str3 = value;
            gkhLayputBinding.gkhAccountNumber.addTextChangedListener(textWatcher3);
        } else {
            str3 = value;
        }
        if ((j & 34078864) != 0) {
            ViewBindingAdapter.setBackground(gkhLayputBinding.gkhAccountNumber, drawable);
        }
        if ((j & 34603152) != 0) {
            TextViewBindingAdapter.setText(gkhLayputBinding.gkhAccountNumber, charSequence);
        }
        if ((j & 33556608) != 0) {
            gkhLayputBinding.gkhDocNumber.addTextChangedListener(textWatcher2);
        }
        if ((j & 35651776) != 0) {
            ViewBindingAdapter.setBackground(gkhLayputBinding.gkhDocNumber, drawable3);
        }
        if ((j & 37748928) != 0) {
            TextViewBindingAdapter.setText(gkhLayputBinding.gkhDocNumber, charSequence2);
        }
        if ((j & 33558656) != 0) {
            gkhLayputBinding.gkhFields.setVisibility(i);
        }
        if ((j & 33555584) != 0) {
            gkhLayputBinding.gkhPaymentDocumentId.addTextChangedListener(textWatcher);
        }
        if ((j & 33685640) != 0) {
            ViewBindingAdapter.setBackground(gkhLayputBinding.gkhPaymentDocumentId, drawableFromResource2);
        }
        if ((j & 33816712) != 0) {
            TextViewBindingAdapter.setText(gkhLayputBinding.gkhPaymentDocumentId, value2);
        }
        if ((j & 41943424) != 0) {
            ViewBindingAdapter.setBackground(gkhLayputBinding.gkhPeriod, drawableFromResource);
        }
        if ((j & 50332032) != 0) {
            TextViewBindingAdapter.setText(gkhLayputBinding.gkhPeriod, str3);
        }
        if ((j & 33554432) != 0) {
            TextViewBindingAdapter.setTextWatcher(gkhLayputBinding.gkhPeriod, null, null, null, gkhLayputBinding.gkhPeriodandroidTextAttrChanged);
        }
        if ((j & 33554592) != 0) {
            gkhLayputBinding.gkhServiceId.addTextChangedListener(textWatcherAbstract2);
        }
        if ((j & 33587332) != 0) {
            ViewBindingAdapter.setBackground(gkhLayputBinding.gkhServiceId, drawable2);
        }
        if ((j & 33620100) != 0) {
            TextViewBindingAdapter.setText(gkhLayputBinding.gkhServiceId, str2);
        }
        if ((j & 33554561) != 0) {
            gkhLayputBinding.gkhUnitedFaceNumber.addTextChangedListener(textWatcherAbstract);
        }
        if ((j & 33562754) != 0) {
            ViewBindingAdapter.setBackground(gkhLayputBinding.gkhUnitedFaceNumber, drawable4);
        }
        if ((j & 33570946) != 0) {
            TextViewBindingAdapter.setText(gkhLayputBinding.gkhUnitedFaceNumber, str);
        }
    }

    public static GkhLayputBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static GkhLayputBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (GkhLayputBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.gkh_layput, viewGroup, z, dataBindingComponent);
    }

    public static GkhLayputBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static GkhLayputBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.gkh_layput, null, false), dataBindingComponent);
    }

    public static GkhLayputBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static GkhLayputBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/gkh_layput_0".equals(view.getTag())) {
            return new GkhLayputBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
