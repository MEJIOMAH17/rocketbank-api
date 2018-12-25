package ru.rocketbank.r2d2.activities.operation;

import android.content.Context;
import android.content.Intent;
import android.graphics.SurfaceTexture;
import android.graphics.drawable.Drawable;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v4.widget.SwipeRefreshLayout.OnRefreshListener;
import android.support.v7.graphics.drawable.DrawerArrowDrawable;
import android.support.v7.util.SortedList;
import android.support.v7.util.SortedList.Callback;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.OnScrollListener;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.TextureView;
import android.view.TextureView.SurfaceTextureListener;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.github.ksoichiro.android.observablescrollview.ObservableRecyclerView;
import com.github.ksoichiro.android.observablescrollview.ObservableScrollViewCallbacks;
import com.github.ksoichiro.android.observablescrollview.ScrollState;
import com.jakewharton.rxbinding.view.RxView;
import com.mikepenz.materialize.util.KeyboardUtil;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.manager.CurrencyManager;
import ru.rocketbank.core.manager.FeedManager;
import ru.rocketbank.core.manager.loader.TagOperationLoader;
import ru.rocketbank.core.model.AbstractOperation;
import ru.rocketbank.core.model.FeedList;
import ru.rocketbank.core.model.MoneyData;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.model.dto.operations.Operation;
import ru.rocketbank.core.network.api.OperationApi;
import ru.rocketbank.core.network.api.RocketAPI;
import ru.rocketbank.core.network.model.FeedItem;
import ru.rocketbank.core.network.model.TagAnalytics;
import ru.rocketbank.core.utils.MoneyFormatter;
import ru.rocketbank.core.widgets.BarChartView;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.activities.SecuredActivity;
import ru.rocketbank.r2d2.activities.operation.model.OperationReceiptModel;
import ru.rocketbank.r2d2.activities.operation.viewholder.OperationViewHolder;
import ru.rocketbank.r2d2.adapters.operations.BarChartAdapter;
import ru.rocketbank.r2d2.utils.CalendarUtils;
import rx.Subscriber;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Action1;

public class OperationTagActivity extends SecuredActivity implements OnRefreshListener, SurfaceTextureListener, ObservableScrollViewCallbacks {
    private static final int ACTIONS = 1;
    private static final int BAR = 4;
    private static final int CATEGORY = 2;
    private static final String FEED_IMAGE_LOADING_TAG = "OperationLogo";
    private static final int HEADER = 0;
    private static String INTERNAL_CASH_IN = "internal_cash_in";
    private static final int MAP = 3;
    private static final int MILES = 6;
    private static final int MILES_COMPENSATED = 7;
    private static final int OPERATION = 9;
    private static final String OPERATION_EXTRA = "OPERATION_EXTRA";
    private static final int OPERATION_LOADING = 8;
    private static final int ROCKETRUBLE_OPERATION = 10;
    private static final int STAT = 5;
    private static final int STATUS_IN = 437;
    private static final int STATUS_NONE = 0;
    private static final int STATUS_OUT = 368;
    private static final String TAG = "OperationTagActivity";
    private static String TRANSFER_CASH_IN = "transfer_cash_in";
    private FeedAdapter adapter;
    private double amount;
    TextView amountView;
    FrameLayout appBarLayout;
    private BarChartAdapter barChartAdapter;
    View cardOverlay;
    private Subscription contextSubscription;
    private CurrencyManager currencyManager;
    private Calendar currentDateCalendar;
    private FeedManager feedManager;
    private int headerHeight;
    View headerOverlay;
    TextureView headerVideoView;
    View headerView;
    private boolean isCanBeHidden = false;
    private boolean isFullMode = false;
    private boolean isFullMoneyMode = false;
    private boolean isListLoadingInProgress = false;
    private boolean isLockedKeyBoard = false;
    private LinearLayoutManager linearLayoutManager;
    private MediaPlayer mediaPlayer;
    MoneyFormatter moneyFormatter;
    final OnClickListener navigationClickListner = new C08762();
    private OnScrollListener onScrollListener = new C13483();
    private OperationApi operationApi;
    MoneyFormatter operationFormatter;
    private TagOperationLoader operationLoader;
    private OperationReceiptModel operationReceiptModel;
    ObservableRecyclerView operationView;
    private int paralaxSize;
    Toolbar realToolbar;
    RocketTextView realToolbarTittleView;
    private RocketAPI rocketAPI;
    SwipeRefreshLayout swipeRefreshView;
    private String tag;
    private TagAnalytics tagAnalytics;
    Toolbar toolbar;
    FrameLayout toolbarWrapperView;

