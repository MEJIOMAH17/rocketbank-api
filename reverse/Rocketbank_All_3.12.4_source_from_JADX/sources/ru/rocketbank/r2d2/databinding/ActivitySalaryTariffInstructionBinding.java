package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.databinding.generated.callback.OnClickListener.Listener;
import android.support.constraint.Guideline;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.tariff.TariffInstructionListener;

public class ActivitySalaryTariffInstructionBinding extends ViewDataBinding implements Listener {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final ImageView background;
    public final Button button3;
    public final RocketTextView getSalaryView;
    public final Guideline guideline5;
    public final RocketTextView limitsOnSalaryView;
    private final OnClickListener mCallback8;
    private final OnClickListener mCallback9;
    private long mDirtyFlags = -1;
    private TariffInstructionListener mListener;
    private final FrameLayout mboundView0;
    public final RocketTextView step1;
    public final RocketTextView step2;
    public final RocketTextView step3;
    public final TextView textStep1;
    public final TextView textStep2;
    public final RocketTextView textStep3;
    public final RocketTextView textView9;

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.background, 3);
        sViewsWithIds.put(C0859R.id.get_salary_view, 4);
        sViewsWithIds.put(C0859R.id.limits_on_salary_view, 5);
        sViewsWithIds.put(C0859R.id.step1, 6);
        sViewsWithIds.put(C0859R.id.step2, 7);
        sViewsWithIds.put(C0859R.id.step3, 8);
        sViewsWithIds.put(C0859R.id.text_step_1, 9);
        sViewsWithIds.put(C0859R.id.text_step_2, 10);
        sViewsWithIds.put(C0859R.id.guideline5, 11);
        sViewsWithIds.put(C0859R.id.text_step_3, 12);
    }

    public ActivitySalaryTariffInstructionBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 0);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 13, sIncludes, sViewsWithIds);
        this.background = (ImageView) dataBindingComponent[3];
        this.button3 = (Button) dataBindingComponent[2];
        this.button3.setTag(null);
        this.getSalaryView = (RocketTextView) dataBindingComponent[4];
        this.guideline5 = (Guideline) dataBindingComponent[11];
        this.limitsOnSalaryView = (RocketTextView) dataBindingComponent[5];
        this.mboundView0 = (FrameLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.step1 = (RocketTextView) dataBindingComponent[6];
        this.step2 = (RocketTextView) dataBindingComponent[7];
        this.step3 = (RocketTextView) dataBindingComponent[8];
        this.textStep1 = (TextView) dataBindingComponent[9];
        this.textStep2 = (TextView) dataBindingComponent[10];
        this.textStep3 = (RocketTextView) dataBindingComponent[12];
        this.textView9 = (RocketTextView) dataBindingComponent[1];
        this.textView9.setTag(null);
        setRootTag(view);
        this.mCallback9 = new android.databinding.generated.callback.OnClickListener(this, 2);
        this.mCallback8 = new android.databinding.generated.callback.OnClickListener(this, 1);
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
        if (55 != i) {
            return false;
        }
        setListener((TariffInstructionListener) obj);
        return true;
    }

    public void setListener(TariffInstructionListener tariffInstructionListener) {
        this.mListener = tariffInstructionListener;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(55);
        super.requestRebind();
    }

    public TariffInstructionListener getListener() {
        return this.mListener;
    }

    protected void executeBindings() {
        synchronized (this) {
            long j = this.mDirtyFlags;
            this.mDirtyFlags = 0;
        }
        if ((j & 2) != 0) {
            this.button3.setOnClickListener(this.mCallback9);
            this.textView9.setOnClickListener(this.mCallback8);
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
                    i.onLinkClicked();
                    break;
                }
                break;
            case 2:
                i = this.mListener;
                if (i != 0) {
                    view = 1;
                }
                if (view != null) {
                    i.onDownloadButtonClicked();
                    return;
                }
                break;
            default:
                break;
        }
    }

    public static ActivitySalaryTariffInstructionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static ActivitySalaryTariffInstructionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (ActivitySalaryTariffInstructionBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.activity_salary_tariff_instruction, viewGroup, z, dataBindingComponent);
    }

    public static ActivitySalaryTariffInstructionBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static ActivitySalaryTariffInstructionBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.activity_salary_tariff_instruction, null, false), dataBindingComponent);
    }

    public static ActivitySalaryTariffInstructionBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static ActivitySalaryTariffInstructionBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/activity_salary_tariff_instruction_0".equals(view.getTag())) {
            return new ActivitySalaryTariffInstructionBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
