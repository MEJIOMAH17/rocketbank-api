package ru.rocketbank.r2d2.widgets.recycler.parallax.vh;

import android.support.v7.widget.SwitchCompat;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.facebook.share.internal.ShareConstants;
import jp.wasabeef.glide.transformations.CropCircleTransformation;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.properties.Delegates;
import kotlin.properties.ReadWriteProperty;
import kotlin.reflect.KProperty;
import ru.rocketbank.core.utils.ImageHelper;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.widgets.recycler.parallax.GenericViewHolder;

/* compiled from: AnalyticsProfileViewHolder.kt */
public final class AnalyticsProfileViewHolder extends GenericViewHolder implements OnClickListener, OnCheckedChangeListener {
    static final /* synthetic */ KProperty[] $$delegatedProperties = new KProperty[]{Reflection.mutableProperty1(new MutablePropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(AnalyticsProfileViewHolder.class), "enabled", "getEnabled()Z"))};
    private boolean analyticsInProgress;
    private final ReadWriteProperty enabled$delegate;
    private Function3<? super AnalyticsParallaxItem, ? super Boolean, ? super AnalyticsProfileViewHolder, Unit> onChangeAction;

    public final boolean getEnabled() {
        return ((Boolean) this.enabled$delegate.getValue(this, $$delegatedProperties[0])).booleanValue();
    }

    public final void onClick(View view) {
    }

    public final void setEnabled(boolean z) {
        this.enabled$delegate.setValue(this, $$delegatedProperties[0], Boolean.valueOf(z));
    }

    public AnalyticsProfileViewHolder(View view) {
        Intrinsics.checkParameterIsNotNull(view, "itemView");
        super(view);
        view.setOnClickListener(this);
        Delegates delegates = Delegates.INSTANCE;
        Boolean bool = Boolean.FALSE;
        this.enabled$delegate = new AnalyticsProfileViewHolder$$special$$inlined$observable$1(bool, bool, this, view);
    }

    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        compoundButton = this.onChangeAction;
        if (compoundButton != null) {
            ParallaxItem item = getItem();
            if (item == null) {
                throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.widgets.recycler.parallax.vh.AnalyticsParallaxItem");
            }
            compoundButton.invoke((AnalyticsParallaxItem) item, Boolean.valueOf(z), this);
        }
    }

    public final void setText(String str, String str2) {
        View view = this.itemView;
        Intrinsics.checkExpressionValueIsNotNull(view, "itemView");
        RocketTextView rocketTextView = (RocketTextView) view.findViewById(C0859R.id.status);
        Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "itemView.status");
        rocketTextView.setText(str2);
        str2 = this.itemView;
        Intrinsics.checkExpressionValueIsNotNull(str2, "itemView");
        RocketTextView rocketTextView2 = (RocketTextView) str2.findViewById(C0859R.id.title);
        Intrinsics.checkExpressionValueIsNotNull(rocketTextView2, "itemView.title");
        rocketTextView2.setText(str);
    }

    public final void onBindActions(Function3<? super ParallaxItem, ? super Boolean, ? super GenericViewHolder, Unit> function3) {
        this.onChangeAction = function3;
    }

    public final void setInProgress(boolean z) {
        this.analyticsInProgress = z;
        if (this.analyticsInProgress) {
            z = this.itemView;
            Intrinsics.checkExpressionValueIsNotNull(z, "itemView");
            ProgressBar progressBar = (ProgressBar) z.findViewById(C0859R.id.progressBar);
            Intrinsics.checkExpressionValueIsNotNull(progressBar, "itemView.progressBar");
            progressBar.setVisibility(0);
            z = this.itemView;
            Intrinsics.checkExpressionValueIsNotNull(z, "itemView");
            SwitchCompat switchCompat = (SwitchCompat) z.findViewById(C0859R.id.switcher);
            Intrinsics.checkExpressionValueIsNotNull(switchCompat, "itemView.switcher");
            switchCompat.setVisibility(8);
            return;
        }
        z = this.itemView;
        Intrinsics.checkExpressionValueIsNotNull(z, "itemView");
        progressBar = (ProgressBar) z.findViewById(C0859R.id.progressBar);
        Intrinsics.checkExpressionValueIsNotNull(progressBar, "itemView.progressBar");
        progressBar.setVisibility(8);
        z = this.itemView;
        Intrinsics.checkExpressionValueIsNotNull(z, "itemView");
        switchCompat = (SwitchCompat) z.findViewById(C0859R.id.switcher);
        Intrinsics.checkExpressionValueIsNotNull(switchCompat, "itemView.switcher");
        switchCompat.setVisibility(0);
    }

    public final void setTitle(String str) {
        Intrinsics.checkParameterIsNotNull(str, ShareConstants.WEB_DIALOG_PARAM_TITLE);
        View view = this.itemView;
        Intrinsics.checkExpressionValueIsNotNull(view, "itemView");
        RocketTextView rocketTextView = (RocketTextView) view.findViewById(C0859R.id.title);
        Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "itemView.title");
        rocketTextView.setText(str);
    }

    public final void setName(String str) {
        View view = this.itemView;
        Intrinsics.checkExpressionValueIsNotNull(view, "itemView");
        RocketTextView rocketTextView = (RocketTextView) view.findViewById(C0859R.id.name);
        Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "itemView.name");
        rocketTextView.setVisibility(str != null ? 0 : 8);
        view = this.itemView;
        Intrinsics.checkExpressionValueIsNotNull(view, "itemView");
        rocketTextView = (RocketTextView) view.findViewById(C0859R.id.name);
        Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "itemView.name");
        if (str != null) {
            View view2 = this.itemView;
            Intrinsics.checkExpressionValueIsNotNull(view2, "itemView");
            str = view2.getResources().getString(C0859R.string.with, new Object[]{str});
        } else {
            str = "";
        }
        rocketTextView.setText(str);
    }

    public final void setIcon(String str) {
        View view = this.itemView;
        Intrinsics.checkExpressionValueIsNotNull(view, "itemView");
        ImageView imageView = (ImageView) view.findViewById(C0859R.id.icon);
        Intrinsics.checkExpressionValueIsNotNull(imageView, "itemView.icon");
        imageView.setVisibility(str != null ? 0 : 8);
        if (str != null) {
            view = this.itemView;
            Intrinsics.checkExpressionValueIsNotNull(view, "itemView");
            imageView = (ImageView) view.findViewById(C0859R.id.icon);
            Intrinsics.checkExpressionValueIsNotNull(imageView, "itemView.icon");
            View view2 = this.itemView;
            Intrinsics.checkExpressionValueIsNotNull(view2, "itemView");
            ImageHelper.loadRound(imageView, str, new CropCircleTransformation(view2.getContext()));
        }
    }

    public final void setStatus(String str) {
        View view = this.itemView;
        Intrinsics.checkExpressionValueIsNotNull(view, "itemView");
        RocketTextView rocketTextView = (RocketTextView) view.findViewById(C0859R.id.status);
        Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "itemView.status");
        rocketTextView.setVisibility(str != null ? 0 : 8);
        view = this.itemView;
        Intrinsics.checkExpressionValueIsNotNull(view, "itemView");
        rocketTextView = (RocketTextView) view.findViewById(C0859R.id.status);
        Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "itemView.status");
        rocketTextView.setText(str);
    }

    public final void setSwitchEnabled(boolean z) {
        View view = this.itemView;
        Intrinsics.checkExpressionValueIsNotNull(view, "itemView");
        ((SwitchCompat) view.findViewById(C0859R.id.switcher)).setOnCheckedChangeListener(null);
        view = this.itemView;
        Intrinsics.checkExpressionValueIsNotNull(view, "itemView");
        ((SwitchCompat) view.findViewById(C0859R.id.switcher)).setChecked(z);
        z = this.itemView;
        Intrinsics.checkExpressionValueIsNotNull(z, "itemView");
        ((SwitchCompat) z.findViewById(C0859R.id.switcher)).setOnCheckedChangeListener(this);
    }
}