    /* renamed from: ru.rocketbank.r2d2.activities.operation.OperationTagActivity$1 */
    class C08751 implements OnClickListener {
        C08751() {
        }

        public void onClick(View view) {
            OperationTagActivity.this.changeMode();
        }
    }

    /* renamed from: ru.rocketbank.r2d2.activities.operation.OperationTagActivity$2 */
    class C08762 implements OnClickListener {
        C08762() {
        }

        public void onClick(View view) {
            OperationTagActivity.this.finish();
        }
    }

    /* renamed from: ru.rocketbank.r2d2.activities.operation.OperationTagActivity$3 */
    class C13483 extends OnScrollListener {
        C13483() {
        }

        public void onScrollStateChanged(RecyclerView recyclerView, int i) {
            super.onScrollStateChanged(recyclerView, i);
            if (i == 0) {
                OperationTagActivity.this.isLockedKeyBoard = 0;
            }
        }
    }

    class FeedAdapter extends Adapter<OperationViewHolder> {
        private FeedItem bottomItem;
        private final SortedList<FeedItem> feedItems = new SortedList(FeedItem.class, this.sortedCallback);
        private final Set<Long> selectedIds = new LinkedHashSet();
        private final Callback<FeedItem> sortedCallback = new C14531();
        private final ArrayList<Item> stickyItem = new ArrayList();

        /* renamed from: ru.rocketbank.r2d2.activities.operation.OperationTagActivity$FeedAdapter$1 */
        class C14531 extends Callback<FeedItem> {
            public boolean areContentsTheSame(FeedItem feedItem, FeedItem feedItem2) {
                return false;
            }

            public void onRemoved(int i, int i2) {
            }

            C14531() {
            }

            public int compare(FeedItem feedItem, FeedItem feedItem2) {
                return (int) (feedItem2.getHappenedAt() - feedItem.getHappenedAt());
            }

            public void onInserted(int i, int i2) {
                FeedAdapter.this.notifyItemInserted(i + FeedAdapter.this.stickyItem.size());
            }

            public void onMoved(int i, int i2) {
                int size = FeedAdapter.this.stickyItem.size();
                FeedAdapter.this.notifyItemMoved(i + size, i2 + size);
            }

            public void onChanged(int i, int i2) {
                FeedAdapter.this.notifyItemChanged(i + FeedAdapter.this.stickyItem.size());
            }

            public boolean areItemsTheSame(FeedItem feedItem, FeedItem feedItem2) {
                return feedItem.equals(feedItem2);
            }
        }

        public OperationViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
            if (i != 0) {
                switch (i) {
                    case 4:
                        return new BarViewHolder(from.inflate(C0859R.layout.layout_operation_bar, viewGroup, false));
                    case 5:
                        return new StatViewHolder(from.inflate(C0859R.layout.layout_operation_stat_month, viewGroup, false));
                    default:
                        switch (i) {
                            case 9:
                                return new OperationDetailViewHolder(OperationTagActivity.this, from.inflate(C0859R.layout.feed_item_operation, viewGroup, false));
                            case 10:
                                return new OperationDetailViewHolder(OperationTagActivity.this, from.inflate(C0859R.layout.feed_item_rocket_rubles_operation, viewGroup, false));
                            default:
                                return null;
                        }
                }
            }
            return new HeaderViewHolder(from.inflate(C0859R.layout.list_item_card_header, viewGroup, false));
        }

