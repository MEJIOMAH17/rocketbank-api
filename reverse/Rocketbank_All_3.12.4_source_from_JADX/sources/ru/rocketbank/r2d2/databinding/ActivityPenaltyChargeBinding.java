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

public class ActivityPenaltyChargeBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    private ChargeModel mChargeModel;
    private long mDirtyFlags = -1;
    private final LinearLayout mboundView0;
    private final RocketTextView mboundView2;
    private final RocketTextView mboundView3;
    private final RocketTextView mboundView4;
    public final RocketTextView textView;
    public final RocketTextView textViewFineSum;
    public final Toolbar toolbar;

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.textView, 5);
        sViewsWithIds.put(C0859R.id.textViewFineSum, 6);
    }

    public ActivityPenaltyChargeBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 0);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 7, sIncludes, sViewsWithIds);
        this.mboundView0 = (LinearLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.mboundView2 = (RocketTextView) dataBindingComponent[2];
        this.mboundView2.setTag(null);
        this.mboundView3 = (RocketTextView) dataBindingComponent[3];
        this.mboundView3.setTag(null);
        this.mboundView4 = (RocketTextView) dataBindingComponent[4];
        this.mboundView4.setTag(null);
        this.textView = (RocketTextView) dataBindingComponent[5];
        this.textViewFineSum = (RocketTextView) dataBindingComponent[6];
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
        CharSequence uin;
        CharSequence stringBuilder;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0;
        }
        ChargeModel chargeModel = this.mChargeModel;
        long j2 = j & 3;
        CharSequence charSequence = null;
        if (j2 != 0) {
            String treasure_branch;
            String bill_date;
            String purpose;
            Requisites requisites = chargeModel != null ? chargeModel.getRequisites() : null;
            if (requisites != null) {
                treasure_branch = requisites.getTreasure_branch();
                uin = requisites.getUin();
                bill_date = requisites.getBill_date();
                purpose = requisites.getPurpose();
            } else {
                purpose = null;
                uin = purpose;
                bill_date = uin;
            }
            StringBuilder stringBuilder2 = new StringBuilder();
            stringBuilder2.append(purpose);
            stringBuilder2.append("\n");
            purpose = stringBuilder2.toString();
            stringBuilder2 = new StringBuilder();
            stringBuilder2.append(purpose);
            stringBuilder2.append(treasure_branch);
            stringBuilder = stringBuilder2.toString();
            charSequence = bill_date;
        } else {
            stringBuilder = null;
            uin = stringBuilder;
        }
        if (j2 != 0) {
            TextViewBindingAdapter.setText(this.mboundView2, charSequence);
            TextViewBindingAdapter.setText(this.mboundView3, uin);
            TextViewBindingAdapter.setText(this.mboundView4, stringBuilder);
        }
    }

    public static ActivityPenaltyChargeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityPenaltyChargeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (ActivityPenaltyChargeBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.activity_penalty_charge, viewGroup, z, dataBindingComponent);
    }

    public static ActivityPenaltyChargeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityPenaltyChargeBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.activity_penalty_charge, null, false), dataBindingComponent);
    }

    public static ActivityPenaltyChargeBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityPenaltyChargeBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/activity_penalty_charge_0".equals(view.getTag())) {
            return new ActivityPenaltyChargeBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
