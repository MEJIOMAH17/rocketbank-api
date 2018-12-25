package ru.rocketbank.r2d2.fragments.safe;

import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v4.widget.SwipeRefreshLayout.OnRefreshListener;
import android.support.v7.util.SortedList;
import android.support.v7.util.SortedList.Callback;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView.Adapter;
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
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.github.ksoichiro.android.observablescrollview.ObservableRecyclerView;
import com.github.ksoichiro.android.observablescrollview.ObservableScrollViewCallbacks;
import com.github.ksoichiro.android.observablescrollview.ScrollState;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.manager.CurrencyManager;
import ru.rocketbank.core.manager.FeedManager;
import ru.rocketbank.core.manager.loader.OperationLoader;
import ru.rocketbank.core.model.AbstractOperation;
import ru.rocketbank.core.model.FeedList;
import ru.rocketbank.core.model.MoneyData;
import ru.rocketbank.core.model.SafeAccount;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.model.dto.operations.Operation;
import ru.rocketbank.core.network.model.FeedItem;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.core.utils.MoneyFormatter;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.activities.AbstractActivity;
import ru.rocketbank.r2d2.activities.AccountDetailsActivity;
import ru.rocketbank.r2d2.activities.MainActivity;
import ru.rocketbank.r2d2.activities.safe.CloseSafeStatusActivity;
import ru.rocketbank.r2d2.activities.safe.TransferActivity;
import ru.rocketbank.r2d2.fragments.RocketFragment;
import ru.rocketbank.r2d2.root.feed.viewholder.FeedViewHolder;
import ru.rocketbank.r2d2.root.feed.viewholder.OperationViewHolder;
import ru.rocketbank.r2d2.utils.FeedItemCallback;
import rx.Observable;
import rx.Subscriber;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Action0;
import rx.functions.Action1;

public class SafeAccountFragment extends RocketFragment implements SurfaceTextureListener, ObservableScrollViewCallbacks {
    private static final int ACTION_ACCOUNT_DETAIL = 2;
    private static final int ACTION_CLOSE = 3;
    private static final int ACTION_INFO = 1;
    private static final int ACTION_SEND_MY = 0;
    private static final int DELIMITER_ACTION = 0;
    private static final int DELIMITER_HISTORY = 1;
    private static final int OPERATION_FRIEND_LOADING = -1;
    private static final int REQUEST_CODE_CLOSE = 0;
    private static final String TOKEN = "TOKEN";
    private FeedItem[] actionHeadItems = new FeedItem[]{new FeedItem(FeedItem.OPERATION_SEARCH_HEADER, null), new FeedItem(9, new DelimiterOperation(0, 1)), new FeedItem(10, new ActionOperation(0, 2)), new FeedItem(10, new ActionOperation(1, 4)), new FeedItem(10, new ActionOperation(2, 3)), new FeedItem(12, new ActionOperation(3, 5)), new FeedItem(9, new DelimiterOperation(1, 6))};
    FrameLayout appBarLayout;
    private Subscription authSubscription;
    Authorization authorization;
    View cardOverlay;
    private Subscription changeSubscription;
    CurrencyManager currencyManager;
    FeedManager feedManager;
    ObservableRecyclerView feedView;
    private int headerHeight;
    View headerOverlay;
    TextureView headerVideoView;
    private boolean isFullMoneyMode = false;
    private boolean isInitialized = false;
    private boolean isListLoadingInProgress = false;
    private MediaPlayer mediaPlayer;
    TextView money;
    private MoneyFormatter moneyFormatter;
    private OperationLoader operationLoader;
    private Subscription pageRefreshSubscription;
    private Subscription pageRequestSubscription;
    private int paralaxSize;
    Toolbar realToolbar;
    private RenameSafeDialogFragment renameDialogFragment;
    RocketTextView rocketMoney;
    RocketTextView rocketTitle;
    private SafeAccount safeAccount;
    private SafeAdapter safeAdapter;
    SwipeRefreshLayout swipeRefreshLayout;
    private String token;
    Toolbar toolbar;

    /* renamed from: ru.rocketbank.r2d2.fragments.safe.SafeAccountFragment$6 */
    class C15526 implements OnClickListener {
        C15526() {
        }

        public void onClick(View view) {
            SafeAccountFragment.this.isFullMoneyMode = SafeAccountFragment.this.isFullMoneyMode ^ 1;
            SafeAccountFragment.this.showBalance();
        }
    }