        private Item getTopItem(int i) {
            return this.stickyItem.size() > i ? (Item) this.stickyItem.get(i) : 0;
        }

        private FeedItem getItem(int i) {
            if (this.bottomItem != null && i == getCleanSize()) {
                return this.bottomItem;
            }
            int size = this.stickyItem.size();
            if (size > i) {
                return 0;
            }
            return (FeedItem) this.feedItems.get(i - size);
        }

        public void onBindViewHolder(OperationViewHolder operationViewHolder, int i) {
            FeedItem item = getItem(i);
            switch (getItemViewType(i)) {
                case 4:
                    ((BarViewHolder) operationViewHolder).bind();
                    return;
                case 5:
                    updateStat((StatViewHolder) operationViewHolder);
                    return;
                case 9:
                case 10:
                    OperationDetailViewHolder operationDetailViewHolder = (OperationDetailViewHolder) operationViewHolder;
                    if (i == this.stickyItem.size()) {
                        operationDetailViewHolder.showFirst();
                    } else {
                        operationDetailViewHolder.hideDayStart();
                    }
                    onBindOperation(operationDetailViewHolder, item, (Operation) item.getOperation());
                    break;
                default:
                    break;
            }
        }

        private void updateStat(StatViewHolder statViewHolder) {
            statViewHolder.resetAll();
            if (OperationTagActivity.this.tagAnalytics != null) {
                ArrayList months = OperationTagActivity.this.tagAnalytics.getAnalytics().getTag().getMonths();
                Calendar instance = Calendar.getInstance();
                if (OperationTagActivity.this.isFullMoneyMode) {
                    Iterator it = months.iterator();
                    while (it.hasNext()) {
                        statViewHolder.addMonth((Float) it.next(), CalendarUtils.copy(instance));
                        instance.add(2, -1);
                    }
                } else {
                    int min = Math.min(3, months.size());
                    for (int i = 0; i < min; i++) {
                        statViewHolder.addMonth((Float) months.get(i), CalendarUtils.copy(instance));
                        instance.add(2, -1);
                    }
                }
                statViewHolder.addForAllTime(Float.valueOf(OperationTagActivity.this.tagAnalytics.getAnalytics().getTag().getTotal()));
                statViewHolder.addMode();
            }
        }

        private AbstractOperation getOperation(int i) {
            return (i <= 0 || i >= getItemCount()) ? 0 : getItem(i).getOperation();
        }

        private void onBindOperation(OperationDetailViewHolder operationDetailViewHolder, FeedItem feedItem, Operation operation) {
            MoneyData money = operation.getMoney();
            operationDetailViewHolder.setContent(operation.getComment());
            operationDetailViewHolder.setName(operation.getDetails());
            operationDetailViewHolder.setOperation(operation, feedItem);
            operationDetailViewHolder.setNoAction();
            if (operation.isRocketRubleOperation() != null) {
                feedItem = OperationTagActivity.this.operationFormatter.formatAmount((double) ((float) money.getAmount()), money.getCurrencyCode(), false);
                operationDetailViewHolder.setAmount(feedItem.getAmountString());
                operationDetailViewHolder.setRocketrubles(feedItem.getSuffix());
                return;
            }
            operationDetailViewHolder.setAmount(OperationTagActivity.this.operationFormatter.format((double) ((float) money.getAmount()), money.getCurrencyCode(), false));
        }

        public int getItemCount() {
            int cleanSize = getCleanSize();
            return this.bottomItem != null ? cleanSize + 1 : cleanSize;
        }

        public int getCleanSize() {
            return this.feedItems.size() + this.stickyItem.size();
        }

        public boolean isTopOperation(int i) {
            return i >= 0 && this.stickyItem.size() > i;
        }

