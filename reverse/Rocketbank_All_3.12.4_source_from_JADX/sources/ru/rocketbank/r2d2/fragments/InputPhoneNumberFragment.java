package ru.rocketbank.r2d2.fragments;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.jakewharton.rxbinding.widget.RxTextView;
import de.greenrobot.event.EventBus;
import java.util.HashMap;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.slf4j.Marker;
import ru.rocketbank.core.events.PhoneNumberEvent;
import ru.rocketbank.core.model.ChangeMobilePhone;
import ru.rocketbank.core.widgets.RocketEditText;
import ru.rocketbank.core.widgets.RocketEditTextPhone;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.activities.AbstractActivity;
import ru.rocketbank.r2d2.data.binding.toolbar.ToolbarWithButtonData;
import ru.rocketbank.r2d2.data.binding.toolbar.ToolbarWithButtonHandler;
import ru.rocketbank.r2d2.databinding.FragmentInputPhoneNumberBinding;
import ru.rocketbank.r2d2.helpers.KeyboardHelper;
import rx.functions.Action1;
import rx.functions.Func1;

/* compiled from: InputPhoneNumberFragment.kt */
public final class InputPhoneNumberFragment extends RocketFragment implements ToolbarWithButtonHandler {
    public static final Companion Companion = new Companion();
    private static final String KEY_CHANGE_MOBILE_PHONE = "KEY_CHANGE_MOBILE_PHONE";
    private HashMap _$_findViewCache;
    public FragmentInputPhoneNumberBinding binding;
    public RocketEditText editTextCountryCode;
    public RocketEditTextPhone editTextPhone;
    private EventBus eventBus = EventBus.getDefault();
    public TextView textViewHint;
    public ToolbarWithButtonData toolBarWithButtonData;