    /* renamed from: ru.rocketbank.r2d2.fragments.safe.SafeAccountFragment$8 */
    class C15538 implements OnClickListener {
        C15538() {
        }

        public void onClick(View view) {
            ((MainActivity) SafeAccountFragment.this.getActivity()).toggleDrawer();
        }
    }

    /* renamed from: ru.rocketbank.r2d2.fragments.safe.SafeAccountFragment$9 */
    class C15549 implements OnClickListener {
        C15549() {
        }

        public void onClick(View view) {
            ((MainActivity) SafeAccountFragment.this.getActivity()).toggleDrawer();
        }
    }

    /* renamed from: ru.rocketbank.r2d2.fragments.safe.SafeAccountFragment$7 */
    class C16757 implements OnRefreshListener {
        C16757() {
        }

        public void onRefresh() {
            SafeAccountFragment.this.refresh();
        }
    }

    static class ActionOperation extends AbstractOperation implements Parcelable {
        public static final Creator<ActionOperation> CREATOR = new C15581();
        private int type;

        /* renamed from: ru.rocketbank.r2d2.fragments.safe.SafeAccountFragment$ActionOperation$1 */
        static class C15581 implements Creator<ActionOperation> {
            C15581() {
            }

            public final ActionOperation createFromParcel(Parcel parcel) {
                return new ActionOperation(parcel);
            }

            public final ActionOperation[] newArray(int i) {
                return new ActionOperation[i];
            }
        }

        public int describeContents() {
            return 0;
        }

        public ActionOperation(int i, int i2) {
            this.type = i;
            setId(i2);
        }

