package ru.rocketbank.r2d2.root.operation;

import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Lazy;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import ru.rocketbank.core.model.dto.operations.Merchant;
import ru.rocketbank.core.model.dto.operations.Operation;
import ru.rocketbank.core.network.model.ContextShopItem;
import ru.rocketbank.core.network.model.operation.FriendRequestType;
import ru.rocketbank.core.utils.MoneyFormatter;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.adapters.ParallaxAdapter;
import ru.rocketbank.r2d2.data.binding.parallax.ParallaxData;
import ru.rocketbank.r2d2.root.feed.viewholder.OnActionListener;
import ru.rocketbank.r2d2.root.operation.OperationContract.Presenter;
import ru.rocketbank.r2d2.root.operation.data.SourceViewData;
import ru.rocketbank.r2d2.root.operation.vh.ActionsViewHolder;
import ru.rocketbank.r2d2.root.operation.vh.CommentViewHolder;
import ru.rocketbank.r2d2.root.operation.vh.CommonOperationData;
import ru.rocketbank.r2d2.root.operation.vh.DescriptionViewHolder;
import ru.rocketbank.r2d2.root.operation.vh.IncommingOperation;
import ru.rocketbank.r2d2.root.operation.vh.MapViewHolder;
import ru.rocketbank.r2d2.root.operation.vh.MilesCompensated;
import ru.rocketbank.r2d2.root.operation.vh.MilesToCompensate;
import ru.rocketbank.r2d2.root.operation.vh.OperationParentViewHolder;
import ru.rocketbank.r2d2.root.operation.vh.RequestOperation;
import ru.rocketbank.r2d2.root.operation.vh.ShopItemViewHolder;
import ru.rocketbank.r2d2.root.operation.vh.SourceViewHolder;
import ru.rocketbank.r2d2.widgets.OperationsUtils;
import ru.rocketbank.r2d2.widgets.recycler.parallax.GenericViewHolder;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.ParallaxItem;

