package ru.rocketbank.r2d2.root.feed;

import android.content.Context;
import android.support.v4.content.ContextCompat;
import android.support.v7.util.SortedList;
import android.support.v7.util.SortedList.Callback;
import android.support.v7.widget.RecyclerView.Adapter;
import android.text.TextUtils;
import android.text.format.DateUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import com.facebook.share.internal.ShareConstants;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.LinkedHashSet;
import java.util.List;
import jp.wasabeef.glide.transformations.CropCircleTransformation;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Lazy;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import me.zhanghai.android.materialprogressbar.IndeterminateProgressDrawable;
import ru.rocketbank.core.NewPassportOperation;
import ru.rocketbank.core.model.AbstractOperation;
import ru.rocketbank.core.model.AndroidPayOperation;
import ru.rocketbank.core.model.DeliveryOperation;
import ru.rocketbank.core.model.FriendOperation;
import ru.rocketbank.core.model.MoneyData;
import ru.rocketbank.core.model.OneTwoTripUidOperation;
import ru.rocketbank.core.model.PushOperation;
import ru.rocketbank.core.model.TariffOperation;
import ru.rocketbank.core.model.TaxGibddPush;
import ru.rocketbank.core.model.TransferToSafeAccountOperation;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.model.discounts.Discount;
import ru.rocketbank.core.model.dto.operations.Friend;
import ru.rocketbank.core.model.dto.operations.Merchant;
import ru.rocketbank.core.model.dto.operations.MonthCashBack;
import ru.rocketbank.core.model.dto.operations.MonthCashBackChosen;
import ru.rocketbank.core.model.dto.operations.MonthlyMerchant;
import ru.rocketbank.core.model.dto.operations.Operation;
import ru.rocketbank.core.network.model.FeedItem;
import ru.rocketbank.core.network.model.operation.FriendRequestType;
import ru.rocketbank.core.utils.MoneyFormatter;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.databinding.FeedItemAdsBinding;
import ru.rocketbank.r2d2.databinding.FeedItemApBinding;
import ru.rocketbank.r2d2.databinding.FeedItemChosenMonthCashbackBinding;
import ru.rocketbank.r2d2.databinding.FeedItemDeliveryBinding;
import ru.rocketbank.r2d2.databinding.FeedItemNewPassportBinding;
import ru.rocketbank.r2d2.databinding.FeedItemOnetwotripBinding;
import ru.rocketbank.r2d2.databinding.FeedItemPushBinding;
import ru.rocketbank.r2d2.databinding.FeedItemSalaryTariffsBinding;
import ru.rocketbank.r2d2.databinding.FeedItemTransferToSafeAccountBinding;
import ru.rocketbank.r2d2.databinding.FragmentFeedBinding;
import ru.rocketbank.r2d2.root.feed.viewholder.APViewHolder;
import ru.rocketbank.r2d2.root.feed.viewholder.AdsViewHolder;
import ru.rocketbank.r2d2.root.feed.viewholder.ChosenMonthCashBackViewHolder;
import ru.rocketbank.r2d2.root.feed.viewholder.DeliveryViewHolder;
import ru.rocketbank.r2d2.root.feed.viewholder.FeedNewPassportViewHolder;
import ru.rocketbank.r2d2.root.feed.viewholder.FeedViewHolder;
import ru.rocketbank.r2d2.root.feed.viewholder.FriendViewHolder;
import ru.rocketbank.r2d2.root.feed.viewholder.HeaderStubViewHolder;
import ru.rocketbank.r2d2.root.feed.viewholder.HeaderViewHolder;
import ru.rocketbank.r2d2.root.feed.viewholder.MonthCashBackViewHolder;
import ru.rocketbank.r2d2.root.feed.viewholder.OnActionListener;
import ru.rocketbank.r2d2.root.feed.viewholder.OneTwoTripViewHolder;
import ru.rocketbank.r2d2.root.feed.viewholder.OperationViewHolder;
import ru.rocketbank.r2d2.root.feed.viewholder.PushViewHolder;
import ru.rocketbank.r2d2.root.feed.viewholder.RocketRubleViewHolder;
import ru.rocketbank.r2d2.root.feed.viewholder.TariffViewHolder;
import ru.rocketbank.r2d2.root.feed.viewholder.TaxGibddViewHolder;
import ru.rocketbank.r2d2.root.feed.viewholder.TransferToSafeViewHolder;
import ru.rocketbank.r2d2.utils.FeedItemCallback;
import ru.rocketbank.r2d2.widgets.OperationsUtils;
import ru.rocketbank.r2d2.widgets.swipe.SwipeDismissTouchListener.DismissCallbacks;

