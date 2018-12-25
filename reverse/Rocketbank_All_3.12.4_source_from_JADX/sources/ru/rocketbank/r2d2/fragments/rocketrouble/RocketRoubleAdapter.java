package ru.rocketbank.r2d2.fragments.rocketrouble;

import android.support.v7.util.SortedList;
import android.support.v7.util.SortedList.Callback;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.RocketRubleHistoryOperation;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.model.dto.operations.Miles;
import ru.rocketbank.core.model.dto.operations.Operation;
import ru.rocketbank.core.model.enums.Cobrand;
import ru.rocketbank.core.model.operation.DelimiterOperation;
import ru.rocketbank.core.model.operation.StatisticsOperation;
import ru.rocketbank.core.network.model.FeedItem;
import ru.rocketbank.core.realm.UserData;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.core.utils.MoneyFormatter;
import ru.rocketbank.core.utils.MoneyFormatter.Companion;
import ru.rocketbank.core.widgets.BarChartView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.utils.CalendarUtils;

/* compiled from: RocketRoubleAdapter.kt */
public final class RocketRoubleAdapter extends Adapter<RocketViewHolder> {
    private final Authorization authorization = RocketApplication.Companion.getInjector().getAuthorization();
    private final BarChartAdapter barChartAdapter;
    private RocketRubleHistoryOperation bottomItem;
    private final SortedList<RocketRubleHistoryOperation> feedItems;
    private final RecyclerView feedView;
    private final MoneyFormatter moneyFormatter;
    private final RocketRoubleModel rocketRoubleModel;
    private final Callback<RocketRubleHistoryOperation> sortedCallback;
    private final ArrayList<RocketRubleHistoryOperation> stickyItems;
    private UserModel userModel;

    public RocketRoubleAdapter(RecyclerView recyclerView, BarChartAdapter barChartAdapter, RocketRoubleModel rocketRoubleModel) {
        Intrinsics.checkParameterIsNotNull(recyclerView, "feedView");
        Intrinsics.checkParameterIsNotNull(barChartAdapter, "barChartAdapter");
        Intrinsics.checkParameterIsNotNull(rocketRoubleModel, "rocketRoubleModel");
        this.feedView = recyclerView;
        this.barChartAdapter = barChartAdapter;
        this.rocketRoubleModel = rocketRoubleModel;
        RocketApplication.Companion.getInjector().getCurrencyManager();
        this.moneyFormatter = RocketApplication.Companion.getInjector().getMoneyFormatter();
        this.moneyFormatter.setFloorAmount(true);
        this.stickyItems = new ArrayList();
        this.sortedCallback = (Callback) new Callback<RocketRubleHistoryOperation>() {
            public final boolean areContentsTheSame(RocketRubleHistoryOperation rocketRubleHistoryOperation, RocketRubleHistoryOperation rocketRubleHistoryOperation2) {
                Intrinsics.checkParameterIsNotNull(rocketRubleHistoryOperation, "oldItem");
                Intrinsics.checkParameterIsNotNull(rocketRubleHistoryOperation2, "newItem");
                return false;
            }

            public final void onRemoved(int i, int i2) {
            }

            public final int compare(RocketRubleHistoryOperation rocketRubleHistoryOperation, RocketRubleHistoryOperation rocketRubleHistoryOperation2) {
                Intrinsics.checkParameterIsNotNull(rocketRubleHistoryOperation, "first");
                Intrinsics.checkParameterIsNotNull(rocketRubleHistoryOperation2, "second");
                if (!(rocketRubleHistoryOperation.getOperationCustom() instanceof Operation) || !(rocketRubleHistoryOperation2.getOperationCustom() instanceof Operation)) {
                    return -1;
                }
                rocketRubleHistoryOperation2 = rocketRubleHistoryOperation2.getOperationCustom();
                Long l = null;
                rocketRubleHistoryOperation2 = rocketRubleHistoryOperation2 != null ? Long.valueOf(rocketRubleHistoryOperation2.getHappenedAt()) : null;
                if (rocketRubleHistoryOperation2 == null) {
                    Intrinsics.throwNpe();
                }
                long longValue = rocketRubleHistoryOperation2.longValue();
                rocketRubleHistoryOperation = rocketRubleHistoryOperation.getOperationCustom();
                if (rocketRubleHistoryOperation != null) {
                    l = Long.valueOf(rocketRubleHistoryOperation.getHappenedAt());
                }
                if (l == null) {
                    Intrinsics.throwNpe();
                }
                return (int) (longValue - l.longValue());
            }

            public final void onInserted(int i, int i2) {
                this.notifyItemInserted(i + this.stickyItems.size());
            }

            public final void onMoved(int i, int i2) {
                int size = this.stickyItems.size();
                this.notifyItemMoved(i + size, i2 + size);
            }

            public final void onChanged(int i, int i2) {
                this.notifyItemChanged(i + this.stickyItems.size());
            }

            public final boolean areItemsTheSame(RocketRubleHistoryOperation rocketRubleHistoryOperation, RocketRubleHistoryOperation rocketRubleHistoryOperation2) {
                Intrinsics.checkParameterIsNotNull(rocketRubleHistoryOperation, "item1");
                Intrinsics.checkParameterIsNotNull(rocketRubleHistoryOperation2, "item2");
                return Intrinsics.areEqual(rocketRubleHistoryOperation, rocketRubleHistoryOperation2);
            }
        };
        this.feedItems = new SortedList(RocketRubleHistoryOperation.class, this.sortedCallback);
    }

