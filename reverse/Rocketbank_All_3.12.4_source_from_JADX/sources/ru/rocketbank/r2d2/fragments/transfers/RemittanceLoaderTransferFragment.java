package ru.rocketbank.r2d2.fragments.transfers;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.facebook.share.internal.ShareConstants;
import java.util.HashMap;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.transfers.bank.RemittanceOutgoing;
import ru.rocketbank.core.model.transfers.bank.RemittanceRequestData;
import ru.rocketbank.core.network.api.RocketAPI;
import ru.rocketbank.core.widgets.RocketLoader;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.Utils;
import ru.rocketbank.r2d2.activities.MainActivity;
import ru.rocketbank.r2d2.fragments.RocketFragment;
import rx.Observable;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Action1;

/* compiled from: RemittanceLoaderTransferFragment.kt */
public final class RemittanceLoaderTransferFragment extends RocketFragment {
    public static final Companion Companion = new Companion();
    private static final String ERROR = "error";
    private static final String REMITTANCE_OUTGOING_EXTRA = "remittance_outgoing";
    private static final String RESULT = "result";
    private static final String TAG = "RemittanceTransferLoader";
    private static final String TAG_RESULT_FAILED = "failed";
    private static final String TAG_RESULT_SUCCESS = "success";
    private HashMap _$_findViewCache;
    private Button btnNext;
    private String error;
    public View finishButton;
    public TextView message;
    private RemittanceOutgoing remittanceOutgoing;
    private String result;
    public RocketAPI rocketAPI;
    public RocketLoader rocketLoader;
    private View rootView;
    private Subscription subscription;

    /* compiled from: RemittanceLoaderTransferFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public final RemittanceLoaderTransferFragment newInstance(RemittanceOutgoing remittanceOutgoing) {
            Intrinsics.checkParameterIsNotNull(remittanceOutgoing, "remittanceOutgoing");
            RemittanceLoaderTransferFragment remittanceLoaderTransferFragment = new RemittanceLoaderTransferFragment();
            Bundle bundle = new Bundle();
            bundle.putParcelable(RemittanceLoaderTransferFragment.REMITTANCE_OUTGOING_EXTRA, remittanceOutgoing);
            remittanceLoaderTransferFragment.setArguments(bundle);
            return remittanceLoaderTransferFragment;
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

    public final RocketLoader getRocketLoader() {
        RocketLoader rocketLoader = this.rocketLoader;
        if (rocketLoader == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rocketLoader");
        }
        return rocketLoader;
    }

    public final void setRocketLoader(RocketLoader rocketLoader) {
        Intrinsics.checkParameterIsNotNull(rocketLoader, "<set-?>");
        this.rocketLoader = rocketLoader;
    }

    public final View getFinishButton() {
        View view = this.finishButton;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("finishButton");
        }
        return view;
    }

    public final void setFinishButton(View view) {
        Intrinsics.checkParameterIsNotNull(view, "<set-?>");
        this.finishButton = view;
    }

    public final TextView getMessage() {
        TextView textView = this.message;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException(ShareConstants.WEB_DIALOG_PARAM_MESSAGE);
        }
        return textView;
    }

    public final void setMessage(TextView textView) {
        Intrinsics.checkParameterIsNotNull(textView, "<set-?>");
        this.message = textView;
    }

    public final RocketAPI getRocketAPI() {
        RocketAPI rocketAPI = this.rocketAPI;
        if (rocketAPI == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rocketAPI");
        }
        return rocketAPI;
    }

    public final void setRocketAPI(RocketAPI rocketAPI) {
        Intrinsics.checkParameterIsNotNull(rocketAPI, "<set-?>");
        this.rocketAPI = rocketAPI;
    }

    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(layoutInflater, "inflater");
        layoutInflater = layoutInflater.inflate(C0859R.layout.fragment_payment_loader, viewGroup, false);
        this.rootView = layoutInflater;
        viewGroup = layoutInflater.findViewById(C0859R.id.loader);
        if (viewGroup == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketLoader");
        }
        this.rocketLoader = (RocketLoader) viewGroup;
        viewGroup = layoutInflater.findViewById(C0859R.id.finishButton);
        Intrinsics.checkExpressionValueIsNotNull(viewGroup, "rootView.findViewById(R.id.finishButton)");
        this.finishButton = viewGroup;
        viewGroup = layoutInflater.findViewById(C0859R.id.message);
        if (viewGroup == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.TextView");
        }
        this.message = (TextView) viewGroup;
        viewGroup = getActivity();
        if (viewGroup == null) {
            Intrinsics.throwNpe();
        }
        viewGroup = viewGroup.findViewById(C0859R.id.btnNext);
        if (viewGroup == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.Button");
        }
        this.btnNext = (Button) viewGroup;
        viewGroup = this.btnNext;
        if (viewGroup == null) {
            Intrinsics.throwNpe();
        }
        viewGroup.setVisibility(8);
        viewGroup = this.message;
        if (viewGroup == null) {
            Intrinsics.throwUninitializedPropertyAccessException(ShareConstants.WEB_DIALOG_PARAM_MESSAGE);
        }
        viewGroup.setVisibility(8);
        viewGroup = getArguments();
        if (viewGroup == null) {
            Intrinsics.throwNpe();
        }
        this.remittanceOutgoing = (RemittanceOutgoing) viewGroup.getParcelable(REMITTANCE_OUTGOING_EXTRA);
        viewGroup = getArguments();
        if (viewGroup == null) {
            Intrinsics.throwNpe();
        }
        this.result = viewGroup.getString(RESULT);
        if (!(bundle == null || bundle.containsKey(RESULT) == null)) {
            this.result = bundle.getString(RESULT);
        }
        return layoutInflater;
    }

    public final void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        this.rocketAPI = getInjector().getRocketApi();
        view = this.btnNext;
        if (view == null) {
            Intrinsics.throwNpe();
        }
        view.setOnClickListener(new RemittanceLoaderTransferFragment$onViewCreated$1(this));
        if (this.result == null) {
            sendMoney();
        } else if (Intrinsics.areEqual(this.result, "success") != null) {
            setUISuccess();
        } else {
            view = getArguments();
            if (view == null) {
                Intrinsics.throwNpe();
            }
            view = view.getString("error");
            if (bundle != null && bundle.containsKey("error")) {
                view = bundle.getString("error");
            }
            setUIFailed(view);
        }
    }

    private final void setUISuccess() {
        this.result = "success";
        RocketLoader rocketLoader = this.rocketLoader;
        if (rocketLoader == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rocketLoader");
        }
        rocketLoader.setSuccess();
        Button button = this.btnNext;
        if (button == null) {
            Intrinsics.throwNpe();
        }
        button.setText("ГОТОВО");
        button = this.btnNext;
        if (button == null) {
            Intrinsics.throwNpe();
        }
        button.setVisibility(0);
        TextView textView = this.message;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException(ShareConstants.WEB_DIALOG_PARAM_MESSAGE);
        }
        textView.setText("Деньги отправлены");
        textView = this.message;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException(ShareConstants.WEB_DIALOG_PARAM_MESSAGE);
        }
        textView.setVisibility(0);
    }

    private final void setUIFailed(String str) {
        if (str == null) {
            str = getString(C0859R.string.error_occur);
            Intrinsics.checkExpressionValueIsNotNull(str, "getString(R.string.error_occur)");
        }
        this.result = TAG_RESULT_FAILED;
        this.error = str;
        RocketLoader rocketLoader = this.rocketLoader;
        if (rocketLoader == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rocketLoader");
        }
        rocketLoader.setError();
        Button button = this.btnNext;
        if (button == null) {
            Intrinsics.throwNpe();
        }
        button.setText("ЗАКРЫТЬ");
        button = this.btnNext;
        if (button == null) {
            Intrinsics.throwNpe();
        }
        button.setVisibility(0);
        TextView textView = this.message;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException(ShareConstants.WEB_DIALOG_PARAM_MESSAGE);
        }
        textView.setText(str);
        str = this.message;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException(ShareConstants.WEB_DIALOG_PARAM_MESSAGE);
        }
        str.setVisibility(0);
        str = this.finishButton;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("finishButton");
        }
        str.setVisibility(0);
        str = this.finishButton;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("finishButton");
        }
        str.setOnClickListener(new RemittanceLoaderTransferFragment$setUIFailed$1(this));
    }

    private final void sendMoney() {
        if (this.remittanceOutgoing != null) {
            RocketAPI rocketAPI = this.rocketAPI;
            if (rocketAPI == null) {
                Intrinsics.throwUninitializedPropertyAccessException("rocketAPI");
            }
            RemittanceOutgoing remittanceOutgoing = this.remittanceOutgoing;
            if (remittanceOutgoing == null) {
                Intrinsics.throwNpe();
            }
            Observable observeOn = rocketAPI.remittanceCreate(new RemittanceRequestData(remittanceOutgoing)).observeOn(AndroidSchedulers.mainThread());
            this.subscription = observeOn != null ? observeOn.subscribe((Action1) new RemittanceLoaderTransferFragment$sendMoney$1(this), (Action1) new RemittanceLoaderTransferFragment$sendMoney$2(this)) : null;
        }
    }

    public final void onPause() {
        RocketLoader rocketLoader = this.rocketLoader;
        if (rocketLoader == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rocketLoader");
        }
        rocketLoader.setOnEndAnimation(null);
        unsubscribe(this.subscription);
        super.onPause();
    }

    public final void onSaveInstanceState(Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(bundle, "outState");
        super.onSaveInstanceState(bundle);
        if (this.result != null) {
            bundle.putString(RESULT, this.result);
        }
        if (this.error != null) {
            bundle.putString("error", this.error);
        }
    }

    private final void onRetry() {
        Button button = this.btnNext;
        if (button == null) {
            Intrinsics.throwNpe();
        }
        button.setVisibility(8);
        TextView textView = this.message;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException(ShareConstants.WEB_DIALOG_PARAM_MESSAGE);
        }
        textView.setVisibility(8);
        View view = this.finishButton;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("finishButton");
        }
        view.setVisibility(8);
        RocketLoader rocketLoader = this.rocketLoader;
        if (rocketLoader == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rocketLoader");
        }
        rocketLoader.resetAnimation();
        sendMoney();
    }

    private final void onReady() {
        Utils.closeKeyboardIfExists(getActivity());
        if (getActivity() != null) {
            Intent intent = new Intent(getActivity(), MainActivity.class);
            intent.addFlags(67108864);
            FragmentActivity activity = getActivity();
            if (activity == null) {
                Intrinsics.throwNpe();
            }
            activity.startActivity(intent);
        }
    }
}