        public int getItemViewType(int i) {
            if (this.bottomItem != null && i == getCleanSize()) {
                return this.bottomItem.getType();
            }
            if (this.stickyItem.size() > i) {
                return ((Item) this.stickyItem.get(i)).getType();
            }
            return getItem(i).getType() == 16 ? 10 : 9;
        }

        public void addItem(FeedItem feedItem) {
            int indexOf = this.feedItems.indexOf(feedItem);
            if (indexOf != -1) {
                this.feedItems.updateItemAt(indexOf, feedItem);
            } else {
                this.feedItems.add(feedItem);
            }
        }

        public void addBottom(FeedItem feedItem) {
            this.bottomItem = feedItem;
            notifyItemInserted(getCleanSize());
        }

        public void removeBottom() {
            this.bottomItem = null;
            notifyItemRemoved(getCleanSize() - 1);
        }

        public void addTopItem(Item item) {
            int indexOf = this.stickyItem.indexOf(item);
            if (indexOf != -1) {
                this.stickyItem.set(indexOf, item);
                notifyItemChanged(indexOf);
                return;
            }
            this.stickyItem.add(item);
            notifyItemInserted(this.stickyItem.indexOf(item));
        }

        public void removeItem(FeedItem feedItem) {
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

        public void clear() {
            this.feedItems.clear();
            this.stickyItem.clear();
            notifyDataSetChanged();
        }

        public void clearTop() {
            this.stickyItem.clear();
            notifyDataSetChanged();
            OperationTagActivity.this.operationView.requestLayout();
        }

        public void changeItem(FeedItem feedItem) {
            int indexOf = this.feedItems.indexOf(feedItem);
            if (indexOf >= 0) {
                this.feedItems.updateItemAt(indexOf, feedItem);
            }
        }
    }

    /* renamed from: ru.rocketbank.r2d2.activities.operation.OperationTagActivity$4 */
    class C14504 extends Subscriber<FeedList> {
        public void onCompleted() {
        }

        C14504() {
        }

        public void onError(Throwable th) {
            AnalyticsManager.logException(th);
            OperationTagActivity.this.isListLoadingInProgress = false;
            OperationTagActivity.this.adapter.removeBottom();
        }

        public void onNext(FeedList feedList) {
            int i = 0;
            OperationTagActivity.this.isListLoadingInProgress = false;
            while (i < feedList.feed.size()) {
                OperationTagActivity.this.adapter.addItem((FeedItem) feedList.feed.get(i));
                i++;
            }
        }
    }

    /* renamed from: ru.rocketbank.r2d2.activities.operation.OperationTagActivity$5 */
    class C14515 extends Subscriber<TagAnalytics> {
        public void onCompleted() {
        }

        public void onError(Throwable th) {
        }

        C14515() {
        }

        public void onNext(TagAnalytics tagAnalytics) {
            OperationTagActivity.this.amount = (double) tagAnalytics.getAnalytics().getTag().getCurrentMonth();
            OperationTagActivity.this.tagAnalytics = tagAnalytics;
            ArrayList arrayList = new ArrayList();
            if (tagAnalytics.getAnalytics().getTag().getMonths() != null) {
                tagAnalytics = tagAnalytics.getAnalytics().getTag().getMonths();
                if (tagAnalytics != null) {
                    OperationTagActivity.this.barChartAdapter.setValues(tagAnalytics);
                    OperationTagActivity.this.showAmount();
                    OperationTagActivity.this.fillItems();
                }
            }
            tagAnalytics = arrayList;
            OperationTagActivity.this.barChartAdapter.setValues(tagAnalytics);
            OperationTagActivity.this.showAmount();
            OperationTagActivity.this.fillItems();
        }
    }

    /* renamed from: ru.rocketbank.r2d2.activities.operation.OperationTagActivity$6 */
    class C14526 extends Subscriber<FeedList> {
        public void onCompleted() {
        }

        C14526() {
        }

