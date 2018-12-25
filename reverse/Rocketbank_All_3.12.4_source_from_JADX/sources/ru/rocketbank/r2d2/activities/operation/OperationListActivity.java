package ru.rocketbank.r2d2.activities.operation;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.v7.util.SortedList;
import android.support.v7.util.SortedList.Callback;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.LayoutManager;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.github.ksoichiro.android.observablescrollview.ObservableRecyclerView;
import com.github.ksoichiro.android.observablescrollview.ObservableScrollViewCallbacks;
import com.github.ksoichiro.android.observablescrollview.ScrollState;
import java.util.HashMap;
import jp.wasabeef.glide.transformations.CropCircleTransformation;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.loader.OperationLoader;
import ru.rocketbank.core.model.AbstractOperation;
import ru.rocketbank.core.model.MoneyData;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.model.dto.operations.Operation;
import ru.rocketbank.core.network.model.FeedItem;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.core.utils.MoneyFormatter;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.activities.SecuredActivity;
import ru.rocketbank.r2d2.activities.operation.viewholder.OperationDetailViewHolder;
import ru.rocketbank.r2d2.utils.FeedItemCallback;
import rx.android.schedulers.AndroidSchedulers;

/* compiled from: OperationListActivity.kt */
public final class OperationListActivity extends SecuredActivity implements ObservableScrollViewCallbacks {
    public static final Companion Companion = new Companion();
    private static final String OPEATION = "OPEATION";
    private final int STATUS_NONE;
    private final String TAG = "OperationListActivity";
    private HashMap _$_findViewCache;
    private FeedAdapter adapter;
    private CropCircleTransformation cropCircleTransformation;
    private boolean isListLoadingInProgress;
    private MoneyFormatter operationFormatter;
    private OperationLoader operationLoader;
    public ObservableRecyclerView operationView;
    private UserModel userModel;

    /* compiled from: OperationListActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        public final String getOPEATION() {
            return OperationListActivity.OPEATION;
        }
    }

    /* compiled from: OperationListActivity.kt */
    public static final class FeedAdapter extends Adapter<OperationDetailViewHolder> {
        private FeedItem bottomItem;
        private final CropCircleTransformation cropCircleTransformation;
        private final SortedList<FeedItem> feedItems = new SortedList(FeedItem.class, (Callback) new FeedItemCallback(this, null));
        private final LayoutInflater layoutInflater;
        private final OperationListActivity operationListActivity;

        public final OperationListActivity getOperationListActivity() {
            return this.operationListActivity;
        }

        public final CropCircleTransformation getCropCircleTransformation() {
            return this.cropCircleTransformation;
        }

        public FeedAdapter(OperationListActivity operationListActivity, CropCircleTransformation cropCircleTransformation, LayoutInflater layoutInflater) {
            Intrinsics.checkParameterIsNotNull(operationListActivity, "operationListActivity");
            Intrinsics.checkParameterIsNotNull(cropCircleTransformation, "cropCircleTransformation");
            Intrinsics.checkParameterIsNotNull(layoutInflater, "layoutInflater");
            this.operationListActivity = operationListActivity;
            this.cropCircleTransformation = cropCircleTransformation;
            this.layoutInflater = layoutInflater;
        }

        public final OperationDetailViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            Intrinsics.checkParameterIsNotNull(viewGroup, "parent");
            viewGroup = this.layoutInflater.inflate(C0859R.layout.feed_item_operation, viewGroup, false);
            Activity activity = this.operationListActivity;
            Intrinsics.checkExpressionValueIsNotNull(viewGroup, "view");
            return new OperationDetailViewHolder(activity, viewGroup);
        }

        private final FeedItem getItem(int i) {
            i = this.feedItems.get(i);
            Intrinsics.checkExpressionValueIsNotNull(i, "feedItems.get(position )");
            return (FeedItem) i;
        }

