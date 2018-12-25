package ru.rocketbank.r2d2.fragments.deposit;

import android.annotation.SuppressLint;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.SurfaceTexture;
import android.graphics.drawable.ColorDrawable;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.support.design.widget.FloatingActionButton;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v4.widget.SwipeRefreshLayout.OnRefreshListener;
import android.support.v7.app.AlertDialog.Builder;
import android.support.v7.util.SortedList;
import android.support.v7.util.SortedList.Callback;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.support.v7.widget.Toolbar;
import android.support.v7.widget.Toolbar.OnMenuItemClickListener;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MenuItem;
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
import android.widget.ImageView;
import android.widget.TextView;
import com.bumptech.glide.Glide;
import com.github.ksoichiro.android.observablescrollview.ObservableRecyclerView;
import com.github.ksoichiro.android.observablescrollview.ObservableScrollViewCallbacks;
import com.github.ksoichiro.android.observablescrollview.ScrollState;
import de.hdodenhof.circleimageview.CircleImageView;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.manager.CurrencyManager;
import ru.rocketbank.core.model.DepositModel;
import ru.rocketbank.core.model.StatementModel;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.model.enums.Currency;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.core.utils.MoneyFormatter;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.activities.MainActivity;
import ru.rocketbank.r2d2.activities.safe.TransferActivity;
import ru.rocketbank.r2d2.fragments.RocketFragment;
import ru.rocketbank.r2d2.fragments.deposit.strategy.DepositStrategy;
import ru.rocketbank.r2d2.helpers.UIHelper;
import rx.Subscription;
import rx.functions.Action1;

public class DepositFragment extends RocketFragment implements SurfaceTextureListener, ObservableScrollViewCallbacks {
    public static final SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("yyyy-MM-dd", new Locale("ru"));
    public static final SimpleDateFormat DATE_FORMAT_OUT = new SimpleDateFormat("dd MMMM yyyy", new Locale("ru"));
    private static final int DELIMITER_ABOUT = 0;
    private static final int DELIMITER_ACTIONS = 1;
    private static final int DELIMITER_HEADER = 2;
    private static final String DEPOSIT = "DEPOSIT";
    private static final String FEED_IMAGE_LOADING_TAG = "FEED_IMAGE_LOADING";
    private static final int ITEM_TERMS_DETAIL = 40;
    private static final int ITEM_TERMS_REQUISITES = 50;
    private static final int OPERATION_ABOUT_LINE = 1;
    private static final int OPERATION_ACTUAL = 2;
    private static final int OPERATION_DELIMITER = 3;
    private static final int OPERATION_HEADER = 0;
    private static final int STATUS_IN = 437;
    private static final int STATUS_NONE = 0;
    private static final int STATUS_OUT = 368;
    private static final String TAG = "DepositFragment";
    private int appBarHeight;
    private FrameLayout appBarLayout;
    private Subscription authSubscription;
    private Authorization authorization;
    private View cardOverlay;
    private String currency = Currency.ROUBLE.toString();
    private CurrencyManager currencyManager;
    private DepositModel deposit;
    private int fabMargin;
    private FeedAdapter feedAdapter;
    private ObservableRecyclerView feedView;
    private int flexibleSpaceImageHeight;
    private int flexibleSpaceShowFabOffset;
    private FloatingActionButton floatingActionButton;
    private int headerHeight;
    private View headerOverlay;
    private TextureView headerVideoView;
    private boolean isFullMoneyMode;
    private boolean isStartingFullMoneyMode;
    private boolean isTotalFullMoneyMode;
    private MediaPlayer mediaPlayer;
    private TextView money;
    MoneyFormatter moneyFormatter;
    private int paralaxSize;
    private RocketTextView percentText;
    private Toolbar realToolbar;
    private RocketTextView rocketTitle;
    private SwipeRefreshLayout swipeRefreshLayout;
    private Toolbar toolbar;
    private int toolbarHeight;

    /* renamed from: ru.rocketbank.r2d2.fragments.deposit.DepositFragment$1 */
    class C15301 implements OnClickListener {
        C15301() {
        }

        public void onClick(View view) {
            DepositFragment.this.isFullMoneyMode = DepositFragment.this.isFullMoneyMode ^ 1;
            DepositFragment.this.showBalance();
        }
    }

    /* renamed from: ru.rocketbank.r2d2.fragments.deposit.DepositFragment$2 */
    class C15312 implements OnClickListener {
        C15312() {
        }

