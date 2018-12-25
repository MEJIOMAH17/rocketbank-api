package ru.rocketbank.r2d2.widgets.recycler.parallax.vh;

import android.support.v7.widget.SwitchCompat;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.properties.Delegates;
import kotlin.properties.ReadWriteProperty;
import kotlin.reflect.KProperty;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.widgets.recycler.parallax.GenericViewHolder;

/* compiled from: GenericSwitchViewHolder.kt */
public final class GenericSwitchViewHolder extends GenericViewHolder implements OnClickListener, OnCheckedChangeListener {
    static final /* synthetic */ KProperty[] $$delegatedProperties = new KProperty[]{Reflection.mutableProperty1(new MutablePropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(GenericSwitchViewHolder.class), "enabled", "getEnabled()Z"))};
    private final ReadWriteProperty enabled$delegate;
    private Function3<? super ParallaxItem, ? super Boolean, ? super GenericSwitchViewHolder, Unit> onChangeAction;
    private Function1<? super ParallaxItem, Unit> onLinkClickAction;
    private final RocketTextView refillView;
    private final RocketTextView subtitleView;
    private final SwitchCompat switchCompat;
    private final RocketTextView titleView;

    public final boolean getEnabled() {
        return ((Boolean) this.enabled$delegate.getValue(this, $$delegatedProperties[0])).booleanValue();
    }

    public final void setEnabled(boolean z) {
        this.enabled$delegate.setValue(this, $$delegatedProperties[0], Boolean.valueOf(z));
    }

    public GenericSwitchViewHolder(View view) {
        Intrinsics.checkParameterIsNotNull(view, "itemView");
        super(view);
        View findViewById = view.findViewById(C0859R.id.switcher);
        if (findViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.support.v7.widget.SwitchCompat");
        }
        this.switchCompat = (SwitchCompat) findViewById;
        findViewById = view.findViewById(C0859R.id.value);
        if (findViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.titleView = (RocketTextView) findViewById;
        findViewById = view.findViewById(C0859R.id.title);
        if (findViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.subtitleView = (RocketTextView) findViewById;
        view = view.findViewById(C0859R.id.refill);
        if (view == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.refillView = (RocketTextView) view;
        this.refillView.setOnClickListener(this);
        view = Delegates.INSTANCE;
        view = Boolean.FALSE;
        this.enabled$delegate = new GenericSwitchViewHolder$$special$$inlined$observable$1(view, view, this);
    }

    public final void onClick(View view) {
        view = this.onLinkClickAction;
        if (view != null) {
            view.invoke(getItem());
        }
    }

    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        compoundButton = this.onChangeAction;
        if (compoundButton != null) {
            compoundButton.invoke(getItem(), Boolean.valueOf(z), this);
        }
    }

    public final void setClickable(boolean z) {
        this.switchCompat.setEnabled(z);
    }

    public final void setText(String str, String str2) {
        this.subtitleView.setText(str2);
        this.titleView.setText(str);
    }

    public final void setLink(String str) {
        if (str != null) {
            this.refillView.setVisibility(0);
            this.refillView.setText(str);
            return;
        }
        this.refillView.setVisibility(8);
    }

    public static /* bridge */ /* synthetic */ void onBindActions$default(GenericSwitchViewHolder genericSwitchViewHolder, Function3 function3, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            function1 = null;
        }
        genericSwitchViewHolder.onBindActions(function3, function1);
    }

    public final void onBindActions(Function3<? super ParallaxItem, ? super Boolean, ? super GenericSwitchViewHolder, Unit> function3, Function1<? super ParallaxItem, Unit> function1) {
        this.onChangeAction = function3;
        this.onLinkClickAction = function1;
    }
}
