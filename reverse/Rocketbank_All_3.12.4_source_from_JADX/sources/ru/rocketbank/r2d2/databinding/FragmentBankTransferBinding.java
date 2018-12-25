package ru.rocketbank.r2d2.databinding;

import android.arch.lifecycle.LifecycleOwner;
import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.Observable;
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
import android.widget.ScrollView;
import java.util.HashMap;
import ru.rocketbank.core.widgets.RocketEditText;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.fragments.transfers.BudgetObservable;
import ru.rocketbank.r2d2.fragments.transfers.CorporateObservable;
import ru.rocketbank.r2d2.fragments.transfers.IndividualObservable;
import ru.rocketbank.r2d2.fragments.transfers.TransferObservable;
import ru.rocketbank.r2d2.utils.TextWatcherAbstract;
import ru.rocketbank.r2d2.utils.ViewModelObservable.ViewField;

public class FragmentBankTransferBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes;
    private static final SparseIntArray sViewsWithIds;
    public final ProgressBar cardNumberProgressBar;
    public final RocketEditText corrNumber;
    public final RocketEditText editTextBik;
    public final RocketEditText editTextCardNumber;
    private BudgetObservable mBudget;
    private CorporateObservable mCorporate;
    private long mDirtyFlags = -1;
    private IndividualObservable mIndividual;
    private TransferObservable mTransfer;
    private final ScrollView mboundView0;
    private final LinearLayout mboundView1;
    private final BankInfoBinding mboundView11;
    private final BudgetTransferBinding mboundView12;
    private final IndividualTransferBinding mboundView13;
    private final CorporateTransferBinding mboundView14;
    private final RocketTextView mboundView4;
    public final RocketTextView subTitle;
    public final RocketTextView textViewKindError;
    public final RocketTextView title;

    static {
        IncludedLayouts includedLayouts = new IncludedLayouts(14);
        sIncludes = includedLayouts;
        includedLayouts.setIncludes(1, new String[]{"bank_info", "budget_transfer", "individual_transfer", "corporate_transfer"}, new int[]{6, 7, 8, 9}, new int[]{C0859R.layout.bank_info, C0859R.layout.budget_transfer, C0859R.layout.individual_transfer, C0859R.layout.corporate_transfer});
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.cardNumberProgressBar, 10);
        sViewsWithIds.put(C0859R.id.textViewKindError, 11);
        sViewsWithIds.put(C0859R.id.title, 12);
        sViewsWithIds.put(C0859R.id.subTitle, 13);
    }

    public FragmentBankTransferBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 12);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 14, sIncludes, sViewsWithIds);
        this.cardNumberProgressBar = (ProgressBar) dataBindingComponent[10];
        this.corrNumber = (RocketEditText) dataBindingComponent[3];
        this.corrNumber.setTag(null);
        this.editTextBik = (RocketEditText) dataBindingComponent[2];
        this.editTextBik.setTag(null);
        this.editTextCardNumber = (RocketEditText) dataBindingComponent[5];
        this.editTextCardNumber.setTag(null);
        this.mboundView0 = (ScrollView) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.mboundView1 = (LinearLayout) dataBindingComponent[1];
        this.mboundView1.setTag(null);
        this.mboundView11 = (BankInfoBinding) dataBindingComponent[6];
        setContainedBinding(this.mboundView11);
        this.mboundView12 = (BudgetTransferBinding) dataBindingComponent[7];
        setContainedBinding(this.mboundView12);
        this.mboundView13 = (IndividualTransferBinding) dataBindingComponent[8];
        setContainedBinding(this.mboundView13);
        this.mboundView14 = (CorporateTransferBinding) dataBindingComponent[9];
        setContainedBinding(this.mboundView14);
        this.mboundView4 = (RocketTextView) dataBindingComponent[4];
        this.mboundView4.setTag(null);
        this.subTitle = (RocketTextView) dataBindingComponent[13];
        this.textViewKindError = (RocketTextView) dataBindingComponent[11];
        this.title = (RocketTextView) dataBindingComponent[12];
        setRootTag(view);
        invalidateAll();
    }

    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED;
        }
        this.mboundView11.invalidateAll();
        this.mboundView12.invalidateAll();
        this.mboundView13.invalidateAll();
        this.mboundView14.invalidateAll();
        requestRebind();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean hasPendingBindings() {
        /*
        r5 = this;
        monitor-enter(r5);
        r0 = r5.mDirtyFlags;	 Catch:{ all -> 0x0033 }
        r2 = 0;
        r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1));
        r0 = 1;
        if (r4 == 0) goto L_0x000c;
    L_0x000a:
        monitor-exit(r5);	 Catch:{ all -> 0x0033 }
        return r0;
    L_0x000c:
        monitor-exit(r5);	 Catch:{ all -> 0x0033 }
        r1 = r5.mboundView11;
        r1 = r1.hasPendingBindings();
        if (r1 == 0) goto L_0x0016;
    L_0x0015:
        return r0;
    L_0x0016:
        r1 = r5.mboundView12;
        r1 = r1.hasPendingBindings();
        if (r1 == 0) goto L_0x001f;
    L_0x001e:
        return r0;
    L_0x001f:
        r1 = r5.mboundView13;
        r1 = r1.hasPendingBindings();
        if (r1 == 0) goto L_0x0028;
    L_0x0027:
        return r0;
    L_0x0028:
        r1 = r5.mboundView14;
        r1 = r1.hasPendingBindings();
        if (r1 == 0) goto L_0x0031;
    L_0x0030:
        return r0;
    L_0x0031:
        r0 = 0;
        return r0;
    L_0x0033:
        r0 = move-exception;
        monitor-exit(r5);	 Catch:{ all -> 0x0033 }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.databinding.FragmentBankTransferBinding.hasPendingBindings():boolean");
    }

    public boolean setVariable(int i, Object obj) {
        if (86 == i) {
            setTransfer((TransferObservable) obj);
        } else if (19 == i) {
            setCorporate((CorporateObservable) obj);
        } else if (45 == i) {
            setIndividual((IndividualObservable) obj);
        } else if (10 != i) {
            return false;
        } else {
            setBudget((BudgetObservable) obj);
        }
        return true;
    }

    public void setTransfer(TransferObservable transferObservable) {
        updateRegistration(1, transferObservable);
        this.mTransfer = transferObservable;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(86);
        super.requestRebind();
    }

    public TransferObservable getTransfer() {
        return this.mTransfer;
    }

    public void setCorporate(CorporateObservable corporateObservable) {
        updateRegistration(3, corporateObservable);
        this.mCorporate = corporateObservable;
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        notifyPropertyChanged(19);
        super.requestRebind();
    }

    public CorporateObservable getCorporate() {
        return this.mCorporate;
    }

    public void setIndividual(IndividualObservable individualObservable) {
        updateRegistration(4, individualObservable);
        this.mIndividual = individualObservable;
        synchronized (this) {
            this.mDirtyFlags |= 16;
        }
        notifyPropertyChanged(45);
        super.requestRebind();
    }

    public IndividualObservable getIndividual() {
        return this.mIndividual;
    }

    public void setBudget(BudgetObservable budgetObservable) {
        updateRegistration(11, budgetObservable);
        this.mBudget = budgetObservable;
        synchronized (this) {
            this.mDirtyFlags |= PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH;
        }
        notifyPropertyChanged(10);
        super.requestRebind();
    }

    public BudgetObservable getBudget() {
        return this.mBudget;
    }

    public void setLifecycleOwner(LifecycleOwner lifecycleOwner) {
        super.setLifecycleOwner(lifecycleOwner);
        this.mboundView11.setLifecycleOwner(lifecycleOwner);
        this.mboundView12.setLifecycleOwner(lifecycleOwner);
        this.mboundView13.setLifecycleOwner(lifecycleOwner);
        this.mboundView14.setLifecycleOwner(lifecycleOwner);
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeTransferCorrNumber((ViewField) obj, i2);
            case 1:
                return onChangeTransfer((TransferObservable) obj, i2);
            case 2:
                return onChangeTransferCorrBank((ViewField) obj, i2);
            case 3:
                return onChangeCorporate((CorporateObservable) obj, i2);
            case 4:
                return onChangeIndividual((IndividualObservable) obj, i2);
            case 5:
                return onChangeTransferBankName((ViewField) obj, i2);
            case 6:
                return onChangeTransferBik((ViewField) obj, i2);
            case 7:
                return onChangeTransferFieldsCardNumber((ViewField) obj, i2);
            case 8:
                return onChangeTransferFieldsCorrNumber((ViewField) obj, i2);
            case 9:
                return onChangeTransferCardNumber((ViewField) obj, i2);
            case 10:
                return onChangeTransferFieldsBik((ViewField) obj, i2);
            case 11:
                return onChangeBudget((BudgetObservable) obj, i2);
            default:
                return false;
        }
    }

    private boolean onChangeTransferCorrNumber(ViewField viewField, int i) {
        if (i == 0) {
            synchronized (this) {
                this.mDirtyFlags |= 1;
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

    private boolean onChangeTransfer(TransferObservable transferObservable, int i) {
        if (i == 0) {
            synchronized (this) {
                this.mDirtyFlags |= 2;
            }
            return true;
        } else if (i == 9) {
            synchronized (this) {
                this.mDirtyFlags |= 64;
            }
            return true;
        } else if (i == 8) {
            synchronized (this) {
                this.mDirtyFlags |= 32;
            }
            return true;
        } else if (i == 21) {
            synchronized (this) {
                this.mDirtyFlags |= 4;
            }
            return true;
        } else if (i == 22) {
            synchronized (this) {
                this.mDirtyFlags |= 1;
            }
            return true;
        } else if (i == 13) {
            synchronized (this) {
                this.mDirtyFlags |= PlaybackStateCompat.ACTION_PREPARE;
            }
            return true;
        } else if (i != 12) {
            return null;
        } else {
            synchronized (this) {
                this.mDirtyFlags |= 512;
            }
            return true;
        }
    }

    private boolean onChangeTransferCorrBank(ViewField viewField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        return true;
    }

    private boolean onChangeCorporate(CorporateObservable corporateObservable, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        return true;
    }

    private boolean onChangeIndividual(IndividualObservable individualObservable, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 16;
        }
        return true;
    }

    private boolean onChangeTransferBankName(ViewField viewField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 32;
        }
        return true;
    }

    private boolean onChangeTransferBik(ViewField viewField, int i) {
        if (i == 0) {
            synchronized (this) {
                this.mDirtyFlags |= 64;
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

    private boolean onChangeTransferFieldsCardNumber(ViewField viewField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 128;
        }
        return true;
    }

    private boolean onChangeTransferFieldsCorrNumber(ViewField viewField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 256;
        }
        return true;
    }

    private boolean onChangeTransferCardNumber(ViewField viewField, int i) {
        if (i == 0) {
            synchronized (this) {
                this.mDirtyFlags |= 512;
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

    private boolean onChangeTransferFieldsBik(ViewField viewField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID;
        }
        return true;
    }

    private boolean onChangeBudget(BudgetObservable budgetObservable, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH;
        }
        return true;
    }

    protected void executeBindings() {
        long j;
        Drawable drawableFromResource;
        CharSequence value;
        TextWatcher watcher;
        TextWatcher watcher2;
        TextWatcher textWatcher;
        CharSequence charSequence;
        Drawable drawableFromResource2;
        Drawable drawable;
        CorporateObservable corporateObservable;
        IndividualObservable individualObservable;
        BudgetObservable budgetObservable;
        Observable observable;
        int i;
        ViewField viewField;
        CharSequence value2;
        Observable observable2;
        FragmentBankTransferBinding fragmentBankTransferBinding = this;
        synchronized (this) {
            try {
                long j2 = fragmentBankTransferBinding.mDirtyFlags;
                fragmentBankTransferBinding.mDirtyFlags = 0;
            } catch (Throwable th) {
                while (true) {
                    Throwable th2 = th;
                }
            }
        }
        TransferObservable transferObservable = fragmentBankTransferBinding.mTransfer;
        CorporateObservable corporateObservable2 = fragmentBankTransferBinding.mCorporate;
        IndividualObservable individualObservable2 = fragmentBankTransferBinding.mIndividual;
        BudgetObservable budgetObservable2 = fragmentBankTransferBinding.mBudget;
        if ((j2 & 1046503) != 0) {
            long j3;
            Observable corr_bank;
            long j4;
            Observable bank_name;
            boolean card_number_visible;
            int i2;
            ViewField bik;
            Observable observable3;
            String value3;
            long j5;
            View view;
            int i3;
            ViewField card_number;
            Drawable drawable2;
            boolean valid;
            if ((j2 & 536579) != 0) {
                ViewField corr_number = transferObservable != null ? transferObservable.getCorr_number() : null;
                updateRegistration(0, corr_number);
                j = j2 & 528387;
                if (j != 0) {
                    boolean valid2;
                    if (corr_number != null) {
                        valid2 = corr_number.getValid();
                    } else {
                        valid2 = false;
                    }
                    j3 = j != 0 ? valid2 ? j2 | 33554432 : j2 | 16777216 : j2;
                    drawableFromResource = valid2 ? getDrawableFromResource(fragmentBankTransferBinding.corrNumber, C0859R.drawable.underline_orange) : getDrawableFromResource(fragmentBankTransferBinding.corrNumber, C0859R.drawable.underline_gray_dc);
                    j2 = j3;
                } else {
                    drawableFromResource = null;
                }
                value = ((j2 & 532483) == 0 || corr_number == null) ? null : corr_number.getValue();
            } else {
                value = null;
                drawableFromResource = null;
            }
            if ((j2 & 525698) != 0) {
                TextWatcherAbstract watcher3;
                Object obj;
                Object obj2;
                HashMap fields = transferObservable != null ? transferObservable.getFields() : null;
                if ((j2 & 524418) != 0) {
                    Object obj3 = fields != null ? (ViewField) fields.get("card_number") : null;
                    updateRegistration(7, obj3);
                    if (obj3 != null) {
                        watcher3 = obj3.getWatcher();
                        if ((j2 & 524546) != 0) {
                            obj = fields == null ? (ViewField) fields.get("corr_number") : null;
                            updateRegistration(8, obj);
                            if (obj != null) {
                                watcher = obj.getWatcher();
                                if ((j2 & 525314) != 0) {
                                    obj2 = fields == null ? (ViewField) fields.get("bik") : null;
                                    updateRegistration(10, obj2);
                                    if (obj2 != null) {
                                        watcher2 = obj2.getWatcher();
                                        textWatcher = watcher3;
                                    }
                                }
                                textWatcher = watcher3;
                                watcher2 = null;
                            }
                        }
                        watcher = null;
                        if ((j2 & 525314) != 0) {
                            if (fields == null) {
                            }
                            updateRegistration(10, obj2);
                            if (obj2 != null) {
                                watcher2 = obj2.getWatcher();
                                textWatcher = watcher3;
                            }
                        }
                        textWatcher = watcher3;
                        watcher2 = null;
                    }
                }
                watcher3 = null;
                if ((j2 & 524546) != 0) {
                    if (fields == null) {
                    }
                    updateRegistration(8, obj);
                    if (obj != null) {
                        watcher = obj.getWatcher();
                        if ((j2 & 525314) != 0) {
                            if (fields == null) {
                            }
                            updateRegistration(10, obj2);
                            if (obj2 != null) {
                                watcher2 = obj2.getWatcher();
                                textWatcher = watcher3;
                            }
                        }
                        textWatcher = watcher3;
                        watcher2 = null;
                    }
                }
                watcher = null;
                if ((j2 & 525314) != 0) {
                    if (fields == null) {
                    }
                    updateRegistration(10, obj2);
                    if (obj2 != null) {
                        watcher2 = obj2.getWatcher();
                        textWatcher = watcher3;
                    }
                }
                textWatcher = watcher3;
                watcher2 = null;
            } else {
                watcher2 = null;
                textWatcher = null;
                watcher = null;
            }
            if ((j2 & 524294) != 0) {
                corr_bank = transferObservable != null ? transferObservable.getCorr_bank() : null;
                updateRegistration(2, corr_bank);
                j4 = 524322;
            } else {
                j4 = 524322;
                corr_bank = null;
            }
            if ((j2 & j4) != 0) {
                bank_name = transferObservable != null ? transferObservable.getBank_name() : null;
                updateRegistration(5, bank_name);
            } else {
                bank_name = null;
            }
            j3 = j2 & 540674;
            if (j3 != 0) {
                if (transferObservable != null) {
                    card_number_visible = transferObservable.getCard_number_visible();
                } else {
                    card_number_visible = false;
                }
                if (j3 != 0) {
                    j2 = card_number_visible ? j2 | 8388608 : j2 | 4194304;
                }
                if (!card_number_visible) {
                    i2 = 8;
                    if ((j2 & 622658) == 0) {
                        if (transferObservable == null) {
                            bik = transferObservable.getBik();
                            observable3 = bank_name;
                        } else {
                            observable3 = bank_name;
                            bik = null;
                        }
                        updateRegistration(6, bik);
                        value3 = ((j2 & 589890) != 0 || bik == null) ? null : bik.getValue();
                        j5 = j2 & 557122;
                        if (j5 == 0) {
                            if (bik == null) {
                                card_number_visible = bik.getValid();
                            } else {
                                card_number_visible = false;
                            }
                            j3 = j5 == 0 ? card_number_visible ? j2 | PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE : j2 | PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED : j2;
                            if (card_number_visible) {
                                view = fragmentBankTransferBinding.editTextBik;
                                i3 = C0859R.drawable.underline_gray_dc;
                            } else {
                                view = fragmentBankTransferBinding.editTextBik;
                                i3 = C0859R.drawable.underline_orange;
                            }
                            charSequence = value3;
                            drawableFromResource2 = getDrawableFromResource(view, i3);
                            j2 = j3;
                        } else {
                            charSequence = value3;
                            drawableFromResource2 = null;
                        }
                    } else {
                        observable3 = bank_name;
                        drawableFromResource2 = null;
                        charSequence = null;
                    }
                    j = 0;
                    if ((j2 & 918018) == 0) {
                        if (transferObservable == null) {
                            card_number = transferObservable.getCard_number();
                            drawable2 = drawableFromResource2;
                        } else {
                            drawable2 = drawableFromResource2;
                            card_number = null;
                        }
                        updateRegistration(9, card_number);
                        j5 = j2 & 655874;
                        if (j5 == 0) {
                            if (card_number == null) {
                                valid = card_number.getValid();
                            } else {
                                valid = false;
                            }
                            j3 = j5 == 0 ? valid ? j2 | 134217728 : j2 | 67108864 : j2;
                            if (valid) {
                                view = fragmentBankTransferBinding.editTextCardNumber;
                                i3 = C0859R.drawable.underline_gray_dc;
                            } else {
                                view = fragmentBankTransferBinding.editTextCardNumber;
                                i3 = C0859R.drawable.underline_orange;
                            }
                            drawableFromResource2 = getDrawableFromResource(view, i3);
                            j2 = j3;
                        } else {
                            drawableFromResource2 = null;
                        }
                        j = 0;
                        if ((j2 & 786946) != 0 || card_number == null) {
                            drawable = drawableFromResource2;
                            corporateObservable = corporateObservable2;
                            individualObservable = individualObservable2;
                            budgetObservable = budgetObservable2;
                            observable = corr_bank;
                            i = i2;
                            viewField = observable3;
                            drawableFromResource2 = drawable2;
                        } else {
                            corporateObservable = corporateObservable2;
                            individualObservable = individualObservable2;
                            budgetObservable = budgetObservable2;
                            observable = corr_bank;
                            i = i2;
                            viewField = observable3;
                            value2 = card_number.getValue();
                            drawable = drawableFromResource2;
                            drawableFromResource2 = drawable2;
                        }
                    } else {
                        drawable2 = drawableFromResource2;
                        corporateObservable = corporateObservable2;
                        individualObservable = individualObservable2;
                        budgetObservable = budgetObservable2;
                        observable = corr_bank;
                        i = i2;
                        viewField = observable3;
                        drawable = null;
                    }
                    value2 = null;
                }
            }
            i2 = 0;
            if ((j2 & 622658) == 0) {
                observable3 = bank_name;
                drawableFromResource2 = null;
                charSequence = null;
            } else {
                if (transferObservable == null) {
                    observable3 = bank_name;
                    bik = null;
                } else {
                    bik = transferObservable.getBik();
                    observable3 = bank_name;
                }
                updateRegistration(6, bik);
                if ((j2 & 589890) != 0) {
                }
                j5 = j2 & 557122;
                if (j5 == 0) {
                    charSequence = value3;
                    drawableFromResource2 = null;
                } else {
                    if (bik == null) {
                        card_number_visible = false;
                    } else {
                        card_number_visible = bik.getValid();
                    }
                    if (j5 == 0) {
                    }
                    if (card_number_visible) {
                        view = fragmentBankTransferBinding.editTextBik;
                        i3 = C0859R.drawable.underline_gray_dc;
                    } else {
                        view = fragmentBankTransferBinding.editTextBik;
                        i3 = C0859R.drawable.underline_orange;
                    }
                    charSequence = value3;
                    drawableFromResource2 = getDrawableFromResource(view, i3);
                    j2 = j3;
                }
            }
            j = 0;
            if ((j2 & 918018) == 0) {
                drawable2 = drawableFromResource2;
                corporateObservable = corporateObservable2;
                individualObservable = individualObservable2;
                budgetObservable = budgetObservable2;
                observable = corr_bank;
                i = i2;
                viewField = observable3;
                drawable = null;
            } else {
                if (transferObservable == null) {
                    drawable2 = drawableFromResource2;
                    card_number = null;
                } else {
                    card_number = transferObservable.getCard_number();
                    drawable2 = drawableFromResource2;
                }
                updateRegistration(9, card_number);
                j5 = j2 & 655874;
                if (j5 == 0) {
                    drawableFromResource2 = null;
                } else {
                    if (card_number == null) {
                        valid = false;
                    } else {
                        valid = card_number.getValid();
                    }
                    if (j5 == 0) {
                    }
                    if (valid) {
                        view = fragmentBankTransferBinding.editTextCardNumber;
                        i3 = C0859R.drawable.underline_gray_dc;
                    } else {
                        view = fragmentBankTransferBinding.editTextCardNumber;
                        i3 = C0859R.drawable.underline_orange;
                    }
                    drawableFromResource2 = getDrawableFromResource(view, i3);
                    j2 = j3;
                }
                j = 0;
                if ((j2 & 786946) != 0) {
                }
                drawable = drawableFromResource2;
                corporateObservable = corporateObservable2;
                individualObservable = individualObservable2;
                budgetObservable = budgetObservable2;
                observable = corr_bank;
                i = i2;
                viewField = observable3;
                drawableFromResource2 = drawable2;
            }
            value2 = null;
        } else {
            j = 0;
            corporateObservable = corporateObservable2;
            individualObservable = individualObservable2;
            budgetObservable = budgetObservable2;
            drawableFromResource2 = null;
            charSequence = null;
            drawable = null;
            i = 0;
            viewField = null;
            observable = null;
            value = null;
            watcher2 = null;
            textWatcher = null;
            value2 = null;
            drawableFromResource = null;
            watcher = null;
        }
        if ((j2 & 524546) != j) {
            observable2 = observable;
            fragmentBankTransferBinding.corrNumber.addTextChangedListener(watcher);
        } else {
            observable2 = observable;
        }
        if ((j2 & 528387) != j) {
            ViewBindingAdapter.setBackground(fragmentBankTransferBinding.corrNumber, drawableFromResource);
        }
        if ((j2 & 532483) != j) {
            TextViewBindingAdapter.setText(fragmentBankTransferBinding.corrNumber, value);
        }
        if ((j2 & 525314) != j) {
            fragmentBankTransferBinding.editTextBik.addTextChangedListener(watcher2);
        }
        if ((j2 & 557122) != j) {
            ViewBindingAdapter.setBackground(fragmentBankTransferBinding.editTextBik, drawableFromResource2);
        }
        if ((j2 & 589890) != j) {
            TextViewBindingAdapter.setText(fragmentBankTransferBinding.editTextBik, charSequence);
        }
        if ((j2 & 524418) != j) {
            fragmentBankTransferBinding.editTextCardNumber.addTextChangedListener(textWatcher);
        }
        if ((j2 & 655874) != j) {
            ViewBindingAdapter.setBackground(fragmentBankTransferBinding.editTextCardNumber, drawable);
        }
        if ((j2 & 786946) != j) {
            TextViewBindingAdapter.setText(fragmentBankTransferBinding.editTextCardNumber, value2);
        }
        if ((j2 & 540674) != j) {
            fragmentBankTransferBinding.editTextCardNumber.setVisibility(i);
            fragmentBankTransferBinding.mboundView4.setVisibility(i);
        }
        if ((j2 & 524322) != j) {
            fragmentBankTransferBinding.mboundView11.setBankName(viewField);
        }
        if ((j2 & 524294) != j) {
            fragmentBankTransferBinding.mboundView11.setCorrBank(observable2);
        }
        if ((j2 & 526336) != j) {
            fragmentBankTransferBinding.mboundView12.setBudget(budgetObservable);
        }
        if ((j2 & 524304) != j) {
            fragmentBankTransferBinding.mboundView13.setIndividual(individualObservable);
        }
        if ((j2 & 524296) != j) {
            fragmentBankTransferBinding.mboundView14.setCorporate(corporateObservable);
        }
        executeBindingsOn(fragmentBankTransferBinding.mboundView11);
        executeBindingsOn(fragmentBankTransferBinding.mboundView12);
        executeBindingsOn(fragmentBankTransferBinding.mboundView13);
        executeBindingsOn(fragmentBankTransferBinding.mboundView14);
    }

    public static FragmentBankTransferBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentBankTransferBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (FragmentBankTransferBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.fragment_bank_transfer, viewGroup, z, dataBindingComponent);
    }

    public static FragmentBankTransferBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentBankTransferBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.fragment_bank_transfer, null, false), dataBindingComponent);
    }

    public static FragmentBankTransferBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentBankTransferBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/fragment_bank_transfer_0".equals(view.getTag())) {
            return new FragmentBankTransferBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