/* compiled from: FeedAdapter.kt */
public final class FeedAdapter extends Adapter<FeedViewHolder> implements DismissCallbacks {
    static final /* synthetic */ KProperty[] $$delegatedProperties = new KProperty[]{Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(FeedAdapter.class), "operationFormatter", "getOperationFormatter()Lru/rocketbank/core/utils/MoneyFormatter;"))};
    private FragmentFeedBinding binding;
    private FeedItem bottomItem;
    private final CropCircleTransformation cropCircleTransformation;
    private final DelimiterStrategy delimiterStrategy = ((DelimiterStrategy) new DayDelimiterStrategy());
    private final SortedList<FeedItem> feedItems = new SortedList(FeedItem.class, (Callback) new FeedItemCallback(this, this.stickyItem));
    private final FeedModel feedModel;
    private final FeedPresenter feedPresenter;
    private final boolean isEmpty;
    private final Lazy operationFormatter$delegate = ExceptionsKt__ExceptionsKt.lazy((Function0) FeedAdapter$operationFormatter$2.INSTANCE);
    private boolean searchMode;
    private final LinkedHashSet<Long> selectedIds = new LinkedHashSet();
    private final ArrayList<FeedItem> stickyItem = new ArrayList();
    private UserModel userModel;

    private final MoneyFormatter getOperationFormatter() {
        return (MoneyFormatter) this.operationFormatter$delegate.getValue();
    }

    public final boolean canDismiss(Object obj) {
        Intrinsics.checkParameterIsNotNull(obj, "token");
        return true;
    }

    public FeedAdapter(CropCircleTransformation cropCircleTransformation, FeedPresenter feedPresenter, FeedModel feedModel, FragmentFeedBinding fragmentFeedBinding) {
        Intrinsics.checkParameterIsNotNull(cropCircleTransformation, "cropCircleTransformation");
        Intrinsics.checkParameterIsNotNull(feedPresenter, "feedPresenter");
        Intrinsics.checkParameterIsNotNull(feedModel, "feedModel");
        Intrinsics.checkParameterIsNotNull(fragmentFeedBinding, "binding");
        this.cropCircleTransformation = cropCircleTransformation;
        this.feedPresenter = feedPresenter;
        this.feedModel = feedModel;
        this.binding = fragmentFeedBinding;
        this.isEmpty = this.feedItems.size() == null ? true : null;
    }

    public final FragmentFeedBinding getBinding() {
        return this.binding;
    }

    public final void setBinding(FragmentFeedBinding fragmentFeedBinding) {
        Intrinsics.checkParameterIsNotNull(fragmentFeedBinding, "<set-?>");
        this.binding = fragmentFeedBinding;
    }

    public final UserModel getUserModel() {
        return this.userModel;
    }

    public final void setUserModel(UserModel userModel) {
        this.userModel = userModel;
    }

    public final boolean getSearchMode() {
        return this.searchMode;
    }

    public final void setSearchMode(boolean z) {
        this.searchMode = z;
    }

    public final void setRegularMode() {
        this.searchMode = false;
        notifyDataSetChanged();
    }

    public final void setSearchMode() {
        this.searchMode = true;
        notifyDataSetChanged();
    }

    public final FeedViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        Intrinsics.checkParameterIsNotNull(viewGroup, "parent");
        LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
        if (i == FeedItem.OPERATION_HEADER) {
            viewGroup = from.inflate(C0859R.layout.list_item_card_header, viewGroup, false);
            FeedModel feedModel = this.feedModel;
            FragmentFeedBinding fragmentFeedBinding = this.binding;
            Intrinsics.checkExpressionValueIsNotNull(viewGroup, "view");
            return (FeedViewHolder) new HeaderViewHolder(feedModel, fragmentFeedBinding, viewGroup);
        } else if (i == FeedItem.OPERATION_SEARCH_HEADER) {
            viewGroup = from.inflate(C0859R.layout.search_under_toolbar_stub, viewGroup, false);
            FragmentFeedBinding fragmentFeedBinding2 = this.binding;
            FeedModel feedModel2 = this.feedModel;
            Intrinsics.checkExpressionValueIsNotNull(viewGroup, "view");
            return (FeedViewHolder) new HeaderStubViewHolder(fragmentFeedBinding2, feedModel2, viewGroup);
        } else if (i != 7) {
            switch (i) {
                case 1:
                    viewGroup = FeedItemPushBinding.inflate(from, viewGroup, false);
                    r0 = this.cropCircleTransformation;
                    Intrinsics.checkExpressionValueIsNotNull(viewGroup, "pushBinding");
                    return (FeedViewHolder) new PushViewHolder(r0, this, viewGroup);
                case 2:
                    viewGroup = FeedItemPushBinding.inflate(from, viewGroup, false);
                    r0 = this.cropCircleTransformation;
                    Intrinsics.checkExpressionValueIsNotNull(viewGroup, "pushBinding");
                    return (FeedViewHolder) new FriendViewHolder(r0, this, viewGroup);
                case 3:
                    viewGroup = from.inflate(C0859R.layout.feed_item_month_cashback, viewGroup, false);
                    r0 = this.cropCircleTransformation;
                    FeedPresenter feedPresenter = this.feedPresenter;
                    Intrinsics.checkExpressionValueIsNotNull(viewGroup, "view");
                    return (FeedViewHolder) new MonthCashBackViewHolder(r0, feedPresenter, viewGroup);
                case 4:
                    viewGroup = from.inflate(C0859R.layout.feed_item_operation, viewGroup, false);
                    Intrinsics.checkExpressionValueIsNotNull(viewGroup, "view");
                    return (FeedViewHolder) new OperationViewHolder(viewGroup);
                case 5:
                    viewGroup = FeedItemAdsBinding.inflate(from, viewGroup, false);
                    Intrinsics.checkExpressionValueIsNotNull(viewGroup, "binding");
                    return (FeedViewHolder) new AdsViewHolder(viewGroup);
                default:
                    switch (i) {
                        case 13:
                            viewGroup = FeedItemPushBinding.inflate(from, viewGroup, false);
                            r0 = this.cropCircleTransformation;
                            Intrinsics.checkExpressionValueIsNotNull(viewGroup, "pushBinding");
                            return (FeedViewHolder) new TaxGibddViewHolder(r0, this, viewGroup);
                        case 14:
                            viewGroup = FeedItemSalaryTariffsBinding.inflate(from, viewGroup, false);
                            Intrinsics.checkExpressionValueIsNotNull(viewGroup, "salaryTariffsBinding");
                            return (FeedViewHolder) new TariffViewHolder(viewGroup);
                        case 15:
                            viewGroup = FeedItemDeliveryBinding.inflate(from, viewGroup, false);
                            Intrinsics.checkExpressionValueIsNotNull(viewGroup, "deliveryItemBinding");
                            return (FeedViewHolder) new DeliveryViewHolder(viewGroup);
                        case 16:
                            viewGroup = from.inflate(C0859R.layout.feed_item_rocket_rubles_operation, viewGroup, false);
                            Intrinsics.checkExpressionValueIsNotNull(viewGroup, "view");
                            return (FeedViewHolder) new RocketRubleViewHolder(viewGroup);
                        case 17:
                            viewGroup = FeedItemOnetwotripBinding.inflate(from, viewGroup, false);
                            Intrinsics.checkExpressionValueIsNotNull(viewGroup, "binding");
                            return (FeedViewHolder) new OneTwoTripViewHolder(viewGroup);
                        case 18:
                            viewGroup = FeedItemApBinding.inflate(from, viewGroup, false);
                            Intrinsics.checkExpressionValueIsNotNull(viewGroup, "apBinding");
                            return (FeedViewHolder) new APViewHolder(viewGroup, this);
                        case 19:
                            viewGroup = FeedItemNewPassportBinding.inflate(from, viewGroup, false);
                            Intrinsics.checkExpressionValueIsNotNull(viewGroup, "binding");
                            return (FeedViewHolder) new FeedNewPassportViewHolder(viewGroup);
                        case 20:
                            viewGroup = FeedItemTransferToSafeAccountBinding.inflate(from, viewGroup, false);
                            Intrinsics.checkExpressionValueIsNotNull(viewGroup, "binding");
                            return (FeedViewHolder) new TransferToSafeViewHolder(viewGroup, this);
                        default:
                            i = from.inflate(C0859R.layout.feed_item_loading, viewGroup, false);
                            View findViewById = i.findViewById(C0859R.id.indeterminate_progress);
                            if (findViewById == null) {
                                throw new TypeCastException("null cannot be cast to non-null type android.widget.ProgressBar");
                            }
                            ProgressBar progressBar = (ProgressBar) findViewById;
                            IndeterminateProgressDrawable indeterminateProgressDrawable = new IndeterminateProgressDrawable(viewGroup.getContext());
                            indeterminateProgressDrawable.setTint(ContextCompat.getColor(viewGroup.getContext(), C0859R.color.blue));
                            progressBar.setIndeterminateDrawable(indeterminateProgressDrawable);
                            Intrinsics.checkExpressionValueIsNotNull(i, "view");
                            return new FeedViewHolder(i);
                    }
            }
        } else {
            viewGroup = FeedItemChosenMonthCashbackBinding.inflate(from, viewGroup, false);
            r0 = this.cropCircleTransformation;
            Intrinsics.checkExpressionValueIsNotNull(viewGroup, "binding");
            return (FeedViewHolder) new ChosenMonthCashBackViewHolder(r0, viewGroup);
        }
    }

    private final FeedItem getItem(int i) {
        i--;
        if (this.bottomItem == null || i != getCleanSize()) {
            int size = this.stickyItem.size();
            if (size > i) {
                i = this.stickyItem.get(i);
                Intrinsics.checkExpressionValueIsNotNull(i, "stickyItem[position]");
                return (FeedItem) i;
            }
            i = this.feedItems.get(i - size);
            Intrinsics.checkExpressionValueIsNotNull(i, "feedItems.get(position - stickySize)");
            return (FeedItem) i;
        }
        i = this.bottomItem;
        if (i == 0) {
            Intrinsics.throwNpe();
        }
        return i;
    }

    public final void onBindViewHolder(FeedViewHolder feedViewHolder, int i) {
        Intrinsics.checkParameterIsNotNull(feedViewHolder, "holder");
        int itemViewType = getItemViewType(i);
        if (i != 0) {
            FeedItem item = getItem(i);
            AbstractOperation operation = item.getOperation();
            if (operation != null) {
                showDayStartIfNeeded(feedViewHolder, i, operation);
            }
            if (itemViewType != FeedItem.OPERATION_HEADER) {
                if (itemViewType != FeedItem.OPERATION_SEARCH_HEADER) {
                    if (itemViewType != 7) {
                        switch (itemViewType) {
                            case 1:
                                PushViewHolder pushViewHolder = (PushViewHolder) feedViewHolder;
                                if (operation == null) {
                                    Intrinsics.throwNpe();
                                }
                                if (operation == null) {
                                    throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.model.PushOperation");
                                }
                                onBindPush(pushViewHolder, item, (PushOperation) operation);
                                return;
                            case 2:
                                FriendViewHolder friendViewHolder = (FriendViewHolder) feedViewHolder;
                                if (operation == null) {
                                    Intrinsics.throwNpe();
                                }
                                if (operation == null) {
                                    throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.model.FriendOperation");
                                }
                                onBindFriend(friendViewHolder, item, (FriendOperation) operation);
                                return;
                            case 3:
                                MonthCashBackViewHolder monthCashBackViewHolder = (MonthCashBackViewHolder) feedViewHolder;
                                if (operation == null) {
                                    Intrinsics.throwNpe();
                                }
                                if (operation == null) {
                                    throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.model.dto.operations.MonthCashBack");
                                }
                                onBindMonthCashBack(monthCashBackViewHolder, item, (MonthCashBack) operation);
                                return;
                            case 4:
                                OperationViewHolder operationViewHolder = (OperationViewHolder) feedViewHolder;
                                if (operation == null) {
                                    Intrinsics.throwNpe();
                                }
                                if (operation == null) {
                                    throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.model.dto.operations.Operation");
                                }
                                onBindOperation(operationViewHolder, item, (Operation) operation);
                                return;
                            case 5:
                                Discount discount = (Discount) operation;
                                AdsViewHolder adsViewHolder = (AdsViewHolder) feedViewHolder;
                                if (discount != null) {
                                    i = discount.mainLink;
                                    Intrinsics.checkExpressionValueIsNotNull(i, "discountOperation.mainLink");
                                    adsViewHolder.setAds(i);
                                }
                                if (discount == null) {
                                    Intrinsics.throwNpe();
                                }
                                adsViewHolder.setDiscount(discount);
                                return;
                            default:
                                switch (itemViewType) {
                                    case 13:
                                        TaxGibddViewHolder taxGibddViewHolder = (TaxGibddViewHolder) feedViewHolder;
                                        if (operation == null) {
                                            Intrinsics.throwNpe();
                                        }
                                        if (operation == null) {
                                            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.model.TaxGibddPush");
                                        }
                                        onBindTaxGibdd(taxGibddViewHolder, item, (TaxGibddPush) operation);
                                        return;
                                    case 14:
                                        TariffViewHolder tariffViewHolder = (TariffViewHolder) feedViewHolder;
                                        if (operation == null) {
                                            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.model.TariffOperation");
                                        }
                                        tariffViewHolder.onBind((TariffOperation) operation);
                                        return;
                                    case 15:
                                        DeliveryViewHolder deliveryViewHolder = (DeliveryViewHolder) feedViewHolder;
                                        if (operation == null) {
                                            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.model.DeliveryOperation");
                                        }
                                        deliveryViewHolder.onBind((DeliveryOperation) operation);
                                        return;
                                    case 16:
                                        RocketRubleViewHolder rocketRubleViewHolder = (RocketRubleViewHolder) feedViewHolder;
                                        if (operation == null) {
                                            Intrinsics.throwNpe();
                                        }
                                        if (operation == null) {
                                            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.model.dto.operations.Operation");
                                        }
                                        onBindRocketRubles(rocketRubleViewHolder, item, (Operation) operation);
                                        return;
                                    case 17:
                                        OneTwoTripViewHolder oneTwoTripViewHolder = (OneTwoTripViewHolder) feedViewHolder;
                                        if (operation == null) {
                                            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.model.OneTwoTripUidOperation");
                                        }
                                        oneTwoTripViewHolder.onBind((OneTwoTripUidOperation) operation);
                                        return;
                                    case 18:
                                        APViewHolder aPViewHolder = (APViewHolder) feedViewHolder;
                                        if (operation == null) {
                                            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.model.AndroidPayOperation");
                                        }
                                        aPViewHolder.onBind((AndroidPayOperation) operation, item);
                                        return;
                                    case 19:
                                        FeedNewPassportViewHolder feedNewPassportViewHolder = (FeedNewPassportViewHolder) feedViewHolder;
                                        if (operation == null) {
                                            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.NewPassportOperation");
                                        }
                                        feedNewPassportViewHolder.onBind((NewPassportOperation) operation);
                                        return;
                                    case 20:
                                        TransferToSafeViewHolder transferToSafeViewHolder = (TransferToSafeViewHolder) feedViewHolder;
                                        if (operation != null) {
                                            transferToSafeViewHolder.onBind((TransferToSafeAccountOperation) operation, item);
                                            break;
                                        }
                                        throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.model.TransferToSafeAccountOperation");
                                    default:
                                        break;
                                }
                        }
                    }
                    ChosenMonthCashBackViewHolder chosenMonthCashBackViewHolder = (ChosenMonthCashBackViewHolder) feedViewHolder;
                    if (operation == null) {
                        Intrinsics.throwNpe();
                    }
                    if (operation == null) {
                        throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.model.dto.operations.MonthCashBackChosen");
                    }
                    onBindChosenCashBack(chosenMonthCashBackViewHolder, (MonthCashBackChosen) operation);
                } else if (i != 0) {
                    throw ((Throwable) new IllegalStateException("Header must be at position 0, but ".concat(String.valueOf(i))));
                }
            } else if (i != 0) {
                throw ((Throwable) new IllegalStateException("Header must be at position 0, but ".concat(String.valueOf(i))));
            } else {
                ((HeaderViewHolder) feedViewHolder).onBind(this.binding);
            }
        } else if (itemViewType != FeedItem.OPERATION_HEADER) {
            if (itemViewType == FeedItem.OPERATION_SEARCH_HEADER) {
                if (i != 0) {
                    throw ((Throwable) new IllegalStateException("Header must be at position 0, but ".concat(String.valueOf(i))));
                }
            }
        } else if (i != 0) {
            throw ((Throwable) new IllegalStateException("Header must be at position 0, but ".concat(String.valueOf(i))));
        } else {
            ((HeaderViewHolder) feedViewHolder).onBind(this.binding);
        }
    }

    private final AbstractOperation getOperation(int i) {
        int itemCount = getItemCount() - 1;
        if (i > 0) {
            if (itemCount >= i) {
                return getItem(i).getOperation();
            }
        }
        return 0;
    }

    private final boolean isNotSameDayOperation(Calendar calendar, AbstractOperation abstractOperation) {
        if (abstractOperation == null) {
            return false;
        }
        if (calendar.get(5) - abstractOperation.getHappenedAtCalendar().get(5) != null) {
            return true;
        }
        return false;
    }

    private final void showDayStartIfNeeded(FeedViewHolder feedViewHolder, int i, AbstractOperation abstractOperation) {
        abstractOperation = abstractOperation.getHappenedAtCalendar();
        boolean isTopOperation = isTopOperation(i);
        boolean isToday = isToday(abstractOperation.getTimeInMillis());
        boolean isYesterday = isYesterday(abstractOperation);
        int i2 = i - 1;
        AbstractOperation operation = getOperation(i2);
        i = this.delimiterStrategy.getShowMode(i, isTopOperation, isToday, isYesterday, isTopOperation(i2), isNotSameDayOperation(abstractOperation, operation));
        if (i == DelimiterStrategy.Companion.getSHOW_TODAY()) {
            feedViewHolder.showToday();
        } else if (i == DelimiterStrategy.Companion.getSHOW_YESTERDAY()) {
            feedViewHolder.showYesterday(abstractOperation);
        } else if (i == DelimiterStrategy.Companion.getSHOW_WAITING()) {
            feedViewHolder.showWaiting();
        } else if (i == DelimiterStrategy.Companion.getSHOW_DATE()) {
            feedViewHolder.showDayStart(abstractOperation);
        } else {
            feedViewHolder.hideDayStart();
        }
    }

    public final String getString(Context context, int i) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        context = context.getString(i);
        Intrinsics.checkExpressionValueIsNotNull(context, "context.getString(stringId)");
        return context;
    }

    private final void onBindFriend(FriendViewHolder friendViewHolder, FeedItem feedItem, FriendOperation friendOperation) {
        friendViewHolder.setVisible(friendOperation.isVisible());
        if (friendOperation.isVisible()) {
            String str = null;
            friendViewHolder.setTitle(null);
            friendOperation.getFriend();
            friendViewHolder.setButtons(true);
            friendViewHolder.setText(friendOperation.getBody());
            Friend friend = friendOperation.getFriend();
            if (friend != null) {
                str = friend.getUserpicUrl();
            }
            friendViewHolder.setImage(str);
            View view = friendViewHolder.itemView;
            Intrinsics.checkExpressionValueIsNotNull(view, "friendViewHolder.itemView");
            Context context = view.getContext();
            Intrinsics.checkExpressionValueIsNotNull(context, "friendViewHolder.itemView.context");
            str = getString(context, C0859R.string.cta_send);
            if (str == null) {
                throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
            }
            str = str.toUpperCase();
            Intrinsics.checkExpressionValueIsNotNull(str, "(this as java.lang.String).toUpperCase()");
            friendViewHolder.setOkOnAction(str, new FeedAdapter$onBindFriend$1(friendOperation, friendViewHolder));
            friendOperation = friendViewHolder.itemView;
            Intrinsics.checkExpressionValueIsNotNull(friendOperation, "friendViewHolder.itemView");
            friendOperation = friendOperation.getContext();
            Intrinsics.checkExpressionValueIsNotNull(friendOperation, "friendViewHolder.itemView.context");
            friendOperation = getString(friendOperation, C0859R.string.not_now);
            if (friendOperation == null) {
                throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
            }
            friendOperation = friendOperation.toUpperCase();
            Intrinsics.checkExpressionValueIsNotNull(friendOperation, "(this as java.lang.String).toUpperCase()");
            friendViewHolder.setCancelAction(friendOperation, new FeedAdapter$onBindFriend$2(this, feedItem));
            friendViewHolder.setFeedItem(feedItem);
        }
    }

    private final void onBindMonthCashBack(MonthCashBackViewHolder monthCashBackViewHolder, FeedItem feedItem, MonthCashBack monthCashBack) {
        monthCashBackViewHolder.clear();
        monthCashBackViewHolder.setSelectedIds(this.selectedIds);
        monthCashBackViewHolder.setFeedItem(feedItem);
        monthCashBackViewHolder.setTitle(monthCashBack.getTitle());
        for (MonthlyMerchant monthlyMerchant : monthCashBack.getMonthlyMerchants()) {
            Intrinsics.checkExpressionValueIsNotNull(monthlyMerchant, "monthlyMerchant");
            Merchant merchant = monthlyMerchant.getMerchant();
            Intrinsics.checkExpressionValueIsNotNull(merchant, "monthlyMerchant.merchant");
            monthCashBackViewHolder.addMerchant(merchant, monthlyMerchant.getPercent());
        }
    }

    private final int colorFromCurrency(Context context, String str) {
        if (str != null) {
            int hashCode = str.hashCode();
            if (hashCode != 69026) {
                if (hashCode == 81503) {
                    if (str.equals("RUB") != null) {
                        return ContextCompat.getColor(context, C0859R.color.rub);
                    }
                }
            } else if (str.equals("EUR") != null) {
                return ContextCompat.getColor(context, C0859R.color.eur);
            }
        }
        return ContextCompat.getColor(context, C0859R.color.usd);
    }

    private final void onBindOperation(OperationViewHolder operationViewHolder, FeedItem feedItem, Operation operation) {
        MoneyData displayMoney = operation.getDisplayMoney();
        Friend friend = operation.getFriend();
        Merchant merchant = operation.getMerchant();
        operationViewHolder.setContent(operation.getComment());
        operationViewHolder.setName(operation.getDetails());
        operationViewHolder.setOperation(operation, feedItem);
        if (friend != null) {
            bindFriendOperation(operationViewHolder, operation, friend);
        } else {
            operationViewHolder.setNoAction();
            if (merchant == null || TextUtils.isEmpty(merchant.getIcon()) != null) {
                feedItem = operation.getStatus();
                FeedItem friendTransferType = operation.getFriendTransferType();
                if ((!OperationsUtils.INSTANCE.isIncoming(friendTransferType) || Intrinsics.areEqual(Operation.STATUS_PENDING_VISIBLE, feedItem) == null) && FriendRequestType.TransferExternal != friendTransferType) {
                    operationViewHolder.setNoAction();
                } else {
                    feedItem = operationViewHolder.itemView;
                    Intrinsics.checkExpressionValueIsNotNull(feedItem, "operationViewHolder.itemView");
                    feedItem = feedItem.getContext();
                    Intrinsics.checkExpressionValueIsNotNull(feedItem, "operationViewHolder.itemView.context");
                    feedItem = getString(feedItem, C0859R.string.cancel);
                    if (feedItem == null) {
                        throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                    }
                    feedItem = feedItem.toUpperCase();
                    Intrinsics.checkExpressionValueIsNotNull(feedItem, "(this as java.lang.String).toUpperCase()");
                    operationViewHolder.setMainActionView(feedItem);
                    operationViewHolder.setOnMainAction((OnActionListener) new FeedAdapter$onBindOperation$1(this));
                }
            }
        }
        feedItem = getOperationFormatter();
        if (displayMoney == null) {
            Intrinsics.throwNpe();
        }
        double amount = (double) ((float) displayMoney.getAmount());
        operation = displayMoney.getCurrencyCode();
        Intrinsics.checkExpressionValueIsNotNull(operation, "moneyData!!.currencyCode");
        operationViewHolder.setAmount(feedItem.format(amount, operation, false));
    }

    private final void onBindRocketRubles(RocketRubleViewHolder rocketRubleViewHolder, FeedItem feedItem, Operation operation) {
        MoneyData displayMoney = operation.getDisplayMoney();
        rocketRubleViewHolder.setContent(operation.getComment());
        rocketRubleViewHolder.setName(operation.getDetails());
        rocketRubleViewHolder.setOperation(operation, feedItem);
        rocketRubleViewHolder.setNoAction();
        feedItem = getOperationFormatter();
        if (displayMoney == null) {
            Intrinsics.throwNpe();
        }
        double amount = (double) ((float) displayMoney.getAmount());
        operation = MoneyFormatter.Companion;
        feedItem = feedItem.formatAmount(amount, MoneyFormatter.access$getCURRENCY_ROCKET$cp(), false);
        rocketRubleViewHolder.setAmount(feedItem.getAmountString(), feedItem.getSuffix());
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final void onBindTaxGibdd(ru.rocketbank.r2d2.root.feed.viewholder.TaxGibddViewHolder r4, ru.rocketbank.core.network.model.FeedItem r5, ru.rocketbank.core.model.TaxGibddPush r6) {
        /*
        r3 = this;
        r0 = 1;
        r4.setButtons(r0);
        r0 = r6.getMerchant();
        if (r0 == 0) goto L_0x0010;
    L_0x000a:
        r0 = r0.getIcon();
        if (r0 != 0) goto L_0x0012;
    L_0x0010:
        r0 = "";
    L_0x0012:
        r4.setImage(r0);
        r1 = r6.getTitle();
        r4.setText(r1);
        r1 = r4.itemView;
        r2 = "viewHolder.itemView";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r1, r2);
        r1 = r1.getContext();
        r2 = "viewHolder.itemView.context";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r1, r2);
        r2 = 2131821191; // 0x7f110287 float:1.9275118E38 double:1.0532596135E-314;
        r1 = r3.getString(r1, r2);
        if (r1 != 0) goto L_0x003d;
    L_0x0035:
        r4 = new kotlin.TypeCastException;
        r5 = "null cannot be cast to non-null type java.lang.String";
        r4.<init>(r5);
        throw r4;
    L_0x003d:
        r1 = r1.toUpperCase();
        r2 = "(this as java.lang.String).toUpperCase()";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r1, r2);
        r2 = new ru.rocketbank.r2d2.root.feed.FeedAdapter$onBindTaxGibdd$1;
        r2.<init>(r4, r0, r6);
        r2 = (java.lang.Runnable) r2;
        r4.setOkOnAction(r1, r2);
        r6 = r4.itemView;
        r0 = "viewHolder.itemView";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r6, r0);
        r6 = r6.getContext();
        r0 = "viewHolder.itemView.context";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r6, r0);
        r0 = 2131821092; // 0x7f110224 float:1.9274917E38 double:1.0532595646E-314;
        r6 = r3.getString(r6, r0);
        if (r6 != 0) goto L_0x0071;
    L_0x0069:
        r4 = new kotlin.TypeCastException;
        r5 = "null cannot be cast to non-null type java.lang.String";
        r4.<init>(r5);
        throw r4;
    L_0x0071:
        r6 = r6.toUpperCase();
        r0 = "(this as java.lang.String).toUpperCase()";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r6, r0);
        r0 = new ru.rocketbank.r2d2.root.feed.FeedAdapter$onBindTaxGibdd$2;
        r0.<init>(r3, r5);
        r0 = (java.lang.Runnable) r0;
        r4.setCancelAction(r6, r0);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.root.feed.FeedAdapter.onBindTaxGibdd(ru.rocketbank.r2d2.root.feed.viewholder.TaxGibddViewHolder, ru.rocketbank.core.network.model.FeedItem, ru.rocketbank.core.model.TaxGibddPush):void");
    }

    private final void bindFriendOperation(OperationViewHolder operationViewHolder, Operation operation, Friend friend) {
        if (this.userModel != null) {
            operation = operation.getFriendTransferType();
            if (operation != FriendRequestType.None) {
                if (OperationsUtils.INSTANCE.isOutgoing(operation) != null) {
                    operation = operationViewHolder.itemView;
                    Intrinsics.checkExpressionValueIsNotNull(operation, "operationViewHolder.itemView");
                    operation = operation.getContext();
                    Intrinsics.checkExpressionValueIsNotNull(operation, "operationViewHolder.itemView.context");
                    operation = getString(operation, C0859R.string.cta_send);
                    if (operation == null) {
                        throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                    }
                    operation = operation.toUpperCase();
                    Intrinsics.checkExpressionValueIsNotNull(operation, "(this as java.lang.String).toUpperCase()");
                    operationViewHolder.setMainActionView(operation);
                    operation = operationViewHolder.itemView;
                    Intrinsics.checkExpressionValueIsNotNull(operation, "operationViewHolder.itemView");
                    operation = operation.getContext();
                    Intrinsics.checkExpressionValueIsNotNull(operation, "operationViewHolder.itemView.context");
                    operation = getString(operation, C0859R.string.refuse);
                    if (operation == null) {
                        throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                    }
                    operation = operation.toUpperCase();
                    Intrinsics.checkExpressionValueIsNotNull(operation, "(this as java.lang.String).toUpperCase()");
                    operationViewHolder.setAdditionalAction(operation);
                    operationViewHolder.setOnMainAction((OnActionListener) new FeedAdapter$bindFriendOperation$1(this));
                    operationViewHolder.setOnAdditionalAction((OnActionListener) new FeedAdapter$bindFriendOperation$2(this));
                    return;
                } else if (OperationsUtils.INSTANCE.isIncoming(operation) != null) {
                    operation = operationViewHolder.itemView;
                    Intrinsics.checkExpressionValueIsNotNull(operation, "operationViewHolder.itemView");
                    operation = operation.getContext();
                    Intrinsics.checkExpressionValueIsNotNull(operation, "operationViewHolder.itemView.context");
                    operation = getString(operation, C0859R.string.cancel);
                    if (operation == null) {
                        throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                    }
                    operation = operation.toUpperCase();
                    Intrinsics.checkExpressionValueIsNotNull(operation, "(this as java.lang.String).toUpperCase()");
                    operationViewHolder.setMainActionView(operation);
                    operationViewHolder.setOnMainAction((OnActionListener) new FeedAdapter$bindFriendOperation$3(this));
                    return;
                }
            }
            operationViewHolder.setNoAction();
        }
    }

    private final void onBindChosenCashBack(ChosenMonthCashBackViewHolder chosenMonthCashBackViewHolder, MonthCashBackChosen monthCashBackChosen) {
        chosenMonthCashBackViewHolder.setTitle(monthCashBackChosen.getTitle());
        MonthlyMerchant monthlyMerchant = (MonthlyMerchant) monthCashBackChosen.getMonthlyMerchants().get(0);
        Intrinsics.checkExpressionValueIsNotNull(monthlyMerchant, "merchantOne");
        String icon = monthlyMerchant.getMerchant().getIcon();
        if (icon != null) {
            chosenMonthCashBackViewHolder.setMerchantOne(icon, monthlyMerchant.getMerchant().getName());
        }
        monthlyMerchant = (MonthlyMerchant) monthCashBackChosen.getMonthlyMerchants().get(1);
        Intrinsics.checkExpressionValueIsNotNull(monthlyMerchant, "merchantTwo");
        icon = monthlyMerchant.getMerchant().getIcon();
        if (icon != null) {
            chosenMonthCashBackViewHolder.setMerchantTwo(icon, monthlyMerchant.getMerchant().getName());
        }
        MonthlyMerchant monthlyMerchant2 = (MonthlyMerchant) monthCashBackChosen.getMonthlyMerchants().get(2);
        Intrinsics.checkExpressionValueIsNotNull(monthlyMerchant2, "merchantThree");
        String icon2 = monthlyMerchant2.getMerchant().getIcon();
        if (icon2 != null) {
            chosenMonthCashBackViewHolder.setMerchantThree(icon2, monthlyMerchant2.getMerchant().getName());
        }
    }

    private final void onBindPush(PushViewHolder pushViewHolder, FeedItem feedItem, PushOperation pushOperation) {
        pushViewHolder.setText(pushOperation.getBody());
        pushViewHolder.setImage(pushOperation.getImage());
        String ref = pushOperation.getRef();
        pushOperation = pushOperation.getTitle();
        if (TextUtils.isEmpty(ref) || TextUtils.isEmpty((CharSequence) pushOperation)) {
            pushViewHolder.setButtons(false);
            pushViewHolder.setTitle(pushOperation);
        } else {
            pushViewHolder.setTitle(null);
            pushViewHolder.setButtons(true);
            Intrinsics.checkExpressionValueIsNotNull(pushOperation, ShareConstants.WEB_DIALOG_PARAM_TITLE);
            Intrinsics.checkExpressionValueIsNotNull(ref, "ref");
            pushViewHolder.setMainAction(pushOperation, ref);
        }
        pushViewHolder.setFeedItem(feedItem);
    }

    public final int getItemCount() {
        int cleanSize = getCleanSize();
        if (this.bottomItem != null) {
            cleanSize++;
        }
        return cleanSize + 1;
    }

    public final int getCleanSize() {
        return this.feedItems.size() + this.stickyItem.size();
    }

    public final boolean isEmpty() {
        return this.isEmpty;
    }

    public final boolean isTopOperation(int i) {
        return i >= 0 && this.stickyItem.size() > i;
    }

    public final int getItemViewType(int i) {
        if (i == 0) {
            return this.searchMode != 0 ? FeedItem.OPERATION_SEARCH_HEADER : FeedItem.OPERATION_HEADER;
        } else {
            i--;
            if (this.bottomItem == null || i != getCleanSize()) {
                int size = this.stickyItem.size();
                if (size > i) {
                    return ((FeedItem) this.stickyItem.get(i)).getType();
                }
                return ((FeedItem) this.feedItems.get(i - size)).getType();
            }
            i = this.bottomItem;
            if (i == 0) {
                Intrinsics.throwNpe();
            }
            return i.getType();
        }
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

    public final void addTopItem(FeedItem feedItem) {
        Intrinsics.checkParameterIsNotNull(feedItem, "feedItem");
        int indexOf = this.stickyItem.indexOf(feedItem);
        if (indexOf != -1) {
            this.stickyItem.set(indexOf, feedItem);
            notifyItemChanged(indexOf);
            return;
        }
        this.stickyItem.add(feedItem);
        notifyItemInserted(this.stickyItem.indexOf(feedItem));
    }

    public final void removeItem(FeedItem feedItem) {
        Intrinsics.checkParameterIsNotNull(feedItem, "feedItem");
        int size = this.stickyItem.size();
        int indexOf = this.stickyItem.indexOf(feedItem);
        if (indexOf != -1) {
            this.stickyItem.remove(feedItem);
            notifyItemRemoved(indexOf);
        }
        feedItem = this.feedItems.indexOf(feedItem);
        if (feedItem != -1) {
            this.feedItems.removeItemAt(feedItem);
            notifyItemRemoved(feedItem + size);
        }
    }

    public final void onDismiss(View view, Object obj) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        Intrinsics.checkParameterIsNotNull(obj, "token");
        FeedItem feedItem = (FeedItem) obj;
        view.setVisibility(8);
        removeItem(feedItem);
        this.feedPresenter.stashOperation(feedItem);
    }

    public final void clear() {
        this.feedItems.clear();
        this.stickyItem.clear();
        notifyDataSetChanged();
    }

    public final void clearTop() {
        this.stickyItem.clear();
        notifyDataSetChanged();
    }

    public final void changeItem(FeedItem feedItem) {
        Intrinsics.checkParameterIsNotNull(feedItem, "feedItem");
        int indexOf = this.stickyItem.indexOf(feedItem);
        if (indexOf >= 0) {
            this.stickyItem.set(indexOf, feedItem);
            return;
        }
        indexOf = this.feedItems.indexOf(feedItem);
        if (indexOf >= 0) {
            this.feedItems.updateItemAt(indexOf, feedItem);
        }
    }

    public final void addItems(List<FeedItem> list) {
        Intrinsics.checkParameterIsNotNull(list, "feed");
        this.feedItems.beginBatchedUpdates();
        try {
            for (FeedItem addItem : list) {
                addItem(addItem);
            }
        } finally {
            this.feedItems.endBatchedUpdates();
        }
    }

    public final void addItems(List<FeedItem> list, List<FeedItem> list2) {
        Intrinsics.checkParameterIsNotNull(list, "top");
        Intrinsics.checkParameterIsNotNull(list2, "feed");
        for (FeedItem addTopItem : list) {
            addTopItem(addTopItem);
        }
        this.feedItems.beginBatchedUpdates();
        try {
            for (FeedItem addItem : list2) {
                addItem(addItem);
            }
        } finally {
            this.feedItems.endBatchedUpdates();
        }
    }

    private final boolean isToday(long j) {
        return DateUtils.isToday(j);
    }

    private final boolean isYesterday(Calendar calendar) {
        Calendar instance = Calendar.getInstance();
        instance.add(6, -1);
        if (instance.get(1) == calendar.get(1) && instance.get(6) == calendar.get(6)) {
            return true;
        }
        return null;
    }
}
