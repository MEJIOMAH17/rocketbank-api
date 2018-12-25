package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.databinding.adapters.TextViewBindingAdapter;
import android.support.v7.widget.Toolbar;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import ru.rocketbank.core.model.charge.ChargeModel;
import ru.rocketbank.core.model.charge.ChargeModel.Requisites;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;

public class ActivityTaxChargeBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final RocketTextView date;
    public final RocketTextView description;
    private ChargeModel mChargeModel;
    private long mDirtyFlags = -1;
    private final LinearLayout mboundView0;
    private final RocketTextView mboundView10;
    private final RocketTextView mboundView11;
    private final RocketTextView mboundView12;
    private final RocketTextView mboundView13;
    private final RocketTextView mboundView14;
    private final RocketTextView mboundView15;
    private final RocketTextView mboundView16;
    private final RocketTextView mboundView17;
    private final RocketTextView mboundView18;
    private final RocketTextView mboundView4;
    private final RocketTextView mboundView5;
    private final RocketTextView mboundView6;
    private final RocketTextView mboundView7;
    private final RocketTextView mboundView8;
    private final RocketTextView mboundView9;
    public final RocketTextView textViewSum;
    public final Toolbar toolbar;

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.textViewSum, 19);
    }

    public ActivityTaxChargeBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 0);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 20, sIncludes, sViewsWithIds);
        this.date = (RocketTextView) dataBindingComponent[2];
        this.date.setTag(null);
        this.description = (RocketTextView) dataBindingComponent[3];
        this.description.setTag(null);
        this.mboundView0 = (LinearLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.mboundView10 = (RocketTextView) dataBindingComponent[10];
        this.mboundView10.setTag(null);
        this.mboundView11 = (RocketTextView) dataBindingComponent[11];
        this.mboundView11.setTag(null);
        this.mboundView12 = (RocketTextView) dataBindingComponent[12];
        this.mboundView12.setTag(null);
        this.mboundView13 = (RocketTextView) dataBindingComponent[13];
        this.mboundView13.setTag(null);
        this.mboundView14 = (RocketTextView) dataBindingComponent[14];
        this.mboundView14.setTag(null);
        this.mboundView15 = (RocketTextView) dataBindingComponent[15];
        this.mboundView15.setTag(null);
        this.mboundView16 = (RocketTextView) dataBindingComponent[16];
        this.mboundView16.setTag(null);
        this.mboundView17 = (RocketTextView) dataBindingComponent[17];
        this.mboundView17.setTag(null);
        this.mboundView18 = (RocketTextView) dataBindingComponent[18];
        this.mboundView18.setTag(null);
        this.mboundView4 = (RocketTextView) dataBindingComponent[4];
        this.mboundView4.setTag(null);
        this.mboundView5 = (RocketTextView) dataBindingComponent[5];
        this.mboundView5.setTag(null);
        this.mboundView6 = (RocketTextView) dataBindingComponent[6];
        this.mboundView6.setTag(null);
        this.mboundView7 = (RocketTextView) dataBindingComponent[7];
        this.mboundView7.setTag(null);
        this.mboundView8 = (RocketTextView) dataBindingComponent[8];
        this.mboundView8.setTag(null);
        this.mboundView9 = (RocketTextView) dataBindingComponent[9];
        this.mboundView9.setTag(null);
        this.textViewSum = (RocketTextView) dataBindingComponent[19];
        this.toolbar = (Toolbar) dataBindingComponent[1];
        this.toolbar.setTag(null);
        setRootTag(view);
        invalidateAll();
    }

    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 2;
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
        if (15 != i) {
            return false;
        }
        setChargeModel((ChargeModel) obj);
        return true;
    }

    public void setChargeModel(ChargeModel chargeModel) {
        this.mChargeModel = chargeModel;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(15);
        super.requestRebind();
    }

    public ChargeModel getChargeModel() {
        return this.mChargeModel;
    }

    protected void executeBindings() {
        long j;
        ActivityTaxChargeBinding activityTaxChargeBinding = this;
        synchronized (this) {
            try {
                j = activityTaxChargeBinding.mDirtyFlags;
                long j2 = 0;
                activityTaxChargeBinding.mDirtyFlags = 0;
            } finally {
                j = r0;
            }
        }
        ChargeModel chargeModel = activityTaxChargeBinding.mChargeModel;
        long j3 = 3;
        long j4 = j & 3;
        int i = 0;
        CharSequence charSequence = null;
        CharSequence bank_name;
        CharSequence kbk;
        CharSequence charSequence2;
        CharSequence charSequence3;
        int i2;
        CharSequence charSequence4;
        CharSequence charSequence5;
        CharSequence charSequence6;
        CharSequence charSequence7;
        CharSequence charSequence8;
        CharSequence charSequence9;
        CharSequence charSequence10;
        CharSequence charSequence11;
        CharSequence charSequence12;
        CharSequence charSequence13;
        if (j4 != 0) {
            String inn;
            String treasure_branch;
            String kpp;
            String tax_period;
            String oktmo;
            String tax_basis;
            String corr_number;
            String drawer_status;
            String bill_date;
            String recipient_name;
            String payer_name;
            String bik;
            String str;
            Requisites requisites = chargeModel != null ? chargeModel.getRequisites() : null;
            if (requisites != null) {
                inn = requisites.getInn();
                treasure_branch = requisites.getTreasure_branch();
                bank_name = requisites.getBank_name();
                kbk = requisites.getKbk();
                kpp = requisites.getKpp();
                tax_period = requisites.getTax_period();
                oktmo = requisites.getOktmo();
                tax_basis = requisites.getTax_basis();
                corr_number = requisites.getCorr_number();
                drawer_status = requisites.getDrawer_status();
                bill_date = requisites.getBill_date();
                recipient_name = requisites.getRecipient_name();
                payer_name = requisites.getPayer_name();
                bik = requisites.getBik();
                String str2 = oktmo;
                oktmo = requisites.getPurpose();
                str = treasure_branch;
            } else {
                str = null;
                inn = str;
                bank_name = inn;
                kbk = bank_name;
                kpp = kbk;
                tax_period = kpp;
                oktmo = tax_period;
                tax_basis = oktmo;
                corr_number = tax_basis;
                drawer_status = corr_number;
                bill_date = drawer_status;
                recipient_name = bill_date;
                payer_name = recipient_name;
                bik = payer_name;
            }
            int i3 = 1;
            int i4 = treasure_branch != null ? 1 : i;
            if (corr_number == null) {
                i3 = i;
            }
            long j5 = j4 != j2 ? i4 != 0 ? j | 8 : j | 4 : j;
            if ((j5 & j3) != j2) {
                j = i3 != 0 ? j5 | 32 : j5 | 16;
            } else {
                j = j5;
            }
            int i5 = i4 != 0 ? i : 8;
            if (i3 == 0) {
                i = 8;
            }
            charSequence2 = str;
            charSequence3 = inn;
            i2 = i;
            charSequence4 = treasure_branch;
            charSequence5 = kpp;
            charSequence6 = tax_period;
            charSequence7 = oktmo;
            charSequence8 = tax_basis;
            charSequence9 = corr_number;
            charSequence10 = drawer_status;
            charSequence = bill_date;
            charSequence11 = recipient_name;
            charSequence12 = payer_name;
            i = i5;
            charSequence13 = bik;
            if ((j & j3) != j2) {
                TextViewBindingAdapter.setText(activityTaxChargeBinding.date, charSequence);
                TextViewBindingAdapter.setText(activityTaxChargeBinding.description, charSequence7);
                TextViewBindingAdapter.setText(activityTaxChargeBinding.mboundView10, charSequence5);
                TextViewBindingAdapter.setText(activityTaxChargeBinding.mboundView11, bank_name);
                TextViewBindingAdapter.setText(activityTaxChargeBinding.mboundView12, charSequence13);
                TextViewBindingAdapter.setText(activityTaxChargeBinding.mboundView13, kbk);
                activityTaxChargeBinding.mboundView14.setVisibility(i);
                activityTaxChargeBinding.mboundView15.setVisibility(i);
                TextViewBindingAdapter.setText(activityTaxChargeBinding.mboundView15, charSequence4);
                TextViewBindingAdapter.setText(activityTaxChargeBinding.mboundView16, charSequence8);
                TextViewBindingAdapter.setText(activityTaxChargeBinding.mboundView17, charSequence10);
                TextViewBindingAdapter.setText(activityTaxChargeBinding.mboundView18, charSequence6);
                TextViewBindingAdapter.setText(activityTaxChargeBinding.mboundView4, charSequence2);
                TextViewBindingAdapter.setText(activityTaxChargeBinding.mboundView5, charSequence12);
                i = i2;
                activityTaxChargeBinding.mboundView6.setVisibility(i);
                activityTaxChargeBinding.mboundView7.setVisibility(i);
                TextViewBindingAdapter.setText(activityTaxChargeBinding.mboundView7, charSequence9);
                TextViewBindingAdapter.setText(activityTaxChargeBinding.mboundView8, charSequence11);
                TextViewBindingAdapter.setText(activityTaxChargeBinding.mboundView9, charSequence3);
            }
        }
        i2 = 0;
        charSequence7 = null;
        charSequence5 = charSequence7;
        charSequence13 = charSequence5;
        charSequence4 = charSequence13;
        bank_name = charSequence4;
        kbk = bank_name;
        charSequence8 = kbk;
        charSequence10 = charSequence8;
        charSequence6 = charSequence10;
        charSequence2 = charSequence6;
        charSequence12 = charSequence2;
        charSequence9 = charSequence12;
        charSequence11 = charSequence9;
        charSequence3 = charSequence11;
        if ((j & j3) != j2) {
            TextViewBindingAdapter.setText(activityTaxChargeBinding.date, charSequence);
            TextViewBindingAdapter.setText(activityTaxChargeBinding.description, charSequence7);
            TextViewBindingAdapter.setText(activityTaxChargeBinding.mboundView10, charSequence5);
            TextViewBindingAdapter.setText(activityTaxChargeBinding.mboundView11, bank_name);
            TextViewBindingAdapter.setText(activityTaxChargeBinding.mboundView12, charSequence13);
            TextViewBindingAdapter.setText(activityTaxChargeBinding.mboundView13, kbk);
            activityTaxChargeBinding.mboundView14.setVisibility(i);
            activityTaxChargeBinding.mboundView15.setVisibility(i);
            TextViewBindingAdapter.setText(activityTaxChargeBinding.mboundView15, charSequence4);
            TextViewBindingAdapter.setText(activityTaxChargeBinding.mboundView16, charSequence8);
            TextViewBindingAdapter.setText(activityTaxChargeBinding.mboundView17, charSequence10);
            TextViewBindingAdapter.setText(activityTaxChargeBinding.mboundView18, charSequence6);
            TextViewBindingAdapter.setText(activityTaxChargeBinding.mboundView4, charSequence2);
            TextViewBindingAdapter.setText(activityTaxChargeBinding.mboundView5, charSequence12);
            i = i2;
            activityTaxChargeBinding.mboundView6.setVisibility(i);
            activityTaxChargeBinding.mboundView7.setVisibility(i);
            TextViewBindingAdapter.setText(activityTaxChargeBinding.mboundView7, charSequence9);
            TextViewBindingAdapter.setText(activityTaxChargeBinding.mboundView8, charSequence11);
            TextViewBindingAdapter.setText(activityTaxChargeBinding.mboundView9, charSequence3);
        }
    }

    public static ActivityTaxChargeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityTaxChargeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (ActivityTaxChargeBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.activity_tax_charge, viewGroup, z, dataBindingComponent);
    }

    public static ActivityTaxChargeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityTaxChargeBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.activity_tax_charge, null, false), dataBindingComponent);
    }

    public static ActivityTaxChargeBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityTaxChargeBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/activity_tax_charge_0".equals(view.getTag())) {
            return new ActivityTaxChargeBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