        public final void onBindViewHolder(OperationDetailViewHolder operationDetailViewHolder, int i) {
            Intrinsics.checkParameterIsNotNull(operationDetailViewHolder, "holder");
            i = getItem(i);
            AbstractOperation operation = i.getOperation();
            if (operation == null) {
                throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.model.dto.operations.Operation");
            }
            onBindOperation(operationDetailViewHolder, i, (Operation) operation);
        }

        private final void onBindOperation(OperationDetailViewHolder operationDetailViewHolder, FeedItem feedItem, Operation operation) {
            operationDetailViewHolder.hideDayStart();
            MoneyData money = operation.getMoney();
            operationDetailViewHolder.setContent(operation.getComment());
            operationDetailViewHolder.setName(operation.getDetails());
            operationDetailViewHolder.setOperation(operation, feedItem);
            operationDetailViewHolder.setNoAction();
            feedItem = OperationListActivity.access$getOperationFormatter$p(this.operationListActivity);
            if (money == null) {
                Intrinsics.throwNpe();
            }
            double amount = (double) ((float) money.getAmount());
            String currencyCode = money.getCurrencyCode();
            Intrinsics.checkExpressionValueIsNotNull(currencyCode, "moneyData.currencyCode");
            operationDetailViewHolder.setAmount(feedItem.format(amount, currencyCode, false));
        }

        public final int getItemCount() {
            int cleanSize = getCleanSize();
            return this.bottomItem != null ? cleanSize + 1 : cleanSize;
        }

        public final int getCleanSize() {
            return this.feedItems.size();
        }

        public final void addItem(FeedItem feedItem) {
            Intrinsics.checkParameterIsNotNull(feedItem, "loadingItem");
            int indexOf = this.feedItems.indexOf(feedItem);
            if (indexOf != -1) {
                this.feedItems.updateItemAt(indexOf, feedItem);
            } else {
                this.feedItems.add(feedItem);
            }
        }

        public final void addBottom(FeedItem feedItem) {
            Intrinsics.checkParameterIsNotNull(feedItem, "feedItem");
            this.bottomItem = feedItem;
            notifyItemInserted(getCleanSize());
        }

        public final void removeBottom() {
            this.bottomItem = null;
            notifyItemRemoved(getCleanSize() - 1);
        }

        public final void removeItem(FeedItem feedItem) {
            Intrinsics.checkParameterIsNotNull(feedItem, "feedItem");
            feedItem = this.feedItems.indexOf(feedItem);
            if (feedItem != -1) {
                this.feedItems.removeItemAt(feedItem);
                notifyItemRemoved(feedItem);
            }
        }

        public final void clear() {
            this.feedItems.clear();
            notifyDataSetChanged();
        }

        public final void clearTop() {
            notifyDataSetChanged();
            this.operationListActivity.getOperationView().requestLayout();
        }