        public void onError(Throwable th) {
            AnalyticsManager.logException(th);
            OperationTagActivity.this.isListLoadingInProgress = false;
            OperationTagActivity.this.adapter.removeBottom();
        }

        public void onNext(FeedList feedList) {
            int i = 0;
            OperationTagActivity.this.isListLoadingInProgress = false;
            while (i < feedList.feed.size()) {
                OperationTagActivity.this.adapter.addItem((FeedItem) feedList.feed.get(i));
                i++;
            }
        }
    }

    public class BarViewHolder extends OperationViewHolder {
        BarChartView barChartView;

        public BarViewHolder(View view) {
            super(view);
            this.barChartView = (BarChartView) view.findViewById(C0859R.id.diagram);
        }

        public void bind() {
            this.barChartView.setAdapter(OperationTagActivity.this.barChartAdapter);
            OperationTagActivity.this.barChartAdapter.notifyDataSetChanged();
        }
    }

    public class HeaderViewHolder extends OperationViewHolder implements OnTouchListener {
        public HeaderViewHolder(View view) {
            super(view);
            view.setOnTouchListener(this);
            view = view.findViewById(C0859R.id.stub);
            view.getLayoutParams().height = OperationTagActivity.this.headerHeight;
            view.requestLayout();
        }

        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (!(view == null || view.getParent() == null)) {
                view.getParent().requestDisallowInterceptTouchEvent(true);
            }
            if (OperationTagActivity.this.headerView == null || OperationTagActivity.this.headerView.dispatchTouchEvent(motionEvent) == null) {
                return null;
            }
            return true;
        }
    }

    public class StatViewHolder extends OperationViewHolder {
        private LayoutInflater layoutInflater;
        private LinearLayout statisticsContainer;

        /* renamed from: ru.rocketbank.r2d2.activities.operation.OperationTagActivity$StatViewHolder$1 */
        class C14741 implements Action1<Void> {
            C14741() {
            }

            public void call(Void voidR) {
                StatViewHolder.this.onClicked();
            }
        }

        public StatViewHolder(View view) {
            super(view);
            this.statisticsContainer = (LinearLayout) view.findViewById(C0859R.id.statisticsContainer);
            this.layoutInflater = OperationTagActivity.this.getLayoutInflater();
        }

        public void resetAll() {
            this.statisticsContainer.removeAllViews();
        }

        public void addForAllTime(Float f) {
            View inflate = this.layoutInflater.inflate(C0859R.layout.layout_statistics_total_item, this.statisticsContainer, false);
            ((RocketTextView) inflate.findViewById(C0859R.id.amount)).setText(OperationTagActivity.this.moneyFormatter.format((double) f.floatValue(), "rub", false));
            inflate.findViewById(C0859R.id.rocketrouble).setVisibility(4);
            this.statisticsContainer.addView(inflate);
        }

        public void addMonth(Float f, Calendar calendar) {
            View inflate = this.layoutInflater.inflate(C0859R.layout.layout_statistics_item, this.statisticsContainer, false);
            RocketTextView rocketTextView = (RocketTextView) inflate.findViewById(C0859R.id.forMonth);
            CharSequence forMonthString = CalendarUtils.forMonthString(calendar, OperationTagActivity.this);
            if (calendar.get(1) == OperationTagActivity.this.currentDateCalendar.get(1)) {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(forMonthString);
                stringBuilder.append(" ");
                stringBuilder.append(calendar.get(1));
                forMonthString = stringBuilder.toString();
            }
            rocketTextView.setText(forMonthString);
            ((RocketTextView) inflate.findViewById(C0859R.id.amount)).setText(OperationTagActivity.this.moneyFormatter.format((double) f.floatValue(), "rub", false));
            inflate.findViewById(C0859R.id.rocketrouble).setVisibility(4);
            this.statisticsContainer.addView(inflate);
        }

        public void addMode() {
            this.statisticsContainer.addView(initMoreButton(OperationTagActivity.this.getLayoutInflater().inflate(C0859R.layout.layout_statistics_action_item, this.statisticsContainer, false)));
        }

        private View initMoreButton(View view) {
            TextView textView = (TextView) view.findViewById(C0859R.id.action);
            RxView.clicks(textView).subscribe(new C14741());
            if (OperationTagActivity.this.isFullMoneyMode) {
                textView.setText(C0859R.string.collapse);
            } else {
                textView.setText(C0859R.string.watch_all);
            }
            return view;
        }

        private void onClicked() {
            OperationTagActivity.this.isFullMoneyMode = OperationTagActivity.this.isFullMoneyMode ^ 1;
            OperationTagActivity.this.adapter.notifyItemChanged(getLayoutPosition());
            OperationTagActivity.this.operationView.scrollToPosition(getLayoutPosition());
        }
    }

    public void onDownMotionEvent() {
    }

    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
    }

    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    public void onUpOrCancelMotionEvent(ScrollState scrollState) {
    }

    public static void start(Context context, String str) {
        Intent intent = new Intent(context, OperationTagActivity.class);
        intent.putExtra(OPERATION_EXTRA, str);
        context.startActivity(intent);
    }

    protected void onCreate(Bundle bundle) {
        setupWindowProps();
        this.currentDateCalendar = Calendar.getInstance();
        super.onCreate(bundle);
        setContentView((int) C0859R.layout.activity_operation_modern_tag_receipt);
        this.headerVideoView = (TextureView) findViewById(C0859R.id.headerView);
        this.amountView = (TextView) findViewById(C0859R.id.amount);
        this.headerView = findViewById(C0859R.id.header);
        this.toolbarWrapperView = (FrameLayout) findViewById(C0859R.id.toolbarWrapper);
        this.realToolbar = (Toolbar) findViewById(C0859R.id.toolbarReal);
        this.toolbar = (Toolbar) findViewById(C0859R.id.toolbar);
        this.appBarLayout = (FrameLayout) findViewById(C0859R.id.app_bar);
        this.headerOverlay = findViewById(C0859R.id.header_overlay);
        this.operationView = (ObservableRecyclerView) findViewById(C0859R.id.operation);
        this.cardOverlay = findViewById(C0859R.id.card_overlay);
        this.swipeRefreshView = (SwipeRefreshLayout) findViewById(C0859R.id.swipeRefresh);
        this.realToolbarTittleView = (RocketTextView) findViewById(C0859R.id.real_toolbar_title);
        this.amountView.setOnClickListener(new C08751());
        this.operationApi = getInjector().getOperationApi();
        this.currencyManager = getInjector().getCurrencyManager();
        this.feedManager = getInjector().getFeedManager();
        this.rocketAPI = getInjector().getRocketApi();
        this.moneyFormatter = getInjector().getMoneyFormatter();
        this.operationFormatter = getInjector().getMoneyFormatter();
        Drawable drawerArrowDrawable = new DrawerArrowDrawable(this);
        drawerArrowDrawable.setColor(-1);
        drawerArrowDrawable.setProgress(1.0f);
        Drawable drawerArrowDrawable2 = new DrawerArrowDrawable(this);
        drawerArrowDrawable2.setColor(ContextCompat.getColor(this, C0859R.color.rocketBlack));
        drawerArrowDrawable2.setProgress(1.0f);
        this.toolbar.setNavigationIcon(drawerArrowDrawable);
        this.toolbar.setNavigationOnClickListener(this.navigationClickListner);
        this.realToolbar.setNavigationIcon(drawerArrowDrawable2);
        this.realToolbar.setNavigationOnClickListener(this.navigationClickListner);
        this.paralaxSize = getResources().getDimensionPixelSize(C0859R.dimen.parallax_size);
        this.tag = getIntent().getStringExtra(OPERATION_EXTRA);
        bundle = this.toolbar;
        StringBuilder stringBuilder = new StringBuilder("#");
        stringBuilder.append(this.tag);
        bundle.setTitle(stringBuilder.toString());
        setupHeaderSize();
        this.swipeRefreshView.setOnRefreshListener(this);
        this.adapter = new FeedAdapter();
        this.barChartAdapter = new BarChartAdapter(this);
        this.operationView.setScrollViewCallbacks(this);
        this.operationView.addOnScrollListener(this.onScrollListener);
        this.linearLayoutManager = new LinearLayoutManager(this);
        this.operationView.setLayoutManager(this.linearLayoutManager);
        this.operationView.setAdapter(this.adapter);
        onScrollChanged(0, true, true);
    }

    private void setupWindowProps() {
        if (VERSION.SDK_INT >= 21) {
            getWindow().requestFeature(12);
        }
        if (VERSION.SDK_INT >= 16) {
            getWindow().getDecorView().setSystemUiVisibility(1280);
        }
    }

    private void setupHeaderSize() {
        this.headerHeight = this.headerView.getLayoutParams().height;
        int identifier = getResources().getIdentifier("status_bar_height", "dimen", AbstractSpiCall.ANDROID_CLIENT_TYPE);
        if (identifier > 0) {
            identifier = getResources().getDimensionPixelSize(identifier);
            this.headerHeight += identifier;
            this.toolbarWrapperView.getLayoutParams().height = this.toolbar.getLayoutParams().height + identifier;
            this.toolbarWrapperView.requestLayout();
            this.toolbarWrapperView.setTranslationY((float) this.toolbarWrapperView.getLayoutParams().height);
            LayoutParams layoutParams = this.toolbar.getLayoutParams();
            layoutParams.height += identifier;
            this.toolbar.requestLayout();
        }
        this.appBarLayout.getLayoutParams().height = this.headerHeight;
        this.appBarLayout.requestLayout();
        this.headerView.getLayoutParams().height = this.headerHeight;
        this.headerView.requestLayout();
        this.cardOverlay.getLayoutParams().height = this.headerHeight;
        this.cardOverlay.requestLayout();
    }

    public void onResume() {
        super.onResume();
        refreshData();
        this.operationLoader = this.feedManager.getTagOperationLoader(this.tag);
        this.isListLoadingInProgress = true;
        this.operationLoader.loadPage(0).observeOn(AndroidSchedulers.mainThread()).subscribe(new C14504());
    }

    private void refreshData() {
        if (!(this.contextSubscription == null || this.contextSubscription.isUnsubscribed())) {
            this.contextSubscription.unsubscribe();
        }
        this.contextSubscription = this.operationApi.tagAnalytics(this.tag).observeOn(AndroidSchedulers.mainThread()).subscribe(new C14515());
    }

    public void onUserModel(UserModel userModel) {
        super.onUserModel(userModel);
        this.adapter.notifyDataSetChanged();
    }

    public void onPause() {
        super.onPause();
        hideProgressDialog();
    }

    public void onStart() {
        super.onStart();
        showVideo();
    }

    public void changeMode() {
        this.isFullMode ^= 1;
        showAmount();
    }

    public void showAmount() {
        this.realToolbarTittleView.setText(this.moneyFormatter.format(this.amount, "rub", false));
        this.amountView.setText(this.moneyFormatter.format(this.amount, "rub", this.isFullMode));
    }

    private void showVideo() {
        this.headerVideoView.setSurfaceTextureListener(this);
    }

    public String getRawPath(int i) {
        StringBuilder stringBuilder = new StringBuilder("android.resource://");
        stringBuilder.append(getPackageName());
        stringBuilder.append("/");
        stringBuilder.append(i);
        return stringBuilder.toString();
    }

    private int colorFromCurrency(String str) {
        int hashCode = str.hashCode();
        if (hashCode != 69026) {
            if (hashCode == 81503) {
                if (str.equals("RUB") != null) {
                    str = null;
                    switch (str) {
                        case null:
                            return getResources().getColor(C0859R.color.rub);
                        case 1:
                            return getResources().getColor(C0859R.color.eur);
                        default:
                            return getResources().getColor(C0859R.color.usd);
                    }
                }
            }
        } else if (str.equals("EUR") != null) {
            str = true;
            switch (str) {
                case null:
                    return getResources().getColor(C0859R.color.rub);
                case 1:
                    return getResources().getColor(C0859R.color.eur);
                default:
                    return getResources().getColor(C0859R.color.usd);
            }
        }
        str = -1;
        switch (str) {
            case null:
                return getResources().getColor(C0859R.color.rub);
            case 1:
                return getResources().getColor(C0859R.color.eur);
            default:
                return getResources().getColor(C0859R.color.usd);
        }
    }

    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        i = new Surface(surfaceTexture);
        try {
            this.mediaPlayer = getInjector().getMediaPlayer();
            this.mediaPlayer.reset();
            this.mediaPlayer.setDataSource(this, Uri.parse(getRawPath(C0859R.raw.operation)));
            this.mediaPlayer.setSurface(i);
            this.mediaPlayer.prepare();
            this.mediaPlayer.start();
            this.mediaPlayer.setLooping(0);
        } catch (SurfaceTexture surfaceTexture2) {
            AnalyticsManager.logException(surfaceTexture2);
        }
    }

    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        try {
            this.mediaPlayer.setSurface(null);
            this.mediaPlayer.release();
        } catch (SurfaceTexture surfaceTexture2) {
            AnalyticsManager.logException(surfaceTexture2);
        }
        return null;
    }

    public void onScrollChanged(int i, boolean z, boolean z2) {
        z = false;
        if (z2 && this.isCanBeHidden && !this.isLockedKeyBoard) {
            this.isCanBeHidden = false;
            KeyboardUtil.hideKeyboard(this);
        }
        z2 = (int) (((double) i) * 0.6d);
        if (z2 > this.paralaxSize) {
            z2 = this.paralaxSize;
        }
        this.headerOverlay.setBackgroundColor(((int) (128.0f * ((((float) z2) / ((float) (this.paralaxSize / 100))) / 100.0f))) << 24);
        this.appBarLayout.setTranslationY((float) (-z2));
        z2 = this.headerHeight - i;
        if (z2 < false) {
            z = z2;
        }
        loadNextPageIfNeeded();
        this.cardOverlay.setTranslationY((float) z);
        updateToolbarPosition(i);
    }

    private void loadNextPageIfNeeded() {
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) this.operationView.getLayoutManager();
        int findFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
        int findLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition();
        if (((double) (this.adapter.getItemCount() - findLastVisibleItemPosition)) < ((double) (findLastVisibleItemPosition - findFirstVisibleItemPosition)) * 1.5d && !this.isListLoadingInProgress) {
            requestNextPage();
        }
    }

    private void requestNextPage() {
        if (!this.operationLoader.isLastLoaded()) {
            Log.v(TAG, "load next page");
            loadNext();
        }
    }

    private void loadNext() {
        if (!this.isListLoadingInProgress) {
            this.operationLoader.loadNextPage().observeOn(AndroidSchedulers.mainThread()).subscribe(new C14526());
        }
    }

    private void updateToolbarPosition(int i) {
        int i2 = this.toolbarWrapperView.getLayoutParams().height;
        i = i2 - i;
        if (i < 0) {
            i = 0;
        }
        float height = (float) this.toolbarWrapperView.getHeight();
        if (i2 >= i) {
            height = (float) i;
        }
        this.toolbarWrapperView.setTranslationY(-height);
    }

    public void onRefresh() {
        refreshData();
    }

    private void fillItems() {
        this.adapter.clearTop();
        Item item = new Item();
        item.setType(0);
        this.adapter.addTopItem(item);
        item = new Item();
        item.setType(5);
        this.adapter.addTopItem(item);
        item = new Item();
        item.setType(4);
        this.adapter.addTopItem(item);
        this.adapter.notifyDataSetChanged();
    }
}
