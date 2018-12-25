package ru.rocketbank.r2d2.root.analytics;

import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import java.util.Calendar;
import java.util.HashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.api.AnalyticsApi;
import ru.rocketbank.core.widgets.RocketButton;
import ru.rocketbank.core.widgets.WheelView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import rx.Subscription;
import rx.functions.Action1;

/* compiled from: AnalyticsPeriodChooseDialog.kt */
public final class AnalyticsPeriodChooseDialog extends DialogFragment {
    public static final Companion Companion = new Companion();
    public static final String FIRST_OPERATION_DATE = "FIRST_OPERATION_DATE";
    public static final String JOINT_IDS = "JOINT_IDS";
    public static final String MONTH = "MONTH";
    public static final String YEAR = "YEAR";
    private HashMap _$_findViewCache;
    public AnalyticsApi analyticsApi;
    private Function2<? super Integer, ? super Integer, Unit> callback;
    private Calendar firstOperationDate;
    private int[] jointIds;
    private int month;
    private Subscription subscription;
    private int year;

    /* compiled from: AnalyticsPeriodChooseDialog.kt */
    public static final class Companion {
        private Companion() {
        }

        public final AnalyticsPeriodChooseDialog create(int i, int i2, Calendar calendar, int[] iArr) {
            AnalyticsPeriodChooseDialog analyticsPeriodChooseDialog = new AnalyticsPeriodChooseDialog();
            Bundle bundle = new Bundle();
            bundle.putInt(AnalyticsPeriodChooseDialog.MONTH, i);
            bundle.putInt(AnalyticsPeriodChooseDialog.YEAR, i2);
            bundle.putIntArray(AnalyticsPeriodChooseDialog.JOINT_IDS, iArr);
            if (calendar != null) {
                bundle.putLong(AnalyticsPeriodChooseDialog.FIRST_OPERATION_DATE, calendar.getTimeInMillis());
            }
            analyticsPeriodChooseDialog.setArguments(bundle);
            return analyticsPeriodChooseDialog;
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

    public final AnalyticsApi getAnalyticsApi() {
        AnalyticsApi analyticsApi = this.analyticsApi;
        if (analyticsApi == null) {
            Intrinsics.throwUninitializedPropertyAccessException("analyticsApi");
        }
        return analyticsApi;
    }

    public final void setAnalyticsApi(AnalyticsApi analyticsApi) {
        Intrinsics.checkParameterIsNotNull(analyticsApi, "<set-?>");
        this.analyticsApi = analyticsApi;
    }

    public final Calendar getFirstOperationDate() {
        return this.firstOperationDate;
    }

    public final void setFirstOperationDate(Calendar calendar) {
        this.firstOperationDate = calendar;
    }

    public final Subscription getSubscription() {
        return this.subscription;
    }

    public final void setSubscription(Subscription subscription) {
        this.subscription = subscription;
    }

    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.analyticsApi = RocketApplication.Companion.getInjector().getAnalyticsApi();
    }

    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(layoutInflater, "inflater");
        layoutInflater = layoutInflater.inflate(C0859R.layout.dialog_fragment_analytics_period_choose, viewGroup, false);
        viewGroup = Calendar.getInstance();
        bundle = getArguments();
        this.month = bundle != null ? bundle.getInt(MONTH) : viewGroup.get(2);
        bundle = getArguments();
        this.year = bundle != null ? bundle.getInt(YEAR) : viewGroup.get(1);
        viewGroup = getArguments();
        if (viewGroup != null && viewGroup.containsKey(FIRST_OPERATION_DATE) == 1) {
            this.firstOperationDate = Calendar.getInstance();
            viewGroup = this.firstOperationDate;
            if (viewGroup != null) {
                bundle = getArguments();
                if (bundle == null) {
                    Intrinsics.throwNpe();
                }
                viewGroup.setTimeInMillis(bundle.getLong(FIRST_OPERATION_DATE));
            }
        }
        viewGroup = getArguments();
        this.jointIds = viewGroup != null ? viewGroup.getIntArray(JOINT_IDS) : null;
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "view");
        WheelView wheelView = (WheelView) layoutInflater.findViewById(C0859R.id.leftWheel);
        Intrinsics.checkExpressionValueIsNotNull(wheelView, "view.leftWheel");
        wheelView.setVisibility(8);
        wheelView = (WheelView) layoutInflater.findViewById(C0859R.id.rightWheel);
        Intrinsics.checkExpressionValueIsNotNull(wheelView, "view.rightWheel");
        fillYearWheel(wheelView);
        ((RocketButton) layoutInflater.findViewById(C0859R.id.buttonOk)).setOnClickListener((OnClickListener) new AnalyticsPeriodChooseDialog$onCreateView$1(this));
        ((RocketButton) layoutInflater.findViewById(C0859R.id.buttonCancel)).setOnClickListener((OnClickListener) new AnalyticsPeriodChooseDialog$onCreateView$2(this));
        return layoutInflater;
    }

    public final void onPause() {
        Subscription subscription = this.subscription;
        if (!(subscription == null || subscription.isUnsubscribed())) {
            subscription = this.subscription;
            if (subscription != null) {
                subscription.unsubscribe();
            }
            this.subscription = null;
        }
        super.onPause();
    }

    private final void fillYearWheel(WheelView wheelView) {
        ru.rocketbank.r2d2.root.analytics.AnalyticsMonthsManager.Companion companion = AnalyticsMonthsManager.Companion;
        AnalyticsApi analyticsApi = this.analyticsApi;
        if (analyticsApi == null) {
            Intrinsics.throwUninitializedPropertyAccessException("analyticsApi");
        }
        this.subscription = companion.getAnalyticsManager(analyticsApi, this.jointIds, this.firstOperationDate).subscribe((Action1) new AnalyticsPeriodChooseDialog$fillYearWheel$1(this, wheelView), (Action1) new AnalyticsPeriodChooseDialog$fillYearWheel$2(this));
    }

    private final void onCancelClick() {
        dismiss();
    }

    private final void onOkClick() {
        Function2 function2 = this.callback;
        if (function2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("callback");
        }
        function2.invoke(Integer.valueOf(this.month), Integer.valueOf(this.year));
        dismiss();
    }

    public final void onChooseDate(Function2<? super Integer, ? super Integer, Unit> function2) {
        Intrinsics.checkParameterIsNotNull(function2, "callback");
        this.callback = function2;
    }
}
