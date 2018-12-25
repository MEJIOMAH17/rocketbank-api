package ru.rocketbank.r2d2.root.operation;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.ActivityOptionsCompat;
import android.view.View;
import com.mikepenz.materialdrawer.util.KeyboardUtil;
import java.util.HashMap;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.model.dto.operations.Location;
import ru.rocketbank.core.model.dto.operations.Miles;
import ru.rocketbank.core.model.dto.operations.Operation;
import ru.rocketbank.core.model.enums.Cobrand;
import ru.rocketbank.core.network.model.operation.FriendRequestType;
import ru.rocketbank.core.network.model.operation.OperationContextType;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.adapters.ParallaxAdapter;
import ru.rocketbank.r2d2.root.operation.data.OperationViewInputData;
import ru.rocketbank.r2d2.root.operation.data.SourceViewData;

/* compiled from: DetailOperationActivity.kt */
public class DetailOperationActivity extends AbstractDetailOperationActivity<OperationPresenter> {
    public static final Companion Companion = new Companion();
    private HashMap _$_findViewCache;
    public Operation operation;

    /* compiled from: DetailOperationActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        @TargetApi(16)
        public final void start(Context context, Operation operation, ActivityOptionsCompat activityOptionsCompat) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(operation, "operation");
            Intrinsics.checkParameterIsNotNull(activityOptionsCompat, "options");
            Intent intent = new Intent(context, DetailOperationActivity.class);
            intent.putExtra(AbstractDetailOperationActivity.Companion.getOPERATION_EXTRA(), operation);
            context.startActivity(intent, activityOptionsCompat.toBundle());
        }

        public final void start(Context context, Operation operation) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(operation, "operation");
            Intent intent = new Intent(context, DetailOperationActivity.class);
            intent.putExtra(AbstractDetailOperationActivity.Companion.getOPERATION_EXTRA(), operation);
            context.startActivity(intent);
        }
    }

    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[OperationContextType.values().length];
            $EnumSwitchMapping$0 = iArr;
            iArr[OperationContextType.InternalCashInRequest.ordinal()] = 1;
            $EnumSwitchMapping$0[OperationContextType.InternalCashOutRequest.ordinal()] = 2;
        }
    }

    public void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        view = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), view);
        return view;
    }

    public String getComment() {
        Operation operation = this.operation;
        if (operation == null) {
            Intrinsics.throwUninitializedPropertyAccessException("operation");
        }
        String comment = operation.getComment();
        return comment == null ? "" : comment;
    }

    public final Operation getOperation() {
        Operation operation = this.operation;
        if (operation == null) {
            Intrinsics.throwUninitializedPropertyAccessException("operation");
        }
        return operation;
    }

    public final void setOperation(Operation operation) {
        Intrinsics.checkParameterIsNotNull(operation, "<set-?>");
        this.operation = operation;
    }

    protected void onCreate(Bundle bundle) {
        Operation operation = (Operation) getIntent().getParcelableExtra(AbstractDetailOperationActivity.Companion.getOPERATION_EXTRA());
        if (operation == null) {
            AnalyticsManager.logException((Throwable) new IllegalAccessException("Empty operation received"));
            finish();
            return;
        }
        this.operation = operation;
        super.onCreate(bundle);
    }

    public void onOperationUpdate(OperationViewInputData operationViewInputData) {
        Intrinsics.checkParameterIsNotNull(operationViewInputData, "operationViewInputData");
        super.onOperationUpdate(operationViewInputData);
        getBinding().operationIcon.setOperation(operationViewInputData.getOperation());
        getBinding().iconImage.setOperation(operationViewInputData.getOperation());
        View sputnik = getSputnik();
        operationViewInputData = operationViewInputData.getOperation().getSputnik();
        int i = 0;
        if ((operationViewInputData != null ? operationViewInputData.booleanValue() : null) == null) {
            i = 8;
        }
        sputnik.setVisibility(i);
    }

    protected void onPause() {
        KeyboardUtil.hideKeyboard(this);
        super.onPause();
    }

    public void fillFullAdapter(OperationViewInputData operationViewInputData) {
        Intrinsics.checkParameterIsNotNull(operationViewInputData, "viewInputData");
        Operation operation = operationViewInputData.getOperation();
        ParallaxAdapter parallaxAdapter = getParallaxAdapter();
        if (parallaxAdapter == null) {
            return;
        }
        if (parallaxAdapter == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.root.operation.OperationAdapter");
        }
        OperationAdapter operationAdapter = (OperationAdapter) parallaxAdapter;
        operationAdapter.clearAll();
        operationAdapter.addActions(operation);
        if (operation.getFriendTransferType() != FriendRequestType.None) {
            switch (WhenMappings.$EnumSwitchMapping$0[operation.getContextType().ordinal()]) {
                case 1:
                    operationAdapter.addOut();
                    break;
                case 2:
                    operationAdapter.addIn();
                    break;
                default:
                    break;
            }
        }
        operationAdapter.addTag(operation);
        SourceViewData sourceData = operationViewInputData.getSourceData();
        if (sourceData != null) {
            String string = getString(C0859R.string.refill_from);
            Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.refill_from)");
            operationAdapter.addDelimiter(string);
            operationAdapter.addSource(sourceData);
        }
        Location location = operation.getLocation();
        if (!(location == null || location.isEmpty())) {
            operationAdapter.addMap(operation);
        }
        if (Cobrand.Companion.fromCobrandName(this.authorization.getUserData().realmGet$cobrandName()) != Cobrand.ONETWOTRIP) {
            operationViewInputData = operationViewInputData.getOperationContext();
            if (operationViewInputData != null) {
                operationViewInputData = operationViewInputData.getMiles();
                if (operationViewInputData != null) {
                    Object obj;
                    if (!Intrinsics.areEqual(Miles.STATUS_CONFIRMED, operationViewInputData.getStatus())) {
                        if (!Intrinsics.areEqual(Miles.STATUS_COMPLETED, operationViewInputData.getStatus())) {
                            obj = null;
                            if (operationViewInputData.isEnoughMiles() == null && obj == null) {
                                operationAdapter.addCompensationToDo(operation);
                            } else if (obj != null) {
                                operationAdapter.addCompensated(operation);
                            }
                        }
                    }
                    obj = 1;
                    if (operationViewInputData.isEnoughMiles() == null) {
                    }
                    if (obj != null) {
                        operationAdapter.addCompensated(operation);
                    }
                }
            }
        }
        operationViewInputData = getString(C0859R.string.operation_statistics_stat);
        Intrinsics.checkExpressionValueIsNotNull(operationViewInputData, "getString(R.string.operation_statistics_stat)");
        operationAdapter.addDelimiter(operationViewInputData);
        operationViewInputData = getStatisticsAdapter();
        String string2 = getString(C0859R.string.watch_all);
        Intrinsics.checkExpressionValueIsNotNull(string2, "getString(R.string.watch_all)");
        String string3 = getString(C0859R.string.collapse);
        Intrinsics.checkExpressionValueIsNotNull(string3, "getString(R.string.collapse)");
        operationAdapter.addStatistics(operationViewInputData, string2, string3);
        operationViewInputData = getString(C0859R.string.operation_dynamic);
        Intrinsics.checkExpressionValueIsNotNull(operationViewInputData, "getString(R.string.operation_dynamic)");
        operationAdapter.addDelimiter(operationViewInputData);
        operationAdapter.addBarChart(getBarchartAdapter());
    }

    public OperationPresenter createPresenter() {
        Operation operation = this.operation;
        if (operation == null) {
            Intrinsics.throwUninitializedPropertyAccessException("operation");
        }
        return new OperationPresenter(operation);
    }
}
