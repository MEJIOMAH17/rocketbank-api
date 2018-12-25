package ru.rocketbank.r2d2.widgets.dialog;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.mikepenz.materialize.util.KeyboardUtil;
import java.util.HashMap;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.core.widgets.RocketEditText;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.data.binding.change.ChangeTextDialog;
import ru.rocketbank.r2d2.data.binding.change.ChangeTextHandler;
import ru.rocketbank.r2d2.databinding.LayoutDialogChangeBinding;
import ru.rocketbank.r2d2.fragments.dialogs.ProgressDialogFragment;

/* compiled from: ChangeTextDialogFragment.kt */
public final class ChangeTextDialogFragment extends DialogFragment implements ChangeTextHandler {
    public static final Companion Companion = new Companion();
    private HashMap _$_findViewCache;
    public Authorization authorization;
    private ChangeTextListener changeTextListener;
    private ProgressDialogFragment dialogSpinner;
    private LayoutDialogChangeBinding layoutRenameBinding;

    /* compiled from: ChangeTextDialogFragment.kt */
    public interface ChangeTextListener {
        void onDismiss();

        void onTextChanged(String str);

        boolean validateText(String str);
    }

    /* compiled from: ChangeTextDialogFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public final ChangeTextDialogFragment getInstance() {
            ChangeTextDialogFragment changeTextDialogFragment = new ChangeTextDialogFragment();
            changeTextDialogFragment.setArguments(new Bundle());
            return changeTextDialogFragment;
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

    public final Authorization getAuthorization() {
        Authorization authorization = this.authorization;
        if (authorization == null) {
            Intrinsics.throwUninitializedPropertyAccessException("authorization");
        }
        return authorization;
    }

    public final void setAuthorization(Authorization authorization) {
        Intrinsics.checkParameterIsNotNull(authorization, "<set-?>");
        this.authorization = authorization;
    }

    public final ChangeTextListener getChangeTextListener() {
        return this.changeTextListener;
    }

    public final void setChangeTextListener(ChangeTextListener changeTextListener) {
        this.changeTextListener = changeTextListener;
    }

    public final void onDismiss(DialogInterface dialogInterface) {
        Intrinsics.checkParameterIsNotNull(dialogInterface, "dialog");
        hideSpinner();
        KeyboardUtil.hideKeyboard(getActivity());
        ChangeTextListener changeTextListener = this.changeTextListener;
        if (changeTextListener != null) {
            changeTextListener.onDismiss();
        }
        super.onDismiss(dialogInterface);
    }

    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(layoutInflater, "inflater");
        bundle = new ChangeTextDialog();
        layoutInflater = LayoutDialogChangeBinding.inflate(layoutInflater, viewGroup, false);
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "LayoutDialogChangeBindin…flater, container, false)");
        this.layoutRenameBinding = layoutInflater;
        layoutInflater = this.layoutRenameBinding;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("layoutRenameBinding");
        }
        layoutInflater.setHandler(this);
        layoutInflater = this.layoutRenameBinding;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("layoutRenameBinding");
        }
        layoutInflater.setData(bundle);
        layoutInflater = this.layoutRenameBinding;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("layoutRenameBinding");
        }
        return layoutInflater.getRoot();
    }

    public final void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        getArguments();
        this.authorization = RocketApplication.Companion.getInjector().getAuthorization();
    }

    public final void dismiss() {
        KeyboardUtil.hideKeyboard(getActivity());
        super.dismiss();
    }

    public final Dialog onCreateDialog(Bundle bundle) {
        bundle = super.onCreateDialog(bundle);
        bundle.requestWindowFeature(1);
        Intrinsics.checkExpressionValueIsNotNull(bundle, "dialog");
        return bundle;
    }

    protected final void hideSpinner() {
        if (this.dialogSpinner != null) {
            ProgressDialogFragment progressDialogFragment = this.dialogSpinner;
            if (progressDialogFragment == null) {
                Intrinsics.throwNpe();
            }
            progressDialogFragment.dismiss();
            this.dialogSpinner = null;
        }
    }

    public final void onOkClicked() {
        if (this.changeTextListener != null) {
            LayoutDialogChangeBinding layoutDialogChangeBinding = this.layoutRenameBinding;
            if (layoutDialogChangeBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("layoutRenameBinding");
            }
            RocketEditText rocketEditText = layoutDialogChangeBinding.name;
            Intrinsics.checkExpressionValueIsNotNull(rocketEditText, "layoutRenameBinding.name");
            String obj = rocketEditText.getText().toString();
            if (obj == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.CharSequence");
            }
            obj = StringsKt.trim(obj).toString();
            ChangeTextListener changeTextListener = this.changeTextListener;
            if (changeTextListener == null) {
                Intrinsics.throwNpe();
            }
            if (changeTextListener.validateText(obj)) {
                changeTextListener = this.changeTextListener;
                if (changeTextListener == null) {
                    Intrinsics.throwNpe();
                }
                changeTextListener.onTextChanged(obj);
                dismiss();
            }
        }
    }

    public final void onCancelledClicked() {
        dismiss();
    }
}