    /* compiled from: InputPhoneNumberFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public final InputPhoneNumberFragment newInstance(ChangeMobilePhone changeMobilePhone) {
            Intrinsics.checkParameterIsNotNull(changeMobilePhone, "changeMobilePhone");
            InputPhoneNumberFragment inputPhoneNumberFragment = new InputPhoneNumberFragment();
            Bundle bundle = new Bundle();
            bundle.putParcelable(InputPhoneNumberFragment.KEY_CHANGE_MOBILE_PHONE, changeMobilePhone);
            inputPhoneNumberFragment.setArguments(bundle);
            return inputPhoneNumberFragment;
        }
    }

    public final void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public final View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view == null) {
            view = getView();
            if (view == null) {
                return null;
            }
            view = view.findViewById(i);
            this._$_findViewCache.put(Integer.valueOf(i), view);
        }
        return view;
    }

    public final /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public final EventBus getEventBus() {
        return this.eventBus;
    }

    public final void setEventBus(EventBus eventBus) {
        this.eventBus = eventBus;
    }

    public final TextView getTextViewHint() {
        TextView textView = this.textViewHint;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("textViewHint");
        }
        return textView;
    }

    public final void setTextViewHint(TextView textView) {
        Intrinsics.checkParameterIsNotNull(textView, "<set-?>");
        this.textViewHint = textView;
    }

    public final RocketEditTextPhone getEditTextPhone() {
        RocketEditTextPhone rocketEditTextPhone = this.editTextPhone;
        if (rocketEditTextPhone == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editTextPhone");
        }
        return rocketEditTextPhone;
    }

    public final void setEditTextPhone(RocketEditTextPhone rocketEditTextPhone) {
        Intrinsics.checkParameterIsNotNull(rocketEditTextPhone, "<set-?>");
        this.editTextPhone = rocketEditTextPhone;
    }

    public final RocketEditText getEditTextCountryCode() {
        RocketEditText rocketEditText = this.editTextCountryCode;
        if (rocketEditText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editTextCountryCode");
        }
        return rocketEditText;
    }

    public final void setEditTextCountryCode(RocketEditText rocketEditText) {
        Intrinsics.checkParameterIsNotNull(rocketEditText, "<set-?>");
        this.editTextCountryCode = rocketEditText;
    }

    public final FragmentInputPhoneNumberBinding getBinding() {
        FragmentInputPhoneNumberBinding fragmentInputPhoneNumberBinding = this.binding;
        if (fragmentInputPhoneNumberBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        return fragmentInputPhoneNumberBinding;
    }

    public final void setBinding(FragmentInputPhoneNumberBinding fragmentInputPhoneNumberBinding) {
        Intrinsics.checkParameterIsNotNull(fragmentInputPhoneNumberBinding, "<set-?>");
        this.binding = fragmentInputPhoneNumberBinding;
    }

    public final ToolbarWithButtonData getToolBarWithButtonData() {
        ToolbarWithButtonData toolbarWithButtonData = this.toolBarWithButtonData;
        if (toolbarWithButtonData == null) {
            Intrinsics.throwUninitializedPropertyAccessException("toolBarWithButtonData");
        }
        return toolbarWithButtonData;
    }

    public final void setToolBarWithButtonData(ToolbarWithButtonData toolbarWithButtonData) {
        Intrinsics.checkParameterIsNotNull(toolbarWithButtonData, "<set-?>");
        this.toolBarWithButtonData = toolbarWithButtonData;
    }

    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(layoutInflater, "inflater");
        layoutInflater = FragmentInputPhoneNumberBinding.inflate(layoutInflater, viewGroup, null);
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "FragmentInputPhoneNumber…flater, container, false)");
        this.binding = layoutInflater;
        this.toolBarWithButtonData = new ToolbarWithButtonData(getString(C0859R.string.title_change_phone), getString(C0859R.string.next), true, 0, 8, null);
        layoutInflater = this.binding;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        layoutInflater = layoutInflater.textViewHintBottom;
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "binding.textViewHintBottom");
        this.textViewHint = (TextView) layoutInflater;
        layoutInflater = this.binding;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        layoutInflater = layoutInflater.phone;
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "binding.phone");
        this.editTextPhone = layoutInflater;
        layoutInflater = this.binding;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        layoutInflater = layoutInflater.countryCode;
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "binding.countryCode");
        this.editTextCountryCode = layoutInflater;
        layoutInflater = this.binding;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        layoutInflater.setHandler(this);
        layoutInflater = this.binding;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        viewGroup = this.toolBarWithButtonData;
        if (viewGroup == null) {
            Intrinsics.throwUninitializedPropertyAccessException("toolBarWithButtonData");
        }
        layoutInflater.setToolbarBinding(viewGroup);
        layoutInflater = this.editTextPhone;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editTextPhone");
        }
        layoutInflater.requestFocus();
        layoutInflater = this.editTextPhone;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editTextPhone");
        }
        RxTextView.editorActions((TextView) layoutInflater).filter((Func1) InputPhoneNumberFragment$onCreateView$1.INSTANCE).filter((Func1) new InputPhoneNumberFragment$onCreateView$2(this)).subscribe((Action1) new InputPhoneNumberFragment$onCreateView$3(this));
        layoutInflater = getArguments();
        if (layoutInflater != null) {
            ChangeMobilePhone changeMobilePhone = (ChangeMobilePhone) layoutInflater.getParcelable(KEY_CHANGE_MOBILE_PHONE);
            if (changeMobilePhone != null) {
                viewGroup = this.textViewHint;
                if (viewGroup == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("textViewHint");
                }
                viewGroup.setText(changeMobilePhone.getPhoneText());
                layoutInflater = getActivity();
                if (layoutInflater == null) {
                    throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.activities.AbstractActivity");
                }
                AbstractActivity abstractActivity = (AbstractActivity) layoutInflater;
                viewGroup = this.binding;
                if (viewGroup == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                }
                viewGroup = viewGroup.toolbarInclude;
                if (viewGroup == null) {
                    Intrinsics.throwNpe();
                }
                abstractActivity.setSupportActionBar(viewGroup.toolbar);
                layoutInflater = abstractActivity.getSupportActionBar();
                if (layoutInflater != null) {
                    layoutInflater.setDisplayHomeAsUpEnabled(true);
                }
                layoutInflater = this.binding;
                if (layoutInflater == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                }
                return layoutInflater.getRoot();
            }
        }
        throw ((Throwable) new IllegalArgumentException());
    }

    private final boolean validate() {
        RocketEditText rocketEditText = this.editTextCountryCode;
        if (rocketEditText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editTextCountryCode");
        }
        if (StringsKt.startsWith$default(rocketEditText.getText().toString(), Marker.ANY_NON_NULL_MARKER, false, 2, null)) {
            rocketEditText = this.editTextCountryCode;
            if (rocketEditText == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editTextCountryCode");
            }
            if (rocketEditText.length() >= 2) {
                RocketEditTextPhone rocketEditTextPhone = this.editTextPhone;
                if (rocketEditTextPhone == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("editTextPhone");
                }
                if (rocketEditTextPhone.getPhone().length() == 10) {
                    return true;
                }
                rocketEditTextPhone = this.editTextPhone;
                if (rocketEditTextPhone == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("editTextPhone");
                }
                rocketEditTextPhone.setError(getString(C0859R.string.epa_number_validation_failed));
                return false;
            }
        }
        rocketEditText = this.editTextCountryCode;
        if (rocketEditText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editTextCountryCode");
        }
        rocketEditText.setError(getString(C0859R.string.epa_code_validation_failed));
        return false;
    }

    private final void next() {
        RocketEditTextPhone rocketEditTextPhone = this.editTextPhone;
        if (rocketEditTextPhone == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editTextPhone");
        }
        KeyboardHelper.hide(rocketEditTextPhone);
        EventBus eventBus = this.eventBus;
        StringBuilder stringBuilder = new StringBuilder();
        RocketEditText rocketEditText = this.editTextCountryCode;
        if (rocketEditText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editTextCountryCode");
        }
        stringBuilder.append(rocketEditText.getText().toString());
        RocketEditTextPhone rocketEditTextPhone2 = this.editTextPhone;
        if (rocketEditTextPhone2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editTextPhone");
        }
        stringBuilder.append(rocketEditTextPhone2.getPhone());
        eventBus.post(new PhoneNumberEvent(stringBuilder.toString()));
    }

    public final void nextPressed(View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        next();
    }
}