        public void onClick(View view) {
            DepositFragment.this.isTotalFullMoneyMode = DepositFragment.this.isTotalFullMoneyMode ^ 1;
            DepositFragment.this.showBalance();
        }
    }

    /* renamed from: ru.rocketbank.r2d2.fragments.deposit.DepositFragment$5 */
    class C15325 implements OnClickListener {
        C15325() {
        }

        public void onClick(View view) {
            if (DepositFragment.this.deposit.getBalanceWithoutPercents() >= DepositFragment.this.deposit.getMaxAmount()) {
                UIHelper.showAlertDialog(DepositFragment.this.getActivity(), DepositFragment.this.getString(C0859R.string.deposit_warning_max_amount));
            } else if (DepositFragment.this.deposit.getCanRefillByDate() == null) {
                view = DepositFragment.this.getString(C0859R.string.deposit_cant_refill_by_date);
                Object[] objArr = new Object[1];
                objArr[0] = Integer.valueOf(DepositFragment.this.deposit.getPeriod() == 3 ? 30 : 90);
                UIHelper.showAlertDialog(DepositFragment.this.getActivity(), String.format(view, objArr));
            } else {
                TransferActivity.startActivity(DepositFragment.this.getActivity(), String.valueOf(DepositFragment.this.deposit.getId()));
            }
        }
    }

    /* renamed from: ru.rocketbank.r2d2.fragments.deposit.DepositFragment$8 */
    class C15338 implements DialogInterface.OnClickListener {
        C15338() {
        }

