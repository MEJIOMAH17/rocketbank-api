package ru.rocketbank.r2d2.root.chat;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RatingBar;
import com.jakewharton.rxbinding.view.RxView;
import java.util.HashMap;
import jp.wasabeef.glide.transformations.CropCircleTransformation;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.api.AgentsApi;
import ru.rocketbank.core.network.api.RocketAPI;
import ru.rocketbank.core.network.model.Rating;
import ru.rocketbank.core.widgets.RocketEditText;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import rx.Subscriber;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Action1;

/* compiled from: RatingDialogFragment.kt */
public final class RatingDialogFragment extends DialogFragment {
    public static final Companion Companion = new Companion();
    private static final String RATING = "RATING";
    private HashMap _$_findViewCache;
    public AgentsApi agentApi;
    private RocketTextView cancelView;
    private RocketEditText commentView;
    private CropCircleTransformation cropCircleTransformation;
    private ImageView imageView;
    private RocketTextView okView;
    private ProgressDialog progressDialog;
    private Rating rating;
    private RatingBar ratingBar;
    private Subscription ratingSubscription;
    private RefreshListener refreshListener;
    public RocketAPI rocketAPI;
    private RocketTextView titleView;

    /* compiled from: RatingDialogFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public final RatingDialogFragment getInstance(Rating rating) {
            Intrinsics.checkParameterIsNotNull(rating, "rating");
            RatingDialogFragment ratingDialogFragment = new RatingDialogFragment();
            Bundle bundle = new Bundle();
            bundle.putParcelable(RatingDialogFragment.RATING, rating);
            ratingDialogFragment.setArguments(bundle);
            return ratingDialogFragment;
        }
    }

    /* compiled from: RatingDialogFragment.kt */
    public interface RefreshListener {
        void refresh(int i, String str);
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

    public static final /* synthetic */ RocketEditText access$getCommentView$p(RatingDialogFragment ratingDialogFragment) {
        ratingDialogFragment = ratingDialogFragment.commentView;
        if (ratingDialogFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("commentView");
        }
        return ratingDialogFragment;
    }

    public static final /* synthetic */ CropCircleTransformation access$getCropCircleTransformation$p(RatingDialogFragment ratingDialogFragment) {
        ratingDialogFragment = ratingDialogFragment.cropCircleTransformation;
        if (ratingDialogFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cropCircleTransformation");
        }
        return ratingDialogFragment;
    }

    public static final /* synthetic */ ImageView access$getImageView$p(RatingDialogFragment ratingDialogFragment) {
        ratingDialogFragment = ratingDialogFragment.imageView;
        if (ratingDialogFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("imageView");
        }
        return ratingDialogFragment;
    }

    public static final /* synthetic */ RatingBar access$getRatingBar$p(RatingDialogFragment ratingDialogFragment) {
        ratingDialogFragment = ratingDialogFragment.ratingBar;
        if (ratingDialogFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("ratingBar");
        }
        return ratingDialogFragment;
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

    public final AgentsApi getAgentApi() {
        AgentsApi agentsApi = this.agentApi;
        if (agentsApi == null) {
            Intrinsics.throwUninitializedPropertyAccessException("agentApi");
        }
        return agentsApi;
    }

    public final void setAgentApi(AgentsApi agentsApi) {
        Intrinsics.checkParameterIsNotNull(agentsApi, "<set-?>");
        this.agentApi = agentsApi;
    }

    public final void setRefreshListener(RefreshListener refreshListener) {
        Intrinsics.checkParameterIsNotNull(refreshListener, "refreshListener");
        this.refreshListener = refreshListener;
    }

    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(layoutInflater, "inflater");
        layoutInflater = layoutInflater.inflate(C0859R.layout.layout_rating_dialog, viewGroup, false);
        viewGroup = layoutInflater.findViewById(C0859R.id.title);
        if (viewGroup == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.titleView = (RocketTextView) viewGroup;
        viewGroup = layoutInflater.findViewById(C0859R.id.image);
        if (viewGroup == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.ImageView");
        }
        this.imageView = (ImageView) viewGroup;
        viewGroup = layoutInflater.findViewById(C0859R.id.rating);
        if (viewGroup == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.RatingBar");
        }
        this.ratingBar = (RatingBar) viewGroup;
        viewGroup = layoutInflater.findViewById(C0859R.id.comment);
        if (viewGroup == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketEditText");
        }
        this.commentView = (RocketEditText) viewGroup;
        viewGroup = layoutInflater.findViewById(C0859R.id.ok);
        if (viewGroup == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.okView = (RocketTextView) viewGroup;
        viewGroup = layoutInflater.findViewById(C0859R.id.cancel);
        if (viewGroup == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.cancelView = (RocketTextView) viewGroup;
        this.rocketAPI = RocketApplication.Companion.getInjector().getRocketApi();
        this.agentApi = RocketApplication.Companion.getInjector().getAgentsApi();
        return layoutInflater;
    }

    public final void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.cropCircleTransformation = new CropCircleTransformation(getContext());
        view = getArguments();
        if (view == null) {
            Intrinsics.throwNpe();
        }
        this.rating = (Rating) view.getParcelable(RATING);
        view = this.titleView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("titleView");
        }
        bundle = this.rating;
        if (bundle == null) {
            Intrinsics.throwNpe();
        }
        view.setText(bundle.getText());
        view = this.okView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("okView");
        }
        RxView.clicks(view).subscribe((Action1) new RatingDialogFragment$onViewCreated$1(this));
        view = this.cancelView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cancelView");
        }
        RxView.clicks(view).subscribe((Action1) new RatingDialogFragment$onViewCreated$2(this));
        view = this.rocketAPI;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rocketAPI");
        }
        bundle = this.rating;
        if (bundle == null) {
            Intrinsics.throwNpe();
        }
        view.getAgents(bundle.getPermalink()).observeOn(AndroidSchedulers.mainThread()).subscribe((Subscriber) new RatingDialogFragment$onViewCreated$3(this));
    }

    public final Dialog onCreateDialog(Bundle bundle) {
        bundle = super.onCreateDialog(bundle);
        bundle.requestWindowFeature(1);
        Intrinsics.checkExpressionValueIsNotNull(bundle, "dialog");
        bundle.getWindow().setBackgroundDrawable(new ColorDrawable(0));
        return bundle;
    }

    private final void hideProgress() {
        if (this.progressDialog != null) {
            ProgressDialog progressDialog = this.progressDialog;
            if (progressDialog == null) {
                Intrinsics.throwNpe();
            }
            progressDialog.dismiss();
            this.progressDialog = null;
        }
    }

    public final void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
    }

    private final void showProgressExecution() {
        ProgressDialog progressDialog = new ProgressDialog(getActivity());
        progressDialog.setMessage(getResources().getString(C0859R.string.action_doing));
        progressDialog.setCancelable(false);
        progressDialog.setOnDismissListener(new C1616x605faffa(this));
        progressDialog.show();
        this.progressDialog = progressDialog;
    }
}