/* compiled from: OperationAdapter.kt */
public final class OperationAdapter extends ParallaxAdapter {
    static final /* synthetic */ KProperty[] $$delegatedProperties = new KProperty[]{Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(OperationAdapter.class), "operationFormatter", "getOperationFormatter()Lru/rocketbank/core/utils/MoneyFormatter;"))};
    public static final Companion Companion = new Companion();
    public static final int VIEW_TYPE_DESCRIPTION = 32768;
    public static final int VIEW_TYPE_IN = 28672;
    public static final int VIEW_TYPE_MILES = 4096;
    public static final int VIEW_TYPE_MILES_COMPENSATED = 8192;
    public static final int VIEW_TYPE_OPERATION_ACTIONS = 57344;
    public static final int VIEW_TYPE_OPERATION_MAP = 12288;
    public static final int VIEW_TYPE_OUT = 24576;
    public static final int VIEW_TYPE_PARENT_OPERATION = 40960;
    public static final int VIEW_TYPE_SHOP_ITEM = 36864;
    public static final int VIEW_TYPE_SOURCE = 16384;
    public static final int VIEW_TYPE_TAG = 20480;
    private final CommonOperationData adapterData = new CommonOperationData();
    private final Lazy operationFormatter$delegate = ExceptionsKt__ExceptionsKt.lazy((Function0) OperationAdapter$operationFormatter$2.INSTANCE);
    private final Presenter operationPresenter;

    /* compiled from: OperationAdapter.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    private final MoneyFormatter getOperationFormatter() {
        return (MoneyFormatter) this.operationFormatter$delegate.getValue();
    }

    public OperationAdapter(Presenter presenter, ParallaxData parallaxData, View view, int i) {
        Intrinsics.checkParameterIsNotNull(presenter, "operationPresenter");
        Intrinsics.checkParameterIsNotNull(parallaxData, "parallaxData");
        Intrinsics.checkParameterIsNotNull(view, "appBarLayout");
        super(parallaxData, view, i);
        this.operationPresenter = presenter;
    }

    public final CommonOperationData getAdapterData() {
        return this.adapterData;
    }

    public final void addIn() {
        ParallaxItem parallaxItem = new ParallaxItem();
        parallaxItem.setViewType(VIEW_TYPE_IN);
        ParallaxAdapter.addStaticItem$default(this, parallaxItem, 0, 2, null);
    }

    public final void addOut() {
        ParallaxItem parallaxItem = new ParallaxItem();
        parallaxItem.setViewType(VIEW_TYPE_OUT);
        ParallaxAdapter.addStaticItem$default(this, parallaxItem, 0, 2, null);
    }

    public final void addSource(SourceViewData sourceViewData) {
        Intrinsics.checkParameterIsNotNull(sourceViewData, "sourceViewData");
        ParallaxItem parallaxItem = new ParallaxItem();
        parallaxItem.setViewType(16384);
        parallaxItem.setPayload(sourceViewData);
        ParallaxAdapter.addStaticItem$default(this, parallaxItem, null, 2, null);
    }

    public final void addTag(Operation operation) {
        Intrinsics.checkParameterIsNotNull(operation, "operation");
        ParallaxItem parallaxItem = new ParallaxItem();
        parallaxItem.setViewType(VIEW_TYPE_TAG);
        parallaxItem.setPayload(operation);
        ParallaxAdapter.addStaticItem$default(this, parallaxItem, null, 2, null);
    }

    public final void addMap(Operation operation) {
        Intrinsics.checkParameterIsNotNull(operation, "operation");
        ParallaxItem parallaxItem = new ParallaxItem();
        parallaxItem.setViewType(VIEW_TYPE_OPERATION_MAP);
        parallaxItem.setPayload(operation);
        ParallaxAdapter.addStaticItem$default(this, parallaxItem, null, 2, null);
    }

    public final void addActions(Operation operation) {
        Intrinsics.checkParameterIsNotNull(operation, "operation");
        ParallaxItem parallaxItem = new ParallaxItem();
        parallaxItem.setViewType(VIEW_TYPE_OPERATION_ACTIONS);
        parallaxItem.setPayload(operation);
        ParallaxAdapter.addStaticItem$default(this, parallaxItem, null, 2, null);
    }

    public final void addCompensationToDo(Operation operation) {
        Intrinsics.checkParameterIsNotNull(operation, "operation");
        ParallaxItem parallaxItem = new ParallaxItem();
        parallaxItem.setViewType(4096);
        parallaxItem.setPayload(operation);
        ParallaxAdapter.addStaticItem$default(this, parallaxItem, null, 2, null);
    }

    public final void addCompensated(Operation operation) {
        Intrinsics.checkParameterIsNotNull(operation, "operation");
        ParallaxItem parallaxItem = new ParallaxItem();
        parallaxItem.setViewType(8192);
        parallaxItem.setPayload(operation);
        ParallaxAdapter.addStaticItem$default(this, parallaxItem, null, 2, null);
    }

    public final void addDescription(String str, Function1<? super ParallaxItem, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(str, "description");
        Intrinsics.checkParameterIsNotNull(function1, "onClick");
        ParallaxItem parallaxItem = new ParallaxItem();
        parallaxItem.setViewType(32768);
        parallaxItem.setPayload(str);
        parallaxItem.setOnClick(function1);
        ParallaxAdapter.addStaticItem$default(this, parallaxItem, null, 2, null);
    }

    public final void addShopItem(ContextShopItem contextShopItem) {
        Intrinsics.checkParameterIsNotNull(contextShopItem, "shopItem");
        ParallaxItem parallaxItem = new ParallaxItem();
        parallaxItem.setViewType(VIEW_TYPE_SHOP_ITEM);
        parallaxItem.setPayload(contextShopItem);
        ParallaxAdapter.addStaticItem$default(this, parallaxItem, null, 2, null);
    }

    public final void addParentOperationItem(Operation operation) {
        Intrinsics.checkParameterIsNotNull(operation, "parentOperation");
        ParallaxItem parallaxItem = new ParallaxItem();
        parallaxItem.setViewType(VIEW_TYPE_PARENT_OPERATION);
        parallaxItem.setPayload(operation);
        ParallaxAdapter.addStaticItem$default(this, parallaxItem, null, 2, null);
    }

    public final void onBindCustomViewType(GenericViewHolder genericViewHolder, int i, int i2) {
        if (i2 == 4096) {
            MilesToCompensate milesToCompensate = (MilesToCompensate) genericViewHolder;
            if (milesToCompensate != null) {
                milesToCompensate.bind();
            }
        } else if (i2 != 8192) {
            Object obj = null;
            if (i2 == VIEW_TYPE_OPERATION_MAP) {
                MapViewHolder mapViewHolder = (MapViewHolder) genericViewHolder;
                if (mapViewHolder != null) {
                    i = mapViewHolder.getItem();
                    if (i != 0) {
                        obj = i.getPayload();
                    }
                    Operation operation = (Operation) obj;
                    if (operation != null) {
                        mapViewHolder.onBind(operation);
                    }
                }
            } else if (i2 == 16384) {
                SourceViewHolder sourceViewHolder = (SourceViewHolder) genericViewHolder;
                if (sourceViewHolder != null) {
                    sourceViewHolder.onBind();
                }
            } else if (i2 == VIEW_TYPE_TAG) {
                CommentViewHolder commentViewHolder = (CommentViewHolder) genericViewHolder;
                if (commentViewHolder != null) {
                    commentViewHolder.onBind();
                }
            } else if (i2 == VIEW_TYPE_OUT) {
            } else {
                if (i2 == 32768) {
                    DescriptionViewHolder descriptionViewHolder = (DescriptionViewHolder) genericViewHolder;
                    if (descriptionViewHolder != null) {
                        descriptionViewHolder.bind();
                    }
                } else if (i2 == VIEW_TYPE_SHOP_ITEM) {
                    ShopItemViewHolder shopItemViewHolder = (ShopItemViewHolder) genericViewHolder;
                    if (shopItemViewHolder != null) {
                        shopItemViewHolder.bind();
                    }
                } else if (i2 == VIEW_TYPE_PARENT_OPERATION) {
                    OperationParentViewHolder operationParentViewHolder = (OperationParentViewHolder) genericViewHolder;
                    if (operationParentViewHolder != null) {
                        i = operationParentViewHolder.getItem();
                        i2 = operationParentViewHolder.getItem();
                        if (i2 != 0) {
                            obj = i2.getPayload();
                        }
                        if (obj == null) {
                            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.model.dto.operations.Operation");
                        }
                        onBindOperation(operationParentViewHolder, i, (Operation) obj);
                    }
                } else if (i2 != VIEW_TYPE_OPERATION_ACTIONS) {
                    super.onBindCustomViewType(genericViewHolder, i, i2);
                } else {
                    ActionsViewHolder actionsViewHolder = (ActionsViewHolder) genericViewHolder;
                    if (actionsViewHolder != null) {
                        actionsViewHolder.onBind();
                    }
                }
            }
        } else {
            MilesCompensated milesCompensated = (MilesCompensated) genericViewHolder;
            if (milesCompensated != null) {
                milesCompensated.bind();
            }
        }
    }

    private final void onBindOperation(OperationParentViewHolder operationParentViewHolder, ParallaxItem parallaxItem, Operation operation) {
        parallaxItem = operation.getDisplayMoney();
        operation.getFriend();
        Merchant merchant = operation.getMerchant();
        operationParentViewHolder.setContent(operation.getComment());
        operationParentViewHolder.setName(operation.getDetails());
        operationParentViewHolder.setOperation(operation);
        operationParentViewHolder.setNoAction();
        if (merchant == null || TextUtils.isEmpty(merchant.getIcon())) {
            String status = operation.getStatus();
            FriendRequestType friendTransferType = operation.getFriendTransferType();
            if ((OperationsUtils.INSTANCE.isIncoming(friendTransferType) && Intrinsics.areEqual(Operation.STATUS_PENDING_VISIBLE, status)) || FriendRequestType.TransferExternal == friendTransferType) {
                operationParentViewHolder.setOnMainAction((OnActionListener) new OperationAdapter$onBindOperation$1());
            } else {
                operationParentViewHolder.setNoAction();
            }
        }
        operation = getOperationFormatter();
        if (parallaxItem == null) {
            Intrinsics.throwNpe();
        }
        double amount = (double) ((float) parallaxItem.getAmount());
        parallaxItem = parallaxItem.getCurrencyCode();
        Intrinsics.checkExpressionValueIsNotNull(parallaxItem, "moneyData!!.currencyCode");
        operationParentViewHolder.setAmount(operation.format(amount, parallaxItem, false));
    }

    public final GenericViewHolder onCreateCustomViewType(ViewGroup viewGroup, int i) {
        Intrinsics.checkParameterIsNotNull(viewGroup, "parent");
        LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
        switch (i) {
            case 4096:
                viewGroup = from.inflate(C0859R.layout.layout_miles_compensation, viewGroup, false);
                Intrinsics.checkExpressionValueIsNotNull(viewGroup, "view");
                return (GenericViewHolder) new MilesToCompensate(viewGroup, this.operationPresenter);
            case 8192:
                viewGroup = from.inflate(C0859R.layout.layout_operation_miles_done, viewGroup, false);
                Intrinsics.checkExpressionValueIsNotNull(viewGroup, "view");
                return (GenericViewHolder) new MilesCompensated(viewGroup);
            case VIEW_TYPE_OPERATION_MAP /*12288*/:
                viewGroup = from.inflate(C0859R.layout.layout_operation_map, viewGroup, false);
                Intrinsics.checkExpressionValueIsNotNull(viewGroup, "view");
                return (GenericViewHolder) new MapViewHolder(viewGroup, this.adapterData);
            case 16384:
                viewGroup = from.inflate(C0859R.layout.layout_operation_source, viewGroup, false);
                Intrinsics.checkExpressionValueIsNotNull(viewGroup, "view");
                return (GenericViewHolder) new SourceViewHolder(viewGroup);
            case VIEW_TYPE_TAG /*20480*/:
                viewGroup = from.inflate(C0859R.layout.layout_operation_category, viewGroup, false);
                Intrinsics.checkExpressionValueIsNotNull(viewGroup, "view");
                return (GenericViewHolder) new CommentViewHolder(viewGroup, this.adapterData, this.operationPresenter);
            case VIEW_TYPE_OUT /*24576*/:
                viewGroup = from.inflate(C0859R.layout.layout_operation_outgoing, viewGroup, false);
                Intrinsics.checkExpressionValueIsNotNull(viewGroup, "view");
                return (GenericViewHolder) new RequestOperation(viewGroup, this.operationPresenter);
            case VIEW_TYPE_IN /*28672*/:
                viewGroup = from.inflate(C0859R.layout.layout_operation_incomming, viewGroup, false);
                Intrinsics.checkExpressionValueIsNotNull(viewGroup, "view");
                return (GenericViewHolder) new IncommingOperation(viewGroup, this.operationPresenter);
            case 32768:
                viewGroup = from.inflate(C0859R.layout.layout_operation_description, viewGroup, false);
                Intrinsics.checkExpressionValueIsNotNull(viewGroup, "view");
                return (GenericViewHolder) new DescriptionViewHolder(viewGroup);
            case VIEW_TYPE_SHOP_ITEM /*36864*/:
                viewGroup = from.inflate(C0859R.layout.shop_item_operation, viewGroup, false);
                Intrinsics.checkExpressionValueIsNotNull(viewGroup, "view");
                return (GenericViewHolder) new ShopItemViewHolder(viewGroup);
            case VIEW_TYPE_PARENT_OPERATION /*40960*/:
                viewGroup = from.inflate(C0859R.layout.feed_item_operation, viewGroup, false);
                Intrinsics.checkExpressionValueIsNotNull(viewGroup, "view");
                return (GenericViewHolder) new OperationParentViewHolder(viewGroup);
            case VIEW_TYPE_OPERATION_ACTIONS /*57344*/:
                viewGroup = from.inflate(C0859R.layout.layout_operation_action, viewGroup, false);
                Intrinsics.checkExpressionValueIsNotNull(viewGroup, "view");
                return (GenericViewHolder) new ActionsViewHolder(viewGroup);
            default:
                return super.onCreateCustomViewType(viewGroup, i);
        }
    }
}