        public final void changeItem(FeedItem feedItem) {
            Intrinsics.checkParameterIsNotNull(feedItem, "feedItem");
            int indexOf = this.feedItems.indexOf(feedItem);
            if (indexOf >= 0) {
                this.feedItems.updateItemAt(indexOf, feedItem);
            }
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

    public final void onDownMotionEvent() {
    }

    public final void onUpOrCancelMotionEvent(ScrollState scrollState) {
    }

    public static final /* synthetic */ FeedAdapter access$getAdapter$p(OperationListActivity operationListActivity) {
        operationListActivity = operationListActivity.adapter;
        if (operationListActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        }
        return operationListActivity;
    }

    public static final /* synthetic */ MoneyFormatter access$getOperationFormatter$p(OperationListActivity operationListActivity) {
        operationListActivity = operationListActivity.operationFormatter;
        if (operationListActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("operationFormatter");
        }
        return operationListActivity;
    }

    public final void onScrollChanged(int i, boolean z, boolean z2) {
        loadNextPageIfNeeded();
    }

    public final ObservableRecyclerView getOperationView() {
        ObservableRecyclerView observableRecyclerView = this.operationView;
        if (observableRecyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("operationView");
        }
        return observableRecyclerView;
    }

    public final void setOperationView(ObservableRecyclerView observableRecyclerView) {
        Intrinsics.checkParameterIsNotNull(observableRecyclerView, "<set-?>");
        this.operationView = observableRecyclerView;
    }

    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) C0859R.layout.activity_operation_list);
        bundle = RocketApplication.Companion.getInjector().getCurrencyManager();
        View findViewById = findViewById(C0859R.id.operation);
        if (findViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type com.github.ksoichiro.android.observablescrollview.ObservableRecyclerView");
        }
        this.operationView = (ObservableRecyclerView) findViewById;
        Context context = this;
        Authorization authorization = this.authorization;
        Intrinsics.checkExpressionValueIsNotNull(authorization, "authorization");
        this.operationFormatter = new MoneyFormatter(context, authorization, bundle);
        this.cropCircleTransformation = new CropCircleTransformation(context);
        this.operationLoader = this.feedManager.getOperationLoader();
        bundle = new LinearLayoutManager(context);
        ObservableRecyclerView observableRecyclerView = this.operationView;
        if (observableRecyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("operationView");
        }
        observableRecyclerView.setLayoutManager((LayoutManager) bundle);
        CropCircleTransformation cropCircleTransformation = this.cropCircleTransformation;
        if (cropCircleTransformation == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cropCircleTransformation");
        }
        LayoutInflater layoutInflater = getLayoutInflater();
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "layoutInflater");
        this.adapter = new FeedAdapter(this, cropCircleTransformation, layoutInflater);
        bundle = this.operationView;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("operationView");
        }
        FeedAdapter feedAdapter = this.adapter;
        if (feedAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        }
        bundle.setAdapter(feedAdapter);
        bundle = this.operationView;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("operationView");
        }
        bundle.setScrollViewCallbacks(this);
    }

    protected final void onResume() {
        super.onResume();
        setTitle(getString(C0859R.string.operation_list));
        OperationLoader operationLoader = this.operationLoader;
        if (operationLoader == null) {
            Intrinsics.throwUninitializedPropertyAccessException("operationLoader");
        }
        operationLoader.loadPage(0).observeOn(AndroidSchedulers.mainThread()).subscribe(new OperationListActivity$onResume$1(this));
    }

    protected final void onPause() {
        super.onPause();
    }

    public final void onUserModel(UserModel userModel) {
        super.onUserModel(userModel);
        if (userModel == null) {
            Intrinsics.throwNpe();
        }
        this.userModel = userModel;
    }

    private final void loadNextPageIfNeeded() {
        ObservableRecyclerView observableRecyclerView = this.operationView;
        if (observableRecyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("operationView");
        }
        LayoutManager layoutManager = observableRecyclerView.getLayoutManager();
        if (layoutManager == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.support.v7.widget.LinearLayoutManager");
        }
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
        int findFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
        int findLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition();
        FeedAdapter feedAdapter = this.adapter;
        if (feedAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        }
        if (((double) (feedAdapter.getItemCount() - findLastVisibleItemPosition)) < ((double) (findLastVisibleItemPosition - findFirstVisibleItemPosition)) * 1.5d && !this.isListLoadingInProgress) {
            requestNextPage();
        }
    }

    private final void requestNextPage() {
        OperationLoader operationLoader = this.operationLoader;
        if (operationLoader == null) {
            Intrinsics.throwUninitializedPropertyAccessException("operationLoader");
        }
        if (!operationLoader.isLastLoaded()) {
            Log.v(this.TAG, "load next page");
            loadNext();
        }
    }

    private final void loadNext() {
        if (!this.isListLoadingInProgress) {
            OperationLoader operationLoader = this.operationLoader;
            if (operationLoader == null) {
                Intrinsics.throwUninitializedPropertyAccessException("operationLoader");
            }
            operationLoader.loadNextPage().observeOn(AndroidSchedulers.mainThread()).subscribe(new OperationListActivity$loadNext$1(this));
        }
    }
}
