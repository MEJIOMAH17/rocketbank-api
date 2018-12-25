package ru.rocketbank.r2d2.fragments;

import android.os.Bundle;
import android.text.Editable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView.OnEditorActionListener;
import com.jakewharton.rxbinding.widget.RxTextView;
import java.util.HashMap;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.ChangeCodeWord;
import ru.rocketbank.core.network.api.PlasticsApi;
import ru.rocketbank.core.widgets.RocketEditText;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.activities.AbstractActivity;
import ru.rocketbank.r2d2.data.binding.toolbar.ToolbarWithButtonData;
import ru.rocketbank.r2d2.data.binding.toolbar.ToolbarWithButtonHandler;
import ru.rocketbank.r2d2.databinding.FragmentChangeCodewordBinding;
import ru.rocketbank.r2d2.helpers.KeyboardHelper;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Action1;
import rx.schedulers.Schedulers;

/* compiled from: ChangeCodewordFragment.kt */
public final class ChangeCodewordFragment extends RocketFragment implements ToolbarWithButtonHandler {
    public static final Companion Companion = new Companion();
    private static final String KEY_CHANGE_CODEWORD = "KEY_CHANGE_CODEWORD";
    private static final String KEY_TOKEN_PLASTIC = "KEY_TOKEN_PLASTIC";
    private HashMap _$_findViewCache;
    private FragmentChangeCodewordBinding binding;
    private ChangeCodeWord changeCodeWord;
    private String codeword = "";
    private String plasticToken;
    public PlasticsApi plasticsApi;
    private Subscription subscribe;

    /* compiled from: ChangeCodewordFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public final ChangeCodewordFragment newInstance(ChangeCodeWord changeCodeWord, String str) {
            Intrinsics.checkParameterIsNotNull(changeCodeWord, "changeCodeWord");
            Intrinsics.checkParameterIsNotNull(str, "plasticToken");
            ChangeCodewordFragment changeCodewordFragment = new ChangeCodewordFragment();
            Bundle bundle = new Bundle();
            bundle.putParcelable(ChangeCodewordFragment.KEY_CHANGE_CODEWORD, changeCodeWord);
            bundle.putString(ChangeCodewordFragment.KEY_TOKEN_PLASTIC, str);
            changeCodewordFragment.setArguments(bundle);
            return changeCodewordFragment;
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

    public static final /* synthetic */ FragmentChangeCodewordBinding access$getBinding$p(ChangeCodewordFragment changeCodewordFragment) {
        changeCodewordFragment = changeCodewordFragment.binding;
        if (changeCodewordFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        return changeCodewordFragment;
    }

    public final Subscription getSubscribe() {
        return this.subscribe;
    }

    public final void setSubscribe(Subscription subscription) {
        this.subscribe = subscription;
    }

    public final PlasticsApi getPlasticsApi() {
        PlasticsApi plasticsApi = this.plasticsApi;
        if (plasticsApi == null) {
            Intrinsics.throwUninitializedPropertyAccessException("plasticsApi");
        }
        return plasticsApi;
    }

    public final void setPlasticsApi(PlasticsApi plasticsApi) {
        Intrinsics.checkParameterIsNotNull(plasticsApi, "<set-?>");
        this.plasticsApi = plasticsApi;
    }

    public final void onCreate(Bundle bundle) {
        this.plasticsApi = getInjector().getPlasticApi();
        super.onCreate(bundle);
    }

    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(layoutInflater, "inflater");
        layoutInflater = FragmentChangeCodewordBinding.inflate(layoutInflater, viewGroup, null);
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "FragmentChangeCodewordBi…flater, container, false)");
        this.binding = layoutInflater;
        layoutInflater = getArguments();
        viewGroup = null;
        this.changeCodeWord = layoutInflater != null ? (ChangeCodeWord) layoutInflater.getParcelable(KEY_CHANGE_CODEWORD) : null;
        layoutInflater = getArguments();
        if (layoutInflater != null) {
            viewGroup = layoutInflater.getString(KEY_TOKEN_PLASTIC);
        }
        this.plasticToken = viewGroup;
        layoutInflater = this.binding;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        layoutInflater.setCodeword(this.codeword);
        layoutInflater = this.binding;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        layoutInflater.setToolbarBinding(new ToolbarWithButtonData(getString(C0859R.string.change_code_word), getString(C0859R.string.next), false, 0, 8, null));
        layoutInflater = this.binding;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        layoutInflater.setHandler(this);
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
        if (layoutInflater == null) {
            Intrinsics.throwNpe();
        }
        layoutInflater.setDisplayHomeAsUpEnabled(true);
        layoutInflater = this.binding;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        layoutInflater = layoutInflater.getRoot();
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "binding.root");
        return layoutInflater;
    }

    public final void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        ((RocketEditText) _$_findCachedViewById(C0859R.id.editTextCodeword)).requestFocus();
        ((RocketEditText) _$_findCachedViewById(C0859R.id.editTextCodeword)).setOnEditorActionListener((OnEditorActionListener) new ChangeCodewordFragment$onViewCreated$1(this));
        KeyboardHelper.show((RocketEditText) _$_findCachedViewById(C0859R.id.editTextCodeword));
    }

    public final void onPause() {
        unsubscribe(this.subscribe);
        super.onPause();
    }

    public final void onResume() {
        super.onResume();
        this.subscribe = RxTextView.afterTextChangeEvents((RocketEditText) _$_findCachedViewById(C0859R.id.editTextCodeword)).observeOn(AndroidSchedulers.mainThread()).subscribe((Action1) new ChangeCodewordFragment$onResume$1(this), (Action1) ChangeCodewordFragment$onResume$2.INSTANCE);
    }

    public final void nextPressed(View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        RocketEditText rocketEditText = (RocketEditText) _$_findCachedViewById(C0859R.id.editTextCodeword);
        Intrinsics.checkExpressionValueIsNotNull(rocketEditText, "editTextCodeword");
        Editable text = rocketEditText.getText();
        Intrinsics.checkExpressionValueIsNotNull(text, "editTextCodeword.text");
        if ((((CharSequence) text).length() == 0 ? 1 : 0) == 0) {
            KeyboardHelper.hide((RocketEditText) _$_findCachedViewById(C0859R.id.editTextCodeword));
            RocketFragment.showSpinner$default(this, 0, 1, null);
            PlasticsApi plasticsApi = this.plasticsApi;
            if (plasticsApi == null) {
                Intrinsics.throwUninitializedPropertyAccessException("plasticsApi");
            }
            String str = this.plasticToken;
            RocketEditText rocketEditText2 = (RocketEditText) _$_findCachedViewById(C0859R.id.editTextCodeword);
            Intrinsics.checkExpressionValueIsNotNull(rocketEditText2, "editTextCodeword");
            plasticsApi.changeCodeword(str, rocketEditText2.getText().toString()).observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.io()).subscribe((Action1) new ChangeCodewordFragment$nextPressed$1(this, view), (Action1) new ChangeCodewordFragment$nextPressed$2(this, view));
        }
    }
}