    public final UserModel getUserModel() {
        return this.userModel;
    }

    public final void setUserModel(UserModel userModel) {
        this.userModel = userModel;
    }

    public final Authorization getAuthorization() {
        return this.authorization;
    }

    public final MoneyFormatter getMoneyFormatter() {
        return this.moneyFormatter;
    }

    public final RocketViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        Intrinsics.checkParameterIsNotNull(viewGroup, "parent");
        LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
        if (i == RocketRubleHistoryOperation.Companion.getOPERATION_HEADER()) {
            viewGroup = from.inflate(C0859R.layout.list_item_card_header, viewGroup, false);
            RocketRoubleModel rocketRoubleModel = this.rocketRoubleModel;
            Intrinsics.checkExpressionValueIsNotNull(viewGroup, "view");
            return (RocketViewHolder) new HeaderViewHolder(rocketRoubleModel, viewGroup);
        } else if (i == RocketRubleHistoryOperation.Companion.getOPERATION_NO_COMPENSATION()) {
            viewGroup = from.inflate(C0859R.layout.feed_item_no_compenstation, viewGroup, false);
            Intrinsics.checkExpressionValueIsNotNull(viewGroup, "view");
            return (RocketViewHolder) new NoOperationHolder(viewGroup);
        } else if (i == RocketRubleHistoryOperation.Companion.getOPERATION_HISTORY()) {
            viewGroup = from.inflate(C0859R.layout.feed_item_operation_history, viewGroup, false);
            Intrinsics.checkExpressionValueIsNotNull(viewGroup, "view");
            return (RocketViewHolder) new HistoryViewHolder(viewGroup);
        } else if (i == RocketRubleHistoryOperation.Companion.getOPERATION_OPERATION()) {
            viewGroup = from.inflate(C0859R.layout.feed_item_operation_history, viewGroup, false);
            Intrinsics.checkExpressionValueIsNotNull(viewGroup, "view");
            return (RocketViewHolder) new HistoryViewHolder(viewGroup);
        } else if (i == RocketRubleHistoryOperation.Companion.getOPERATION_ROCKETSHOP()) {
            viewGroup = from.inflate(C0859R.layout.rocket_rubles_shop_button, viewGroup, false);
            Intrinsics.checkExpressionValueIsNotNull(viewGroup, "view");
            return (RocketViewHolder) new GoToShopViewHolder(viewGroup);
        } else if (i == RocketRubleHistoryOperation.Companion.getOPERATION_STATISTICS()) {
            View inflate = from.inflate(C0859R.layout.feed_item_operation_statistics, viewGroup, false);
            RocketRoubleModel rocketRoubleModel2 = this.rocketRoubleModel;
            Intrinsics.checkExpressionValueIsNotNull(from, "layoutInflater");
            RecyclerView recyclerView = this.feedView;
            Intrinsics.checkExpressionValueIsNotNull(inflate, "view");
            return (RocketViewHolder) new StatisticsViewHolder(rocketRoubleModel2, from, this, recyclerView, inflate);
        } else if (i == RocketRubleHistoryOperation.Companion.getOPERATION_ACTUAL()) {
            viewGroup = from.inflate(C0859R.layout.feed_item_operation, viewGroup, false);
            Intrinsics.checkExpressionValueIsNotNull(viewGroup, "view");
            return (RocketViewHolder) new RocketRoubleOperationViewHolder(viewGroup);
        } else if (i == RocketRubleHistoryOperation.Companion.getOPERATION_BAR()) {
            viewGroup = from.inflate(C0859R.layout.rocket_bar_item, viewGroup, false);
            BarChartAdapter barChartAdapter = this.barChartAdapter;
            Intrinsics.checkExpressionValueIsNotNull(viewGroup, "view");
            return (RocketViewHolder) new BarCharViewHolder(barChartAdapter, viewGroup);
        } else if (i == RocketRubleHistoryOperation.Companion.getOPERATION_DELIMITER()) {
            viewGroup = from.inflate(C0859R.layout.layout_delimiter, viewGroup, false);
            Intrinsics.checkExpressionValueIsNotNull(viewGroup, "view");
            return (RocketViewHolder) new DelimiterViewHolder(viewGroup);
        } else if (i == RocketRubleHistoryOperation.Companion.getOPERATION_NONE()) {
            viewGroup = from.inflate(C0859R.layout.feed_item_loading, viewGroup, false);
            Intrinsics.checkExpressionValueIsNotNull(viewGroup, "view");
            return new RocketViewHolder(viewGroup);
        } else {
            viewGroup = from.inflate(C0859R.layout.feed_item_loading, viewGroup, false);
            Intrinsics.checkExpressionValueIsNotNull(viewGroup, "view");
            return new RocketViewHolder(viewGroup);
        }
    }

    private final RocketRubleHistoryOperation getItem(int i) {
        if (this.bottomItem == null || i != getCleanSize()) {
            int size = this.stickyItems.size();
            if (size > i) {
                i = this.stickyItems.get(i);
                Intrinsics.checkExpressionValueIsNotNull(i, "stickyItems[position]");
                return (RocketRubleHistoryOperation) i;
            }
            i = this.feedItems.get(i - size);
            Intrinsics.checkExpressionValueIsNotNull(i, "feedItems.get(position - stickySize)");
            return (RocketRubleHistoryOperation) i;
        }
        i = this.bottomItem;
        if (i == 0) {
            Intrinsics.throwNpe();
        }
        return i;
    }

    public final void onBindViewHolder(RocketViewHolder rocketViewHolder, int i) {
        Intrinsics.checkParameterIsNotNull(rocketViewHolder, "holder");
        RocketRubleHistoryOperation item = getItem(i);
        i = getItemViewType(i);
        if (i != FeedItem.OPERATION_SEARCH_HEADER) {
            if (i == RocketRubleHistoryOperation.Companion.getOPERATION_NO_COMPENSATION()) {
                NoOperationHolder noOperationHolder = (NoOperationHolder) rocketViewHolder;
                UserData userData = this.authorization.getUserData();
                Intrinsics.checkParameterIsNotNull(userData, "userData");
                float f = (Cobrand.Companion.fromCobrandName(userData.realmGet$cobrandName()) != Cobrand.METROPOLIS ? 1 : false) != 0 ? 3000.0f : 500.0f;
                UserModel userModel = this.userModel;
                if (userModel == null) {
                    Intrinsics.throwNpe();
                }
                f -= userModel.getMiles();
                if (f > BitmapDescriptorFactory.HUE_RED) {
                    MoneyFormatter moneyFormatter = this.moneyFormatter;
                    double d = (double) f;
                    Companion companion = MoneyFormatter.Companion;
                    String format = moneyFormatter.format(d, MoneyFormatter.access$getCURRENCY_ROCKET$cp(), false);
                    rocketViewHolder = rocketViewHolder.itemView;
                    Intrinsics.checkExpressionValueIsNotNull(rocketViewHolder, "holder.itemView");
                    rocketViewHolder = rocketViewHolder.getContext().getString(C0859R.string.left_to_absorb, new Object[]{format});
                    Intrinsics.checkExpressionValueIsNotNull(rocketViewHolder, "holder.itemView.context.…ing.left_to_absorb, rmon)");
                    noOperationHolder.setLeftText(rocketViewHolder);
                    return;
                }
                noOperationHolder.hide();
            } else if (i == RocketRubleHistoryOperation.Companion.getOPERATION_STATISTICS()) {
                onBindStatisticsOperation((StatisticsViewHolder) rocketViewHolder, item, (StatisticsOperation) item.getOperationCustom());
            } else if (i == RocketRubleHistoryOperation.Companion.getOPERATION_HISTORY()) {
                HistoryViewHolder historyViewHolder = (HistoryViewHolder) rocketViewHolder;
                i = item.getOperationCustom();
                if (i == 0) {
                    throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.model.dto.operations.Operation");
                }
                onBindRocketRubleOperation(historyViewHolder, item, (Operation) i);
            } else if (i == RocketRubleHistoryOperation.Companion.getOPERATION_ACTUAL()) {
                RocketRoubleOperationViewHolder rocketRoubleOperationViewHolder = (RocketRoubleOperationViewHolder) rocketViewHolder;
                i = item.getOperationCustom();
                if (i == 0) {
                    Intrinsics.throwNpe();
                }
                if (i == 0) {
                    throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.model.dto.operations.Operation");
                }
                onBindActual(rocketRoubleOperationViewHolder, item, (Operation) i);
            } else if (i == RocketRubleHistoryOperation.Companion.getOPERATION_DELIMITER()) {
                onBindDelimiter(rocketViewHolder, item);
            } else if (i == RocketRubleHistoryOperation.Companion.getOPERATION_BAR()) {
                onBindBar(rocketViewHolder, item);
            } else if (i == RocketRubleHistoryOperation.Companion.getOPERATION_ROCKETSHOP()) {
                onBindRocketshop((GoToShopViewHolder) rocketViewHolder);
            }
        }
    }

    private final void onBindRocketshop(GoToShopViewHolder goToShopViewHolder) {
        goToShopViewHolder.bind(this.authorization.getUserData(), new RocketRoubleAdapter$onBindRocketshop$1(goToShopViewHolder));
    }

    private final void onBindStatisticsOperation(StatisticsViewHolder statisticsViewHolder, RocketRubleHistoryOperation rocketRubleHistoryOperation, StatisticsOperation statisticsOperation) {
        statisticsViewHolder.resetAll();
        if (statisticsOperation != null) {
            if (this.userModel != null) {
                rocketRubleHistoryOperation = Calendar.getInstance();
                UserModel userModel;
                if (this.rocketRoubleModel.isFullMoneyModeList()) {
                    List<Number> months = statisticsOperation.getMonths();
                    if (months == null) {
                        Intrinsics.throwNpe();
                    }
                    for (Number floatValue : months) {
                        float floatValue2 = floatValue.floatValue();
                        userModel = this.userModel;
                        if (userModel == null) {
                            Intrinsics.throwNpe();
                        }
                        Float valueOf = Float.valueOf(floatValue2);
                        Intrinsics.checkExpressionValueIsNotNull(rocketRubleHistoryOperation, "dateTime");
                        statisticsViewHolder.addMonth(userModel, valueOf, CalendarUtils.copy(rocketRubleHistoryOperation));
                        rocketRubleHistoryOperation.add(2, -1);
                    }
                } else {
                    List months2 = statisticsOperation.getMonths();
                    if (months2 == null) {
                        Intrinsics.throwNpe();
                    }
                    int min = Math.min(3, months2.size());
                    for (int i = 0; i < min; i++) {
                        userModel = this.userModel;
                        if (userModel == null) {
                            Intrinsics.throwNpe();
                        }
                        List months3 = statisticsOperation.getMonths();
                        if (months3 == null) {
                            Intrinsics.throwNpe();
                        }
                        Float f = (Float) months3.get(i);
                        Intrinsics.checkExpressionValueIsNotNull(rocketRubleHistoryOperation, "dateTime");
                        statisticsViewHolder.addMonth(userModel, f, CalendarUtils.copy(rocketRubleHistoryOperation));
                        rocketRubleHistoryOperation.add(2, -1);
                    }
                }
                rocketRubleHistoryOperation = this.userModel;
                if (rocketRubleHistoryOperation == null) {
                    Intrinsics.throwNpe();
                }
                statisticsViewHolder.addForAllTime(rocketRubleHistoryOperation, statisticsOperation.getTotal());
                statisticsViewHolder.addMode();
            }
        }
    }

    private final void onBindRocketRubleOperation(HistoryViewHolder historyViewHolder, RocketRubleHistoryOperation rocketRubleHistoryOperation, Operation operation) {
        historyViewHolder.setOperation(operation);
        if (operation.getCompensation_status() != null) {
            historyViewHolder.setConfirmationStatus(Intrinsics.areEqual(Miles.STATUS_COMPLETED, operation.getCompensation_status()));
        } else {
            historyViewHolder.setComment(null);
        }
        historyViewHolder.setRocketRoubles(operation.getMimimiles());
        historyViewHolder.setName(operation.getDetails());
    }

    private final void onBindBar(RocketViewHolder rocketViewHolder, RocketRubleHistoryOperation rocketRubleHistoryOperation) {
        if (rocketViewHolder == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.fragments.rocketrouble.BarCharViewHolder");
        }
        ((BarCharViewHolder) rocketViewHolder).getBarChartView().setAdapter((BarChartView.Adapter) this.barChartAdapter);
    }

    private final void onBindDelimiter(RocketViewHolder rocketViewHolder, RocketRubleHistoryOperation rocketRubleHistoryOperation) {
        if (rocketViewHolder == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.fragments.rocketrouble.DelimiterViewHolder");
        }
        DelimiterViewHolder delimiterViewHolder = (DelimiterViewHolder) rocketViewHolder;
        DelimiterOperation delimiterOperation = (DelimiterOperation) rocketRubleHistoryOperation.getOperationCustom();
        if (delimiterOperation != null && delimiterOperation.getType() == RocketRoubleFragment.Companion.getDELIMITER_AVALIABLE()) {
            delimiterViewHolder.setText(C0859R.string.avaliable_for_compensation);
        } else if (delimiterOperation != null && delimiterOperation.getType() == RocketRoubleFragment.Companion.getDELIMITER_STATISTICS()) {
            rocketRubleHistoryOperation = this.authorization.getUserData();
            Intrinsics.checkParameterIsNotNull(rocketRubleHistoryOperation, "userData");
            delimiterViewHolder.setText(Cobrand.Companion.fromCobrandName(rocketRubleHistoryOperation.realmGet$cobrandName()).getStatisticsTitle());
        } else if (delimiterOperation != null && delimiterOperation.getType() == RocketRoubleFragment.Companion.getDELIMITER_DYNAMIC()) {
            delimiterViewHolder.setText(C0859R.string.operation_dynamic);
        } else if (delimiterOperation == null || delimiterOperation.getType() != RocketRoubleFragment.Companion.getDELIMITER_SHOP()) {
            delimiterViewHolder.setText(C0859R.string.rocketrubles_operation_history);
        } else {
            delimiterViewHolder.setText(C0859R.string.shop_delimiter_title);
        }
    }

    private final void onBindActual(RocketRoubleOperationViewHolder rocketRoubleOperationViewHolder, RocketRubleHistoryOperation rocketRubleHistoryOperation, Operation operation) {
        rocketRubleHistoryOperation = operation.getDisplayMoney();
        rocketRoubleOperationViewHolder.setContent(operation.getComment());
        rocketRoubleOperationViewHolder.setName(operation.getDetails());
        rocketRoubleOperationViewHolder.setOperation(operation);
        rocketRoubleOperationViewHolder.setNoAction();
        operation = this.moneyFormatter;
        if (rocketRubleHistoryOperation == null) {
            Intrinsics.throwNpe();
        }
        double amount = rocketRubleHistoryOperation.getAmount();
        rocketRubleHistoryOperation = rocketRubleHistoryOperation.getCurrencyCode();
        Intrinsics.checkExpressionValueIsNotNull(rocketRubleHistoryOperation, "moneyData.currencyCode");
        rocketRoubleOperationViewHolder.setAmount(operation.format(amount, rocketRubleHistoryOperation, true));
    }

    public final int getItemCount() {
        int cleanSize = getCleanSize();
        return this.bottomItem != null ? cleanSize + 1 : cleanSize;
    }

    public final int getCleanSize() {
        return this.feedItems.size() + this.stickyItems.size();
    }

    public final int getItemViewType(int i) {
        if (this.bottomItem == null || i != getCleanSize()) {
            int size = this.stickyItems.size();
            if (size > i) {
                return ((RocketRubleHistoryOperation) this.stickyItems.get(i)).getType();
            }
            return ((RocketRubleHistoryOperation) this.feedItems.get(i - size)).getType();
        }
        i = this.bottomItem;
        if (i == 0) {
            Intrinsics.throwNpe();
        }
        return i.getType();
    }

    public final void addItem(RocketRubleHistoryOperation rocketRubleHistoryOperation) {
        Intrinsics.checkParameterIsNotNull(rocketRubleHistoryOperation, "loadingItem");
        int indexOf = this.feedItems.indexOf(rocketRubleHistoryOperation);
        if (indexOf != -1) {
            this.feedItems.updateItemAt(indexOf, rocketRubleHistoryOperation);
        } else {
            this.feedItems.add(rocketRubleHistoryOperation);
        }
        this.feedItems.add(rocketRubleHistoryOperation);
    }

    public final void addBottom(RocketRubleHistoryOperation rocketRubleHistoryOperation) {
        Intrinsics.checkParameterIsNotNull(rocketRubleHistoryOperation, "feedItem");
        this.bottomItem = rocketRubleHistoryOperation;
        notifyItemInserted(getCleanSize());
    }

    public final void removeBottom() {
        this.bottomItem = null;
        notifyItemRemoved(getCleanSize() - 1);
    }

    public final void addTopItem(RocketRubleHistoryOperation rocketRubleHistoryOperation) {
        Intrinsics.checkParameterIsNotNull(rocketRubleHistoryOperation, "feedItem");
        int indexOf = this.stickyItems.indexOf(rocketRubleHistoryOperation);
        if (indexOf != -1) {
            this.stickyItems.set(indexOf, rocketRubleHistoryOperation);
            notifyItemChanged(indexOf);
            return;
        }
        this.stickyItems.add(rocketRubleHistoryOperation);
        notifyItemInserted(this.stickyItems.indexOf(rocketRubleHistoryOperation));
    }

    public final void removeItem(RocketRubleHistoryOperation rocketRubleHistoryOperation) {
        Intrinsics.checkParameterIsNotNull(rocketRubleHistoryOperation, "feedItem");
        int size = this.stickyItems.size();
        int indexOf = this.stickyItems.indexOf(rocketRubleHistoryOperation);
        if (indexOf != -1) {
            this.stickyItems.remove(rocketRubleHistoryOperation);
            notifyItemRemoved(indexOf);
        }
        indexOf = this.feedItems.indexOf(rocketRubleHistoryOperation);
        if (indexOf != -1) {
            this.feedItems.remove(rocketRubleHistoryOperation);
            notifyItemRemoved(indexOf + size);
        }
    }

    public final void clear() {
        this.feedItems.clear();
        notifyDataSetChanged();
    }

    public final void clearTop() {
        this.stickyItems.clear();
        this.feedView.requestLayout();
        notifyDataSetChanged();
    }
}
