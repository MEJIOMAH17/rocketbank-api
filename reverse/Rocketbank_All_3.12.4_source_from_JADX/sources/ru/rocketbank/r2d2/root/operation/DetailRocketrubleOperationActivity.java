package ru.rocketbank.r2d2.root.operation;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.ActivityOptionsCompat;
import android.view.View;
import java.util.HashMap;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.model.dto.operations.Location;
import ru.rocketbank.core.model.dto.operations.Operation;
import ru.rocketbank.core.network.model.ContextShopItem;
import ru.rocketbank.core.network.model.operation.OperationContextType;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.adapters.ParallaxAdapter;
import ru.rocketbank.r2d2.root.operation.data.OperationViewInputData;
import ru.rocketbank.r2d2.root.operation.data.RocketrubleViewInputData;

/* compiled from: DetailRocketrubleOperationActivity.kt */
public final class DetailRocketrubleOperationActivity extends AbstractDetailOperationActivity<RocketRubleOperationPresenter> {
    public static final Companion Companion = new Companion();
    private HashMap _$_findViewCache;
    public Operation operation;

    /* compiled from: DetailRocketrubleOperationActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        @TargetApi(16)
        public final void start(Context context, Operation operation, ActivityOptionsCompat activityOptionsCompat) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(operation, "operation");
            Intrinsics.checkParameterIsNotNull(activityOptionsCompat, "options");
            Intent intent = new Intent(context, DetailRocketrubleOperationActivity.class);
            intent.putExtra(AbstractDetailOperationActivity.Companion.getOPERATION_EXTRA(), operation);
            context.startActivity(intent, activityOptionsCompat.toBundle());
        }

        public final void start(Context context, Operation operation) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(operation, "operation");
            Intent intent = new Intent(context, DetailRocketrubleOperationActivity.class);
            intent.putExtra(AbstractDetailOperationActivity.Companion.getOPERATION_EXTRA(), operation);
            context.startActivity(intent);
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
        if (view != null) {
            return view;
        }
        view = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), view);
        return view;
    }

    public final void onError() {
    }

    public final String getComment() {
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

    public final RocketRubleOperationPresenter createPresenter() {
        Operation operation = this.operation;
        if (operation == null) {
            Intrinsics.throwUninitializedPropertyAccessException("operation");
        }
        return new RocketRubleOperationPresenter(operation);
    }

    public final void onCommentUpdateFinished(boolean z, String str) {
        Intrinsics.checkParameterIsNotNull(str, "comment");
        OperationAdapter operationAdapter = (OperationAdapter) getParallaxAdapter();
        if (operationAdapter != null) {
            operationAdapter.getAdapterData().getUpdateInProgress().set(false);
            operationAdapter.getAdapterData().getSaveActionsActive().set(z ^ 1);
            if (z) {
                operationAdapter.getAdapterData().setCurrentComment(str);
            }
        }
    }

    protected final void onCreate(Bundle bundle) {
        Operation operation = (Operation) getIntent().getParcelableExtra(AbstractDetailOperationActivity.Companion.getOPERATION_EXTRA());
        if (operation == null) {
            AnalyticsManager.logException((Throwable) new IllegalAccessException("Empty operation received"));
            finish();
            return;
        }
        this.operation = operation;
        super.onCreate(bundle);
    }

    public final void onOperationUpdate(OperationViewInputData operationViewInputData) {
        Intrinsics.checkParameterIsNotNull(operationViewInputData, "viewInputData");
        super.onOperationUpdate(operationViewInputData);
        RocketrubleViewInputData rocketrubleViewInputData = (RocketrubleViewInputData) operationViewInputData;
        getBinding().operationIcon.setRocketRubleOperation(rocketrubleViewInputData.getOperation());
        getBinding().iconImage.setRocketRubleOperation(rocketrubleViewInputData.getOperation());
    }

    public final void fillFullAdapter(OperationViewInputData operationViewInputData) {
        Intrinsics.checkParameterIsNotNull(operationViewInputData, "viewInputData");
        RocketrubleViewInputData rocketrubleViewInputData = (RocketrubleViewInputData) operationViewInputData;
        Operation operation = rocketrubleViewInputData.getOperation();
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
        String description = rocketrubleViewInputData.getDescription();
        if (description != null) {
            if ((((CharSequence) description).length() == 0 ? 1 : null) == null) {
                operationAdapter.addDescription(description, new C1830xcc5f0052(operationAdapter, this, operation, operationViewInputData));
            }
        }
        if (operation.getContextType() != OperationContextType.RocketRubleIn) {
            operationAdapter.addTag(operation);
        } else {
            operationAdapter.addDescription("", new C1831xcc5f0053(this, operation, operationViewInputData));
        }
        List<ContextShopItem> shopItems = rocketrubleViewInputData.getShopItems();
        if (!(shopItems == null || shopItems.isEmpty())) {
            String string = getString(C0859R.string.operation_shop_items_title);
            Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.operation_shop_items_title)");
            operationAdapter.addDelimiter(string);
            for (ContextShopItem addShopItem : shopItems) {
                operationAdapter.addShopItem(addShopItem);
            }
        }
        Operation parentOperation = rocketrubleViewInputData.getParentOperation();
        if (parentOperation != null) {
            description = getString(C0859R.string.compensation_parent_operation);
            Intrinsics.checkExpressionValueIsNotNull(description, "getString(R.string.compensation_parent_operation)");
            operationAdapter.addDelimiter(description);
            operationAdapter.addParentOperationItem(parentOperation);
        }
        Location location = operation.getLocation();
        if (!(location == null || location.isEmpty())) {
            operationAdapter.addMap(operation);
        }
        if (operationViewInputData.getTotal() != null) {
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
    }
}