        protected ActionOperation(Parcel parcel) {
            super(parcel);
            this.type = parcel.readInt();
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.type);
        }
    }

    static class DelimiterOperation extends AbstractOperation implements Parcelable {
        public static final Creator<DelimiterOperation> CREATOR = new C15591();
        private int type;

        /* renamed from: ru.rocketbank.r2d2.fragments.safe.SafeAccountFragment$DelimiterOperation$1 */
        static class C15591 implements Creator<DelimiterOperation> {
            C15591() {
            }

            public final DelimiterOperation createFromParcel(Parcel parcel) {
                return new DelimiterOperation(parcel);
            }

            public final DelimiterOperation[] newArray(int i) {
                return new DelimiterOperation[i];
            }
        }

        public int describeContents() {
            return 0;
        }

        public DelimiterOperation(int i, int i2) {
            this.type = i;
            setId(i2);
        }

        protected DelimiterOperation(Parcel parcel) {
            super(parcel);
            this.type = parcel.readInt();
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.type);
        }
    }

    class SafeAdapter extends Adapter<FeedViewHolder> {
        private FeedItem bottomItem;
        private SortedList<FeedItem> feedItems = new SortedList(FeedItem.class, this.sortedCallback);
        private LayoutInflater layoutInflater;
        private Callback<FeedItem> sortedCallback = new FeedItemCallback(this, this.stickyItems);
        private ArrayList<FeedItem> stickyItems = new ArrayList();

        public SafeAdapter(LayoutInflater layoutInflater) {
            this.layoutInflater = layoutInflater;
        }

        public FeedViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            if (i == FeedItem.OPERATION_SEARCH_HEADER) {
                return new HeaderViewHolder(this.layoutInflater.inflate(C0859R.layout.list_item_card_header, viewGroup, false));
            } else if (i == 4) {
                return new OperationViewHolder(this.layoutInflater.inflate(C0859R.layout.feed_item_operation, viewGroup, false));
            } else {
                if (i != 12) {
                    switch (i) {
                        case 9:
                            return new DelimiterViewHolder(this.layoutInflater.inflate(C0859R.layout.layout_delimiter, viewGroup, false));
                        case 10:
                            return new ActionViewHolder(this.layoutInflater.inflate(C0859R.layout.layout_account_action, viewGroup, false));
                        default:
                            return new FeedViewHolder(this.layoutInflater.inflate(C0859R.layout.feed_item_loading, viewGroup, false));
                    }
                }
                return new ActionCloseViewHolder(this.layoutInflater.inflate(C0859R.layout.list_item_card_delete, viewGroup, false), SafeAccountFragment.this.safeAccount);
            }
        }

        private FeedItem getItem(int i) {
            if (this.bottomItem != null && i == getCleanSize()) {
                return this.bottomItem;
            }
            int size = this.stickyItems.size();
            if (size > i) {
                return (FeedItem) this.stickyItems.get(i);
            }
            return (FeedItem) this.feedItems.get(i - size);
        }

        public void onBindViewHolder(FeedViewHolder feedViewHolder, int i) {
            FeedItem item = getItem(i);
            i = getItemViewType(i);
            if (i == FeedItem.OPERATION_SEARCH_HEADER) {
                return;
            }
            if (i != 4) {
                switch (i) {
                    case 9:
                        onBindDelimiter(feedViewHolder, item);
                        break;
                    case 10:
                        onBindAction(feedViewHolder, item);
                        return;
                    default:
                        break;
                }
                return;
            }
            onBindOperation((OperationViewHolder) feedViewHolder, item);
        }

        private void onBindAction(FeedViewHolder feedViewHolder, FeedItem feedItem) {
            ActionViewHolder actionViewHolder = (ActionViewHolder) feedViewHolder;
            ActionOperation actionOperation = (ActionOperation) feedItem.getOperation();
            actionViewHolder.setType(actionOperation.type);
            switch (actionOperation.type) {
                case null:
                    actionViewHolder.setTexts(C0859R.string.send, C0859R.string.send_subtitle);
                    break;
                case 1:
                    actionViewHolder.setTexts(C0859R.string.info, C0859R.string.info_subtitle);
                    return;
                case 2:
                    actionViewHolder.setTexts(C0859R.string.account_detail, C0859R.string.account_detail_subtitle);
                    return;
                default:
                    break;
            }
        }

        private void onBindDelimiter(FeedViewHolder feedViewHolder, FeedItem feedItem) {
            DelimiterViewHolder delimiterViewHolder = (DelimiterViewHolder) feedViewHolder;
            if (((DelimiterOperation) feedItem.getOperation()).type == null) {
                delimiterViewHolder.setText(C0859R.string.detail_c);
            } else {
                delimiterViewHolder.setText(C0859R.string.operation_history);
            }
        }

        private void onBindOperation(OperationViewHolder operationViewHolder, FeedItem feedItem) {
            Operation operation = (Operation) feedItem.getOperation();
            MoneyData money = operation.getMoney();
            String comment = operation.getComment();
            operationViewHolder.hideDayStart();
            operationViewHolder.setContent(comment);
            operationViewHolder.setName(operation.getDetails());
            operationViewHolder.setOperation(operation, feedItem);
            operationViewHolder.setNoAction();
            operationViewHolder.setAmount(new MoneyFormatter(SafeAccountFragment.this.getActivity(), SafeAccountFragment.this.authorization, SafeAccountFragment.this.currencyManager).format((double) ((float) money.getAmount()), money.getCurrencyCode(), true));
        }

        public int getItemCount() {
            int cleanSize = getCleanSize();
            return this.bottomItem != null ? cleanSize + 1 : cleanSize;
        }

        public int getCleanSize() {
            return this.feedItems.size() + this.stickyItems.size();
        }

        public int getItemViewType(int i) {
            if (this.bottomItem != null && i == getCleanSize()) {
                return this.bottomItem.getType();
            }
            int size = this.stickyItems.size();
            if (size > i) {
                return ((FeedItem) this.stickyItems.get(i)).getType();
            }
            return ((FeedItem) this.feedItems.get(i - size)).getType();
        }

        public void addItem(FeedItem feedItem) {
            int indexOf = this.feedItems.indexOf(feedItem);
            if (indexOf != -1) {
                this.feedItems.updateItemAt(indexOf, feedItem);
            } else {
                this.feedItems.add(feedItem);
            }
            this.feedItems.add(feedItem);
        }

        public void addBottom(FeedItem feedItem) {
            this.bottomItem = feedItem;
            notifyItemInserted(getCleanSize());
        }

        public void removeBottom() {
            this.bottomItem = null;
            notifyItemRemoved(getCleanSize() - 1);
        }

        public void addTopItem(FeedItem feedItem) {
            int indexOf = this.stickyItems.indexOf(feedItem);
            if (indexOf != -1) {
                this.stickyItems.set(indexOf, feedItem);
                notifyItemChanged(indexOf);
                return;
            }
            this.stickyItems.add(feedItem);
            notifyItemInserted(this.stickyItems.indexOf(feedItem));
        }

        public void clear() {
            this.feedItems.clear();
            notifyDataSetChanged();
        }

        public void clearTop() {
            SafeAccountFragment.this.feedView.requestLayout();
            notifyDataSetChanged();
        }
    }

    /* renamed from: ru.rocketbank.r2d2.fragments.safe.SafeAccountFragment$1 */
    class C17581 extends Subscriber<FeedItem> {
        public void onCompleted() {
        }

        public void onError(Throwable th) {
        }

        C17581() {
        }

        public void onNext(FeedItem feedItem) {
            SafeAccountFragment.this.safeAdapter.addItem(feedItem);
        }
    }

    /* renamed from: ru.rocketbank.r2d2.fragments.safe.SafeAccountFragment$4 */
    class C17594 extends Subscriber<FeedList> {
        public void onCompleted() {
        }

        C17594() {
        }

        public void onError(Throwable th) {
            Log.e("FeedLoading", "Loading failed", th);
            SafeAccountFragment.this.isInitialized = false;
            SafeAccountFragment.this.safeAdapter.removeBottom();
        }

        public void onNext(FeedList feedList) {
            SafeAccountFragment.this.safeAdapter.removeBottom();
            int i = 0;
            SafeAccountFragment.this.isListLoadingInProgress = false;
            if (feedList.top != null) {
                for (int i2 = 0; i2 < feedList.top.size(); i2++) {
                    SafeAccountFragment.this.safeAdapter.addTopItem((FeedItem) feedList.top.get(i2));
                }
            }
            if (feedList.feed != null) {
                while (i < feedList.feed.size()) {
                    SafeAccountFragment.this.safeAdapter.addItem((FeedItem) feedList.feed.get(i));
                    i++;
                }
            }
        }
    }

    /* renamed from: ru.rocketbank.r2d2.fragments.safe.SafeAccountFragment$5 */
    class C17605 extends Subscriber<FeedList> {
        public void onCompleted() {
        }

        C17605() {
        }

        public void onError(Throwable th) {
            Log.e("FeedLoading", "Loading failed", th);
        }

        public void onNext(FeedList feedList) {
            int i = 0;
            if (feedList.top != null) {
                for (int i2 = 0; i2 < feedList.top.size(); i2++) {
                    SafeAccountFragment.this.safeAdapter.addTopItem((FeedItem) feedList.top.get(i2));
                }
            }
            if (feedList.feed != null) {
                while (i < feedList.feed.size()) {
                    SafeAccountFragment.this.safeAdapter.addItem((FeedItem) feedList.feed.get(i));
                    i++;
                }
            }
        }
    }

    private class ActionCloseViewHolder extends FeedViewHolder {
        private Button btn;
        private final SafeAccount safeAccount;

        /* renamed from: ru.rocketbank.r2d2.fragments.safe.SafeAccountFragment$ActionCloseViewHolder$2 */
        class C15562 implements DialogInterface.OnClickListener {
            C15562() {
            }

            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                SafeAccountFragment.this.startActivityForResult(CloseSafeStatusActivity.Companion.createIntent(SafeAccountFragment.this.getContext(), ActionCloseViewHolder.this.safeAccount), 0);
            }
        }

        /* renamed from: ru.rocketbank.r2d2.fragments.safe.SafeAccountFragment$ActionCloseViewHolder$3 */
        class C15573 implements DialogInterface.OnClickListener {
            C15573() {
            }

            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        }

        public ActionCloseViewHolder(View view, SafeAccount safeAccount) {
            super(view);
            this.safeAccount = safeAccount;
            this.btn = (Button) view.findViewById(C0859R.id.blockButton);
            this.btn.setText(C0859R.string.close_safe_account_button_text);
            this.btn.setOnClickListener(new OnClickListener(SafeAccountFragment.this) {
                public void onClick(View view) {
                    ActionCloseViewHolder.this.onClick();
                }
            });
        }

        private void onClick() {
            new Builder(SafeAccountFragment.this.getContext()).setMessage(this.safeAccount.getCloseText()).setTitle(C0859R.string.close_safe_account).setNegativeButton(C0859R.string.cancel, new C15573()).setPositiveButton(C0859R.string.ok, new C15562()).show();
        }
    }

    class ActionViewHolder extends FeedViewHolder implements OnClickListener {
        private RocketTextView subtitleView;
        private RocketTextView titleView;
        private Integer type;

        public ActionViewHolder(View view) {
            super(view);
            this.titleView = (RocketTextView) view.findViewById(C0859R.id.title);
            this.subtitleView = (RocketTextView) view.findViewById(C0859R.id.subtitle);
            view.setOnClickListener(this);
        }

        public void setType(int i) {
            this.type = Integer.valueOf(i);
        }

        public void setTexts(int i, int i2) {
            this.titleView.setText(i);
            this.subtitleView.setText(i2);
        }

        public void onClick(View view) {
            SafeAccountFragment.this.getActivity();
            switch (this.type.intValue()) {
                case null:
                    try {
                        TransferActivity.Companion.startActivity(SafeAccountFragment.this.getActivity(), SafeAccountFragment.this.token);
                        return;
                    } catch (View view2) {
                        AnalyticsManager.logException(view2);
                        return;
                    }
                case 1:
                    if (SafeAccountFragment.this.safeAccount != null) {
                        view2 = SafeAccountFragment.this.safeAccount.getUrl();
                        if (!(view2 == null || view2.isEmpty())) {
                            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(view2));
                            if (intent.resolveActivity(SafeAccountFragment.this.getActivity().getPackageManager()) != null) {
                                SafeAccountFragment.this.startActivity(intent);
                            }
                        }
                        return;
                    }
                    break;
                case 2:
                    AccountDetailsActivity.Companion.start(SafeAccountFragment.this.getActivity(), SafeAccountFragment.this.token);
                    break;
                default:
                    break;
            }
        }
    }

    class DelimiterViewHolder extends FeedViewHolder {
        private RocketTextView titleView;

        public DelimiterViewHolder(View view) {
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
            view.getLayoutParams().height = SafeAccountFragment.this.headerHeight;
            view.requestLayout();
        }

        public boolean onTouch(View view, MotionEvent motionEvent) {
            return SafeAccountFragment.this.appBarLayout.dispatchTouchEvent(motionEvent);
        }
    }

    /* renamed from: ru.rocketbank.r2d2.fragments.safe.SafeAccountFragment$2 */
    class C20092 implements Action1<UserModel> {
        C20092() {
        }

        public void call(UserModel userModel) {
            SafeAccountFragment.this.safeAccount = userModel.getSafeAccount(SafeAccountFragment.this.token);
            if (SafeAccountFragment.this.safeAccount != null) {
                SafeAccountFragment.this.showBalance();
                SafeAccountFragment.this.toolbar.setTitle(SafeAccountFragment.this.safeAccount.getTitle());
            }
            SafeAccountFragment.this.safeAdapter.clearTop();
            for (FeedItem addTopItem : SafeAccountFragment.this.actionHeadItems) {
                SafeAccountFragment.this.safeAdapter.addTopItem(addTopItem);
            }
            if (SafeAccountFragment.this.isInitialized == null) {
                SafeAccountFragment.this.loadPage(0);
            }
        }
    }

    /* renamed from: ru.rocketbank.r2d2.fragments.safe.SafeAccountFragment$3 */
    class C20103 implements Action0 {
        C20103() {
        }

        public void call() {
            SafeAccountFragment.this.swipeRefreshLayout.setRefreshing(false);
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

    public static SafeAccountFragment newInstance(String str) {
        SafeAccountFragment safeAccountFragment = new SafeAccountFragment();
        Bundle bundle = new Bundle();
        bundle.putString("TOKEN", str);
        safeAccountFragment.setArguments(bundle);
        return safeAccountFragment;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater = layoutInflater.inflate(C0859R.layout.fragment_safe_account, viewGroup, false);
        this.appBarLayout = (FrameLayout) layoutInflater.findViewById(C0859R.id.app_bar);
        this.realToolbar = (Toolbar) layoutInflater.findViewById(C0859R.id.toolbarReal);
        this.toolbar = (Toolbar) layoutInflater.findViewById(C0859R.id.toolbar);
        this.rocketTitle = (RocketTextView) layoutInflater.findViewById(C0859R.id.real_toolbar_title);
        this.money = (TextView) layoutInflater.findViewById(C0859R.id.money);
        this.rocketMoney = (RocketTextView) layoutInflater.findViewById(C0859R.id.rocket_money);
        this.feedView = (ObservableRecyclerView) layoutInflater.findViewById(C0859R.id.feed);
        this.swipeRefreshLayout = (SwipeRefreshLayout) layoutInflater.findViewById(C0859R.id.swipeRefresh);
        this.headerOverlay = layoutInflater.findViewById(C0859R.id.header_overlay);
        this.cardOverlay = layoutInflater.findViewById(C0859R.id.card_overlay);
        this.headerVideoView = (TextureView) layoutInflater.findViewById(C0859R.id.headerVideo);
        this.paralaxSize = getResources().getDimensionPixelSize(C0859R.dimen.parallax_size);
        return layoutInflater;
    }

    public void onResume() {
        super.onResume();
        this.operationLoader = this.feedManager.getSafeOperationLoader(this.token);
        this.changeSubscription = this.feedManager.getFeedLoader().changeObservable().observeOn(AndroidSchedulers.mainThread()).subscribe(new C17581());
        this.authSubscription = this.authorization.getUser().subscribe(new C20092());
        refresh();
        showVideo();
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 0 && i2 == -1) {
            i = new Intent(getActivity(), MainActivity.class);
            i.addFlags(268468224);
            getActivity().startActivity(i);
            getActivity().finish();
        }
    }

    private void showVideo() {
        this.headerVideoView.setSurfaceTextureListener(this);
    }

    public void onPause() {
        this.swipeRefreshLayout.setRefreshing(false);
        this.swipeRefreshLayout.destroyDrawingCache();
        this.swipeRefreshLayout.clearAnimation();
        unsubscribe(this.changeSubscription);
        if (this.renameDialogFragment != null && this.renameDialogFragment.isAdded()) {
            this.renameDialogFragment.dismiss();
        }
        if (!(this.authSubscription == null || this.authSubscription.isUnsubscribed())) {
            this.authSubscription.unsubscribe();
        }
        if (!(this.pageRefreshSubscription == null || this.pageRefreshSubscription.isUnsubscribed())) {
            this.pageRefreshSubscription.unsubscribe();
        }
        if (!(this.pageRequestSubscription == null || this.pageRequestSubscription.isUnsubscribed())) {
            this.pageRequestSubscription.unsubscribe();
        }
        super.onPause();
    }

    private boolean refresh() {
        this.authorization.refreshBackgroundProfile();
        return handleObservableRefresh(this.operationLoader.loadPage(0).observeOn(AndroidSchedulers.mainThread()).doOnUnsubscribe(new C20103()));
    }

    private void requestNextPage() {
        if (!this.operationLoader.isLastLoaded()) {
            loadNext();
        }
    }

    private boolean loadPage(int i) {
        this.safeAdapter.removeBottom();
        return handleObservable(this.operationLoader.loadPage(i).observeOn(AndroidSchedulers.mainThread()));
    }

    private boolean loadNext() {
        this.safeAdapter.removeBottom();
        return handleObservable(this.operationLoader.loadNextPage().observeOn(AndroidSchedulers.mainThread()));
    }

    private boolean handleObservable(Observable<FeedList> observable) {
        if (!this.authorization.isAuthorized()) {
            return null;
        }
        this.isInitialized = true;
        this.isListLoadingInProgress = true;
        this.safeAdapter.addBottom(new FeedItem(-1, null));
        this.pageRequestSubscription = observable.subscribe(new C17594());
        return true;
    }

    private boolean handleObservableRefresh(Observable<FeedList> observable) {
        if (this.authorization.isAuthorized()) {
            this.pageRefreshSubscription = observable.subscribe(new C17605());
            return true;
        }
        this.swipeRefreshLayout.setRefreshing(false);
        return false;
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.authorization = getInjector().getAuthorization();
        this.feedManager = getInjector().getFeedManager();
        this.currencyManager = getInjector().getCurrencyManager();
        this.token = getArguments().getString("TOKEN");
        view = this.currencyManager;
        Context activity = getActivity();
        Authorization authorization = this.authorization;
        Intrinsics.checkParameterIsNotNull(activity, "context");
        Intrinsics.checkParameterIsNotNull(authorization, "authorization");
        MoneyFormatter moneyFormatter = new MoneyFormatter(activity, authorization, view);
        moneyFormatter.setFloorAmount(true);
        this.moneyFormatter = moneyFormatter;
        this.realToolbar.setTitle("");
        this.safeAdapter = new SafeAdapter(getLayoutInflater(bundle));
        this.feedView.setLayoutManager(new LinearLayoutManager(getActivity()));
        this.feedView.setAdapter(this.safeAdapter);
        this.feedView.setScrollViewCallbacks(this);
        setupToolbar();
        this.money.setOnClickListener(new C15526());
        this.swipeRefreshLayout.setOnRefreshListener(new C16757());
    }

    private void showBalance() {
        if (this.safeAccount != null) {
            double balance = this.safeAccount.getBalance();
            String currencyCode = this.safeAccount.getCurrencyCode();
            if (!this.isFullMoneyMode) {
                if (balance >= 1.0d) {
                    balance = (double) ((int) balance);
                }
            }
            this.money.setText(this.moneyFormatter.format(balance, currencyCode, this.isFullMoneyMode));
            this.rocketTitle.setText(this.moneyFormatter.format(balance, currencyCode, this.isFullMoneyMode));
        }
    }

    private void setupToolbar() {
        this.realToolbar.setNavigationIcon(C0859R.drawable.ic_drawer_black);
        this.toolbar.setNavigationIcon(C0859R.drawable.ic_drawer_white);
        setupToolbarSizes();
        this.realToolbar.inflateMenu(C0859R.menu.menu_accout);
        this.toolbar.inflateMenu(C0859R.menu.menu_accout_static);
        this.realToolbar.setNavigationOnClickListener(new C15538());
        this.toolbar.setNavigationOnClickListener(new C15549());
        this.toolbar.setOnMenuItemClickListener(new OnMenuItemClickListener() {
            public boolean onMenuItemClick(MenuItem menuItem) {
                menuItem = menuItem.getItemId();
                if (menuItem == C0859R.id.rename) {
                    SafeAccountFragment.this.rename();
                    return true;
                } else if (menuItem != C0859R.id.support) {
                    return null;
                } else {
                    SafeAccountFragment.this.goToSupport();
                    return true;
                }
            }
        });
        this.realToolbar.setOnMenuItemClickListener(new OnMenuItemClickListener() {
            public boolean onMenuItemClick(MenuItem menuItem) {
                menuItem = menuItem.getItemId();
                if (menuItem == C0859R.id.rename) {
                    SafeAccountFragment.this.rename();
                    return true;
                } else if (menuItem != C0859R.id.support) {
                    return null;
                } else {
                    SafeAccountFragment.this.goToSupport();
                    return true;
                }
            }
        });
    }

    private void goToSupport() {
        ((MainActivity) getActivity()).showSupport();
    }

    private void rename() {
        AbstractActivity abstractActivity = (AbstractActivity) getActivity();
        this.renameDialogFragment = RenameSafeDialogFragment.getInstance(this.token);
        this.renameDialogFragment.show(abstractActivity.getSupportFragmentManager(), null);
    }

    private void setupToolbarSizes() {
        int statusBarHeight = getStatusBarHeight();
        this.appBarLayout.setMinimumHeight(ViewCompat.getMinimumHeight(this.appBarLayout) + (statusBarHeight << 1));
        setToolbarSize(this.toolbar, statusBarHeight);
        setToolbarSize(this.realToolbar, statusBarHeight);
        this.realToolbar.setTranslationY((float) (-this.toolbar.getLayoutParams().height));
        LayoutParams layoutParams = this.appBarLayout.getLayoutParams();
        layoutParams.height += statusBarHeight;
        this.appBarLayout.setLayoutParams(layoutParams);
        this.headerHeight = layoutParams.height;
    }

    public void onScrollChanged(int i, boolean z, boolean z2) {
        z = false;
        if (i < 0) {
            i = 0;
        }
        if (this.safeAdapter.getItemCount() - ((LinearLayoutManager) this.feedView.getLayoutManager()).findLastVisibleItemPosition() < true && !this.isListLoadingInProgress) {
            requestNextPage();
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

    private void updateToolbarPosition(int i) {
        int height = this.realToolbar.getHeight();
        i = height - i;
        if (i < 0) {
            i = 0;
        }
        float height2 = (float) this.realToolbar.getHeight();
        if (height >= i) {
            height2 = (float) i;
        }
        this.realToolbar.setTranslationY(-height2);
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
            this.mediaPlayer.setDataSource(getActivity(), Uri.parse(getRawPath(C0859R.raw.save)));
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
}