        public void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.dismiss();
        }
    }

    /* renamed from: ru.rocketbank.r2d2.fragments.deposit.DepositFragment$9 */
    class C15349 implements DialogInterface.OnClickListener {
        C15349() {
        }

        public void onClick(DialogInterface dialogInterface, int i) {
            DepositFragment.this.closeDeposit();
        }
    }

    class Item {
        private int id;
        private StatementModel statementModel;
        private String title;
        private int type;
        private String value;

        public int getType() {
            return this.type;
        }

        public void setType(int i) {
            this.type = i;
        }

        public int getId() {
            return this.id;
        }

        public void setId(int i) {
            this.id = i;
        }

        public StatementModel getStatementModel() {
            return this.statementModel;
        }

        public void setStatementModel(StatementModel statementModel) {
            this.statementModel = statementModel;
        }

        public String getTitle() {
            return this.title;
        }

        public void setTitle(String str) {
            this.title = str;
        }

        public String getValue() {
            return this.value;
        }

        public void setValue(String str) {
            this.value = str;
        }

        public Item(int i, int i2) {
            this.type = i;
            this.id = i2;
        }

        public Item(int i, int i2, String str, String str2) {
            this.type = i;
            this.id = i2;
            this.value = str;
            this.title = str2;
        }

        public Item(int i, int i2, StatementModel statementModel) {
            this.type = i;
            this.id = i2;
            this.statementModel = statementModel;
        }

        public Date getHappenedAt() {
            return this.statementModel.getDate();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null) {
                if (getClass() == obj.getClass()) {
                    Item item = (Item) obj;
                    return this.type == item.type && this.id == item.id;
                }
            }
            return false;
        }

        public int hashCode() {
            return (this.type * 31) + this.id;
        }
    }

    /* renamed from: ru.rocketbank.r2d2.fragments.deposit.DepositFragment$3 */
    class C16673 implements OnRefreshListener {
        C16673() {
        }

        public void onRefresh() {
            DepositFragment.this.authorization.refreshBackgroundProfile();
        }
    }

    /* renamed from: ru.rocketbank.r2d2.fragments.deposit.DepositFragment$6 */
    class C16686 implements OnMenuItemClickListener {
        C16686() {
        }

        public boolean onMenuItemClick(MenuItem menuItem) {
            menuItem = menuItem.getItemId();
            if (menuItem == C0859R.id.close) {
                DepositFragment.this.showClose();
            } else if (menuItem == C0859R.id.support) {
                ((MainActivity) DepositFragment.this.getActivity()).showSupport();
            }
            return null;
        }
    }

    /* renamed from: ru.rocketbank.r2d2.fragments.deposit.DepositFragment$7 */
    class C16697 implements OnMenuItemClickListener {
        C16697() {
        }

        public boolean onMenuItemClick(MenuItem menuItem) {
            menuItem = menuItem.getItemId();
            if (menuItem == C0859R.id.close) {
                DepositFragment.this.showClose();
            } else if (menuItem == C0859R.id.support) {
                ((MainActivity) DepositFragment.this.getActivity()).showSupport();
            }
            return null;
        }
    }

    class FeedAdapter extends Adapter<FeedViewHolder> {
        private SortedList<Item> feedItems = new SortedList(Item.class, this.sortedCallback);
        private final Callback<Item> sortedCallback = new C17491();
        private ArrayList<Item> stickyItems = new ArrayList();

        /* renamed from: ru.rocketbank.r2d2.fragments.deposit.DepositFragment$FeedAdapter$1 */
        class C17491 extends Callback<Item> {
            public boolean areContentsTheSame(Item item, Item item2) {
                return false;
            }

            public void onRemoved(int i, int i2) {
            }

            C17491() {
            }

            public int compare(Item item, Item item2) {
                return item2.getHappenedAt().compareTo(item.getHappenedAt());
            }

            public void onInserted(int i, int i2) {
                FeedAdapter.this.notifyItemInserted(i + FeedAdapter.this.stickyItems.size());
            }

            public void onMoved(int i, int i2) {
                int size = FeedAdapter.this.stickyItems.size();
                FeedAdapter.this.notifyItemMoved(i + size, i2 + size);
            }

            public void onChanged(int i, int i2) {
                FeedAdapter.this.notifyItemChanged(i + FeedAdapter.this.stickyItems.size());
            }

            public boolean areItemsTheSame(Item item, Item item2) {
                return item.equals(item2);
            }
        }

        public FeedViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
            switch (i) {
                case 0:
                    return new HeaderViewHolder(from.inflate(C0859R.layout.list_item_card_header, viewGroup, false));
                case 1:
                    return new AboutLineViewHolder(from.inflate(C0859R.layout.deposit_item_operation_about, viewGroup, false));
                case 2:
                    return new HistoryViewHolder(from.inflate(C0859R.layout.deposit_item_operation_history, viewGroup, false));
                case 3:
                    return new DelimiterViewHolder(from.inflate(C0859R.layout.layout_delimiter, viewGroup, false));
                default:
                    return new FeedViewHolder(from.inflate(C0859R.layout.feed_item_loading, viewGroup, false));
            }
        }

        public void onBindViewHolder(FeedViewHolder feedViewHolder, int i) {
            Item item = getItem(i);
            feedViewHolder.setItem(item);
            switch (getItemViewType(i)) {
                case 1:
                    onBindAboutOperation((AboutLineViewHolder) feedViewHolder, item);
                    return;
                case 2:
                    onBindHistoryOperation((HistoryViewHolder) feedViewHolder, item);
                    return;
                case 3:
                    onBindDelimiter(feedViewHolder, item);
                    break;
                default:
                    break;
            }
        }

        private Item getItem(int i) {
            int size = this.stickyItems.size();
            if (size > i) {
                return (Item) this.stickyItems.get(i);
            }
            return (Item) this.feedItems.get(i - size);
        }

        private void onBindAboutOperation(AboutLineViewHolder aboutLineViewHolder, Item item) {
            aboutLineViewHolder.setTitle(item.getTitle());
            aboutLineViewHolder.setValue(item.getValue());
            if (item.getId() == 40) {
                aboutLineViewHolder.setArrowRightVisible(true);
            } else if (item.getId() == 50) {
                aboutLineViewHolder.setArrowRightVisible(true);
            } else {
                aboutLineViewHolder.setArrowRightVisible(null);
            }
        }

        private void onBindHistoryOperation(HistoryViewHolder historyViewHolder, Item item) {
            item = item.getStatementModel();
            historyViewHolder.setName(item.getDescription());
            historyViewHolder.setAmount(item.getAmount());
            if (item.getKind().equals("percent") != null) {
                historyViewHolder.setCategoryGlymph();
                historyViewHolder.setLabel(null);
                historyViewHolder.hideImage();
                historyViewHolder.setStatusIcon(null);
                return;
            }
            historyViewHolder.setBackgroundWithText(DepositFragment.this.currency.toUpperCase(), DepositFragment.this.colorFromCurrency(DepositFragment.this.currency), true);
        }

        private void onBindDelimiter(FeedViewHolder feedViewHolder, Item item) {
            DelimiterViewHolder delimiterViewHolder = (DelimiterViewHolder) feedViewHolder;
            if (item.getId() == 0) {
                delimiterViewHolder.setText(C0859R.string.deposit_about);
                return;
            }
            if (item.getId() == 1) {
                delimiterViewHolder.setText(C0859R.string.operation_history);
            }
        }

        public int getItemCount() {
            return getCleanSize();
        }

        public int getCleanSize() {
            return this.feedItems.size() + this.stickyItems.size();
        }

        public int getItemViewType(int i) {
            int size = this.stickyItems.size();
            if (size > i) {
                return ((Item) this.stickyItems.get(i)).getType();
            }
            return ((Item) this.feedItems.get(i - size)).getType();
        }

        public void addItem(Item item) {
            int indexOf = this.feedItems.indexOf(item);
            if (indexOf != -1) {
                this.feedItems.updateItemAt(indexOf, item);
            } else {
                this.feedItems.add(item);
            }
            this.feedItems.add(item);
        }

        public void addTopItem(Item item) {
            int indexOf = this.stickyItems.indexOf(item);
            if (indexOf != -1) {
                this.stickyItems.set(indexOf, item);
                notifyItemChanged(indexOf);
                return;
            }
            this.stickyItems.add(item);
            notifyItemInserted(this.stickyItems.indexOf(item));
        }

        public void clear() {
            this.feedItems.clear();
            notifyDataSetChanged();
        }

        public void clearTop() {
            this.stickyItems.clear();
            DepositFragment.this.feedView.requestLayout();
            notifyDataSetChanged();
        }
    }

    class FeedViewHolder extends ViewHolder {
        private Item item;

        public Item getItem() {
            return this.item;
        }

        public void setItem(Item item) {
            this.item = item;
        }

        public FeedViewHolder(View view) {
            super(view);
        }
    }

    class AboutLineViewHolder extends FeedViewHolder implements OnClickListener {
        ImageView arrowRight;
        RocketTextView titleView;
        RocketTextView valueView;

        public AboutLineViewHolder(View view) {
            super(view);
            this.titleView = (RocketTextView) view.findViewById(C0859R.id.title);
            this.valueView = (RocketTextView) view.findViewById(C0859R.id.value);
            this.arrowRight = (ImageView) view.findViewById(C0859R.id.arrow);
            view.setOnClickListener(this);
        }

        public void onClick(View view) {
            if (getItem().getId() == 40) {
                view = new Intent("android.intent.action.VIEW", Uri.parse(DepositFragment.this.deposit.getRocketDeposit().getUrl()));
                if (view.resolveActivity(DepositFragment.this.getActivity().getPackageManager()) != null) {
                    DepositFragment.this.startActivity(view);
                }
                return;
            }
            if (getItem().getId() == 50) {
                ((MainActivity) DepositFragment.this.getActivity()).pushFragment(DepositRequisitesFragment.newInstance(DepositFragment.this.deposit.getRequisites()));
            }
        }

        public void setArrowRightVisible(boolean z) {
            this.arrowRight.setVisibility(z ? false : true);
        }

        public void setValue(String str) {
            this.valueView.setText(str);
        }

        public void setTitle(String str) {
            this.titleView.setText(str);
        }
    }

    private class DelimiterViewHolder extends FeedViewHolder {
        RocketTextView titleView;

        DelimiterViewHolder(View view) {
            super(view);
            this.titleView = (RocketTextView) view.findViewById(C0859R.id.title);
        }

        public void setText(int i) {
            this.titleView.setText(i);
        }
    }

    class HeaderViewHolder extends FeedViewHolder implements OnTouchListener {
        public HeaderViewHolder(View view) {
            super(view);
            view.setOnTouchListener(this);
            view = view.findViewById(C0859R.id.stub);
            view.getLayoutParams().height = DepositFragment.this.headerHeight;
            view.requestLayout();
        }

        public boolean onTouch(View view, MotionEvent motionEvent) {
            return DepositFragment.this.appBarLayout.dispatchTouchEvent(motionEvent);
        }
    }

    class HistoryViewHolder extends FeedViewHolder implements OnClickListener {
        CircleImageView backgroundStubView;
        RocketTextView categoryGlymphView;
        ImageView imageView;
        RocketTextView labelView;
        ImageView statusImageView;
        RocketTextView titleView;
        RocketTextView valueView;

        public void onClick(View view) {
        }

        public void setName(String str) {
            this.titleView.setText(str);
        }

        public HistoryViewHolder(View view) {
            super(view);
            this.imageView = (ImageView) view.findViewById(C0859R.id.image);
            this.statusImageView = (ImageView) view.findViewById(C0859R.id.statusImage);
            this.backgroundStubView = (CircleImageView) view.findViewById(C0859R.id.backgroundStub);
            this.categoryGlymphView = (RocketTextView) view.findViewById(C0859R.id.categoryGlymph);
            this.titleView = (RocketTextView) view.findViewById(C0859R.id.title);
            this.valueView = (RocketTextView) view.findViewById(C0859R.id.value);
            this.labelView = (RocketTextView) view.findViewById(C0859R.id.label);
        }

        public void setImage(String str) {
            if (str == null) {
                Glide.clear(this.imageView);
                this.imageView.setImageDrawable(null);
                return;
            }
            this.categoryGlymphView.setVisibility(8);
            this.backgroundStubView.setVisibility(8);
            Log.v(DepositFragment.FEED_IMAGE_LOADING_TAG, "Loading: ".concat(String.valueOf(str)));
            Glide.with(DepositFragment.this.getContext()).load(str).into(this.imageView);
        }

        public void setBackgroundWithText(String str, int i, boolean z) {
            this.categoryGlymphView.setVisibility(8);
            this.statusImageView.setVisibility(0);
            this.backgroundStubView.setVisibility(0);
            this.backgroundStubView.setImageDrawable(new ColorDrawable(i));
            this.labelView.setText(str);
            setImage(null);
            setStatusIcon(z ? 437 : 368);
        }

        public void setCategoryGlymph() {
            this.labelView.setVisibility(8);
            this.categoryGlymphView.setVisibility(0);
            this.backgroundStubView.setVisibility(0);
            this.categoryGlymphView.setText("");
            this.backgroundStubView.setImageDrawable(new ColorDrawable(DepositFragment.this.colorFromCurrency(DepositFragment.this.currency)));
        }

        public void setLabel(String str) {
            if (str == null) {
                this.labelView.setVisibility(8);
                return;
            }
            this.labelView.setText(str);
            this.labelView.setVisibility(0);
        }

        public void setAmount(float f) {
            this.valueView.setText(DepositFragment.this.moneyFormatter.format((double) f, DepositFragment.this.currency, true));
        }

        public void hideImage() {
            this.imageView.setVisibility(4);
        }

        public void setStatusIcon(int i) {
            if (i == 0) {
                this.statusImageView.setVisibility(8);
            } else if (i == 437) {
                this.statusImageView.setVisibility(0);
                this.statusImageView.setImageResource(C0859R.drawable.ic_badge_in);
            } else {
                if (i == 368) {
                    this.statusImageView.setVisibility(0);
                    this.statusImageView.setImageResource(C0859R.drawable.ic_badge_out);
                }
            }
        }
    }

    /* renamed from: ru.rocketbank.r2d2.fragments.deposit.DepositFragment$4 */
    class C19984 implements Action1<UserModel> {
        C19984() {
        }

        public void call(UserModel userModel) {
            DepositFragment.this.swipeRefreshLayout.setRefreshing(false);
            for (DepositModel depositModel : userModel.getDeposits()) {
                if (depositModel.getId() == DepositFragment.this.deposit.getId()) {
                    DepositFragment.this.deposit = depositModel;
                    DepositFragment.this.updateFabVisibility();
                    break;
                }
            }
            DepositFragment.this.showBalance();
            DepositFragment.this.toolbar.setTitle(DepositFragment.this.deposit.getTitle());
            DepositFragment.this.feedAdapter.clearTop();
            DepositFragment.this.refreshUserData();
            DepositFragment.this.swipeRefreshLayout.setRefreshing(false);
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

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater = layoutInflater.inflate(C0859R.layout.fragment_deposit, viewGroup, false);
        this.floatingActionButton = (FloatingActionButton) layoutInflater.findViewById(C0859R.id.fab);
        this.flexibleSpaceImageHeight = getResources().getDimensionPixelSize(C0859R.dimen.flexible_space_image_height);
        this.flexibleSpaceShowFabOffset = getResources().getDimensionPixelSize(C0859R.dimen.flexible_space_show_fab_offset);
        this.fabMargin = getResources().getDimensionPixelSize(C0859R.dimen.fab_margin);
        return layoutInflater;
    }

    public void onPause() {
        this.swipeRefreshLayout.setRefreshing(false);
        this.swipeRefreshLayout.destroyDrawingCache();
        this.swipeRefreshLayout.clearAnimation();
        if (!(this.authSubscription == null || this.authSubscription.isUnsubscribed())) {
            this.authSubscription.unsubscribe();
        }
        super.onPause();
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.realToolbar = (Toolbar) view.findViewById(C0859R.id.toolbarReal);
        this.toolbar = (Toolbar) view.findViewById(C0859R.id.toolbar);
        this.appBarLayout = (FrameLayout) view.findViewById(C0859R.id.app_bar);
        this.rocketTitle = (RocketTextView) view.findViewById(C0859R.id.real_toolbar_title);
        this.money = (TextView) view.findViewById(C0859R.id.money);
        this.percentText = (RocketTextView) view.findViewById(C0859R.id.balance_text);
        this.feedView = (ObservableRecyclerView) view.findViewById(C0859R.id.feed);
        this.cardOverlay = view.findViewById(C0859R.id.card_overlay);
        this.headerOverlay = view.findViewById(C0859R.id.header_overlay);
        this.swipeRefreshLayout = (SwipeRefreshLayout) view.findViewById(C0859R.id.swipeRefresh);
        this.headerVideoView = (TextureView) view.findViewById(C0859R.id.headerVideo);
        this.moneyFormatter = getInjector().getMoneyFormatter();
        this.currencyManager = getInjector().getCurrencyManager();
        this.authorization = getInjector().getAuthorization();
        this.deposit = (DepositModel) getArguments().getParcelable(DEPOSIT);
        if (this.deposit == null) {
            getSupportFragmentManager().popBackStack();
            return;
        }
        view = this.deposit.getRocketDeposit();
        if (!(view == null || view.getCurrency() == null)) {
            this.currency = view.getCurrency();
        }
        view = TAG;
        bundle = new StringBuilder("Deposit ");
        bundle.append(this.deposit);
        Log.v(view, bundle.toString());
        this.realToolbar.setTitle("");
        this.feedAdapter = new FeedAdapter();
        this.feedView.setLayoutManager(new LinearLayoutManager(getActivity()));
        this.feedView.setAdapter(this.feedAdapter);
        this.feedView.setScrollViewCallbacks(this);
        this.feedView.setVerticalScrollbarPosition(null);
        setupToolbar();
        this.percentText.setOnClickListener(new C15301());
        this.money.setOnClickListener(new C15312());
        this.swipeRefreshLayout.setOnRefreshListener(new C16673());
        this.authSubscription = this.authorization.getUser().subscribe(new C19984());
        refreshUserData();
    }

    private void updateFabVisibility() {
        this.floatingActionButton.setVisibility(this.deposit.getRefillable() ? 0 : 8);
        this.floatingActionButton.setOnClickListener(new C15325());
    }

    @SuppressLint({"SetTextI18n"})
    private void showBalance() {
        if (this.deposit.getPercent() > 0.0d) {
            DepositStrategy strategy = DepositStrategyManager.getStrategy(this.deposit);
            String format = this.moneyFormatter.format(Double.valueOf(this.isFullMoneyMode ? strategy.percent() : (double) ((int) Math.round(strategy.percent()))).doubleValue(), this.currency, this.isFullMoneyMode);
            this.money.setText(this.moneyFormatter.format(strategy.balance(), this.currency, this.isTotalFullMoneyMode));
            RocketTextView rocketTextView = this.percentText;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(getString(C0859R.string.current_percent));
            stringBuilder.append(": ");
            stringBuilder.append(format);
            rocketTextView.setText(stringBuilder.toString());
        } else {
            this.money.setText(this.moneyFormatter.format((double) this.deposit.getBalance(), this.currency, this.isTotalFullMoneyMode));
            this.percentText.setVisibility(8);
        }
        this.rocketTitle.setText(this.moneyFormatter.format((double) this.deposit.getBalance(), this.currency, false));
    }

    private void setupToolbar() {
        this.realToolbar.setNavigationIcon(C0859R.drawable.ic_drawer_black);
        this.toolbar.setNavigationIcon(C0859R.drawable.ic_drawer_white);
        setupToolbarSizes();
        this.realToolbar.inflateMenu(C0859R.menu.menu_deposit);
        this.toolbar.inflateMenu(C0859R.menu.menu_deposit_static);
        this.toolbar.setNavigationOnClickListener(getNavigationClick());
        this.realToolbar.setNavigationOnClickListener(getNavigationClick());
        this.toolbar.setOnMenuItemClickListener(new C16686());
        this.realToolbar.setOnMenuItemClickListener(new C16697());
    }

    private void moveFloatingButton(Integer num) {
        this.floatingActionButton.setTranslationY((float) num.intValue());
        if (Math.abs(num.intValue()) > this.flexibleSpaceShowFabOffset) {
            this.floatingActionButton.hide();
        } else {
            this.floatingActionButton.show();
        }
    }

    public void onResume() {
        super.onResume();
        showVideo();
    }

    private void showVideo() {
        this.headerVideoView.setSurfaceTextureListener(this);
    }

    private void showClose() {
        new Builder(getActivity()).setMessage(C0859R.string.deposit_close_alert).setPositiveButton(C0859R.string.yes, new C15349()).setNegativeButton(C0859R.string.cancel_cap, new C15338()).show();
    }

    private void closeDeposit() {
        ((MainActivity) getActivity()).pushFragment(CloseDepositFragment.newInstance(this.deposit));
    }

    private void setupToolbarSizes() {
        this.appBarHeight = getStatusBarHeight();
        setToolbarSize(this.toolbar, this.appBarHeight);
        this.toolbarHeight = setToolbarSize(this.realToolbar, this.appBarHeight);
        this.realToolbar.setTranslationY((float) (-this.toolbar.getLayoutParams().height));
        LayoutParams layoutParams = this.appBarLayout.getLayoutParams();
        layoutParams.height += this.appBarHeight;
        this.appBarLayout.requestLayout();
        this.headerHeight = layoutParams.height;
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.floatingActionButton.getLayoutParams();
        layoutParams2.topMargin = this.headerHeight - (layoutParams2.height / 2);
        layoutParams2.rightMargin = this.fabMargin;
    }

    public void onScrollChanged(int i, boolean z, boolean z2) {
        z = false;
        if (i < 0) {
            i = 0;
        }
        if (this.deposit.getRefillable()) {
            moveFloatingButton(Integer.valueOf(-i));
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
        this.cardOverlay.setTranslationY((float) z);
        updateToolbarPosition(i);
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

    private void updateToolbarPosition(int i) {
        int i2 = this.toolbarHeight - i;
        if (i2 < 0) {
            i2 = 0;
        }
        i = (float) this.realToolbar.getHeight();
        if (this.toolbarHeight >= i2) {
            i = (float) i2;
        }
        this.realToolbar.setTranslationY(-i);
    }

    public String getRawPath(int i) {
        StringBuilder stringBuilder = new StringBuilder("android.resource://");
        stringBuilder.append(getActivity().getPackageName());
        stringBuilder.append("/");
        stringBuilder.append(i);
        return stringBuilder.toString();
    }

    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        i = new Surface(surfaceTexture);
        try {
            this.mediaPlayer = getInjector().getMediaPlayer();
            this.mediaPlayer.reset();
            this.mediaPlayer.setDataSource(getActivity(), Uri.parse(getRawPath(C0859R.raw.deposit)));
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

    public static DepositFragment newInstance(DepositModel depositModel) {
        DepositFragment depositFragment = new DepositFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable(DEPOSIT, depositModel);
        depositFragment.setArguments(bundle);
        return depositFragment;
    }

    private void fillAdapterWithData() {
        StringBuilder stringBuilder;
        float rrRate;
        this.feedAdapter.clear();
        this.feedAdapter.clearTop();
        this.feedAdapter.addTopItem(new Item(0, 2));
        this.feedAdapter.addTopItem(new Item(3, 0));
        Calendar instance = Calendar.getInstance();
        Calendar instance2 = Calendar.getInstance();
        try {
            instance.setTime(DATE_FORMAT.parse(this.deposit.getStartDate()));
            instance2.setTime(DATE_FORMAT.parse(this.deposit.getEndDate()));
        } catch (Throwable e) {
            AnalyticsManager.logException(e);
        }
        long timeInMillis = (instance2.getTimeInMillis() - Calendar.getInstance().getTimeInMillis()) / 86400000;
        String valueOf = String.valueOf(timeInMillis);
        if (timeInMillis < 0) {
            valueOf = getString(C0859R.string.deposit_closed);
        } else if (timeInMillis == 1) {
            r3 = new StringBuilder();
            r3.append(valueOf);
            r3.append(" ");
            r3.append(getString(C0859R.string.day));
            valueOf = r3.toString();
        } else if (timeInMillis <= 4) {
            r3 = new StringBuilder();
            r3.append(valueOf);
            r3.append(" ");
            r3.append(getString(C0859R.string.day_i));
            valueOf = r3.toString();
        } else {
            r3 = new StringBuilder();
            r3.append(valueOf);
            r3.append(" ");
            r3.append(getString(C0859R.string.days));
            valueOf = r3.toString();
        }
        this.feedAdapter.addTopItem(new Item(1, 1, valueOf, getString(C0859R.string.left_days)));
        this.feedAdapter.addTopItem(new Item(1, 2, DATE_FORMAT_OUT.format(instance.getTime()), getString(C0859R.string.deposit_open_date)));
        String str = "";
        if (this.deposit.getRocketDeposit().getPeriodText() != null) {
            str = this.deposit.getRocketDeposit().getPeriodText();
        } else {
            int period = this.deposit.getPeriod();
            if (period == 0) {
                period = this.deposit.getRocketDeposit().getPeriod();
            }
            int i = period / 12;
            period %= 6;
            if (i != 0) {
                str = String.valueOf(i);
                if (i == 1) {
                    stringBuilder = new StringBuilder();
                    stringBuilder.append(str);
                    stringBuilder.append(" ");
                    stringBuilder.append(getString(C0859R.string.year));
                    str = stringBuilder.toString();
                } else if (i < 5) {
                    stringBuilder = new StringBuilder();
                    stringBuilder.append(str);
                    stringBuilder.append(" ");
                    stringBuilder.append(getString(C0859R.string.years_x));
                    str = stringBuilder.toString();
                } else {
                    stringBuilder = new StringBuilder();
                    stringBuilder.append(str);
                    stringBuilder.append(" ");
                    stringBuilder.append(getString(C0859R.string.years));
                    str = stringBuilder.toString();
                }
            }
            if (period != 0) {
                if (!str.isEmpty()) {
                    stringBuilder = new StringBuilder();
                    stringBuilder.append(str);
                    stringBuilder.append(" ");
                    str = stringBuilder.toString();
                }
                stringBuilder = new StringBuilder();
                stringBuilder.append(str);
                stringBuilder.append(String.valueOf(period));
                str = stringBuilder.toString();
                StringBuilder stringBuilder2;
                if (period == 1) {
                    stringBuilder2 = new StringBuilder();
                    stringBuilder2.append(str);
                    stringBuilder2.append(" ");
                    stringBuilder2.append(getString(C0859R.string.month));
                    str = stringBuilder2.toString();
                } else if (period < 5) {
                    stringBuilder2 = new StringBuilder();
                    stringBuilder2.append(str);
                    stringBuilder2.append(" ");
                    stringBuilder2.append(getString(C0859R.string.month_x));
                    str = stringBuilder2.toString();
                } else {
                    stringBuilder2 = new StringBuilder();
                    stringBuilder2.append(str);
                    stringBuilder2.append(" ");
                    stringBuilder2.append(getString(C0859R.string.months));
                    str = stringBuilder2.toString();
                }
            }
        }
        this.feedAdapter.addTopItem(new Item(1, 3, str, getString(C0859R.string.deposit_periord)));
        if (this.deposit.getRefillable()) {
            rrRate = this.deposit.getRocketDeposit().getRrRate();
        } else {
            rrRate = this.deposit.getRocketDeposit().getRate();
        }
        FeedAdapter feedAdapter = this.feedAdapter;
        stringBuilder = new StringBuilder();
        stringBuilder.append(String.valueOf(rrRate));
        stringBuilder.append(" %");
        feedAdapter.addTopItem(new Item(1, 4, stringBuilder.toString(), getString(C0859R.string.deposit_percent)));
        this.feedAdapter.addTopItem(new Item(1, 40, getString(C0859R.string.deposit_terms_statetment), getString(C0859R.string.detail_statetment_full)));
        if (this.deposit.getCanBeRefilled()) {
            this.feedAdapter.addTopItem(new Item(1, 50, getString(C0859R.string.deposit_requisites), getString(C0859R.string.deposit_requisites_full)));
        }
        this.feedAdapter.addTopItem(new Item(3, 1));
        int i2 = AbstractSpiCall.DEFAULT_TIMEOUT;
        for (StatementModel item : this.deposit.getStatements()) {
            this.feedAdapter.addItem(new Item(2, i2, item));
            i2++;
        }
    }

    private void refreshUserData() {
        showBalance();
        fillAdapterWithData();
    }
}
