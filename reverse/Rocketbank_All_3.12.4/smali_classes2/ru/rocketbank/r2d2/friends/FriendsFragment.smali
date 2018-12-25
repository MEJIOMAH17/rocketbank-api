.class public Lru/rocketbank/r2d2/friends/FriendsFragment;
.super Lru/rocketbank/r2d2/fragments/RocketFragment;
.source "FriendsFragment.java"

# interfaces
.implements Lru/rocketbank/r2d2/data/binding/FabHandler;


# static fields
.field private static final KEY_RECYCLER_VIEW_STATE:Ljava/lang/String; = "KEY_RECYCLER_VIEW_STATE"

.field private static final KEY_ROCKET_FRIENDS:Ljava/lang/String; = "KEY_ROCKET_FRIENDS"

.field private static final KEY_ROCKET_FRIENDS_IDS:Ljava/lang/String; = "KEY_ROCKET_FRIENDS_IDS"

.field private static final KEY_SEARCH_QUERY:Ljava/lang/String; = "KEY_SEARCH_QUERY"

.field private static final KEY_TRANSFER_FRIENDS:Ljava/lang/String; = "KEY_TRANSFER_FRIENDS"

.field private static final TAG:Ljava/lang/String; = "FriendsFragment"


# instance fields
.field protected adapter:Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;

.field authorization:Lru/rocketbank/core/user/Authorization;

.field private binding:Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;

.field contactManager:Lru/rocketbank/core/manager/ContactManager;

.field private contactSubscription:Lrx/Subscription;

.field private contentResolver:Landroid/content/ContentResolver;

.field private cursor:Landroid/database/Cursor;

.field fab:Landroid/support/design/widget/FloatingActionButton;

.field protected friendsAdapter:Lru/rocketbank/r2d2/friends/FriendsAdapter;

.field nothingFoundTextView:Landroid/widget/TextView;

.field nothingFoundView:Landroid/view/View;

.field progressBar:Landroid/widget/ProgressBar;

.field recyclerView:Landroid/support/v7/widget/RecyclerView;

.field protected rocketContactIDS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected rocketFriends:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/model/contact/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private rocketFriendsSubscription:Lrx/Subscription;

.field private savedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

.field protected searchQuery:Ljava/lang/String;

.field private searchSubscription:Lrx/Subscription;

.field private searchView:Landroid/support/v7/widget/SearchView;

.field toolbar:Landroid/support/v7/widget/Toolbar;

.field protected transferFriends:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/model/contact/Contact;",
            ">;"
        }
    .end annotation
.end field

.field protected userSubscription:Lrx/Subscription;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;-><init>()V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->rocketFriends:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->transferFriends:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lru/rocketbank/r2d2/friends/FriendsFragment;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lru/rocketbank/r2d2/friends/FriendsFragment;->showProgress()V

    return-void
.end method

.method static synthetic access$102(Lru/rocketbank/r2d2/friends/FriendsFragment;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    .line 70
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->cursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$200(Lru/rocketbank/r2d2/friends/FriendsFragment;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/friends/FriendsFragment;->queryCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method private checkPermission()V
    .locals 5

    .line 212
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 213
    invoke-static {}, Lru/rocketbank/r2d2/RocketApplication;->getContext()Lru/rocketbank/core/BaseRocketApplication;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 215
    invoke-direct {p0}, Lru/rocketbank/r2d2/friends/FriendsFragment;->hideProgress()V

    .line 216
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->nothingFoundTextView:Landroid/widget/TextView;

    const v1, 0x7f110107

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 218
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lru/rocketbank/core/model/RequestPermissionEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "android.permission.READ_CONTACTS"

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lru/rocketbank/core/model/RequestPermissionEvent;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private hideProgress()V
    .locals 3

    .line 356
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 357
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->nothingFoundView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 358
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method

.method private queryCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11

    const-string v0, "in_visible_group=\'1\'"

    .line 472
    iget-object v1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->rocketContactIDS:Ljava/util/ArrayList;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->rocketContactIDS:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 473
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND %s NOT IN (%s)"

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "_id"

    aput-object v6, v5, v3

    iget-object v6, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->rocketContactIDS:Ljava/util/ArrayList;

    const-string v7, ","

    invoke-static {v6, v7}, Lru/rocketbank/r2d2/Utils;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz p1, :cond_1

    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v8, v0

    .line 481
    iget-object v5, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->contentResolver:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 p1, 0x3

    new-array v7, p1, [Ljava/lang/String;

    const-string p1, "_id"

    aput-object p1, v7, v3

    const-string p1, "photo_thumb_uri"

    aput-object p1, v7, v2

    const-string p1, "display_name"

    aput-object p1, v7, v4

    const/4 v9, 0x0

    const-string v10, "display_name"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method private refreshCursor(Ljava/lang/String;)V
    .locals 2

    .line 290
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->contactSubscription:Lrx/Subscription;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->contactSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->contactSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 294
    :cond_0
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/friends/FriendsFragment;->requestCursorUpdate(Ljava/lang/String;)Lrx/Observable;

    move-result-object p1

    .line 295
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 296
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    new-instance v0, Lru/rocketbank/r2d2/friends/FriendsFragment$8;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/friends/FriendsFragment$8;-><init>(Lru/rocketbank/r2d2/friends/FriendsFragment;)V

    new-instance v1, Lru/rocketbank/r2d2/friends/FriendsFragment$9;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/friends/FriendsFragment$9;-><init>(Lru/rocketbank/r2d2/friends/FriendsFragment;)V

    .line 297
    invoke-virtual {p1, v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->contactSubscription:Lrx/Subscription;

    return-void
.end method

.method private requestCursorUpdate(Ljava/lang/String;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .line 368
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendsFragment;->closeCursor()V

    .line 369
    new-instance v0, Lru/rocketbank/r2d2/friends/FriendsFragment$10;

    invoke-direct {v0, p0, p1}, Lru/rocketbank/r2d2/friends/FriendsFragment$10;-><init>(Lru/rocketbank/r2d2/friends/FriendsFragment;Ljava/lang/String;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method private showProgress()V
    .locals 2

    .line 362
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->nothingFoundView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 363
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 364
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private subscribeSearchView()V
    .locals 2

    .line 253
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->searchView:Landroid/support/v7/widget/SearchView;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->searchView:Landroid/support/v7/widget/SearchView;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/support/v7/widget/RxSearchView;->queryTextChanges(Landroid/support/v7/widget/SearchView;)Lrx/Observable;

    move-result-object v0

    const/4 v1, 0x1

    .line 255
    invoke-virtual {v0, v1}, Lrx/Observable;->skip(I)Lrx/Observable;

    move-result-object v0

    .line 256
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/friends/FriendsFragment$6;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/friends/FriendsFragment$6;-><init>(Lru/rocketbank/r2d2/friends/FriendsFragment;)V

    .line 257
    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/friends/FriendsFragment$5;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/friends/FriendsFragment$5;-><init>(Lru/rocketbank/r2d2/friends/FriendsFragment;)V

    .line 263
    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/friends/FriendsFragment$4;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/friends/FriendsFragment$4;-><init>(Lru/rocketbank/r2d2/friends/FriendsFragment;)V

    .line 269
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->searchSubscription:Lrx/Subscription;

    .line 275
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->searchView:Landroid/support/v7/widget/SearchView;

    new-instance v1, Lru/rocketbank/r2d2/friends/FriendsFragment$7;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/friends/FriendsFragment$7;-><init>(Lru/rocketbank/r2d2/friends/FriendsFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView;->setOnCloseListener(Landroid/support/v7/widget/SearchView$OnCloseListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public closeCursor()V
    .locals 2

    .line 525
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->friendsAdapter:Lru/rocketbank/r2d2/friends/FriendsAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->friendsAdapter:Lru/rocketbank/r2d2/friends/FriendsAdapter;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/friends/FriendsAdapter;->setCursor(Landroid/database/Cursor;)V

    .line 529
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 530
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 531
    iput-object v1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->cursor:Landroid/database/Cursor;

    :cond_1
    return-void
.end method

.method protected createFriendAdapter()Lru/rocketbank/r2d2/friends/FriendsAdapter;
    .locals 2

    .line 190
    new-instance v0, Lru/rocketbank/r2d2/friends/FriendsAdapter;

    new-instance v1, Lru/rocketbank/r2d2/friends/FriendsFragment$3;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/friends/FriendsFragment$3;-><init>(Lru/rocketbank/r2d2/friends/FriendsFragment;)V

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/friends/FriendsAdapter;-><init>(Lrx/functions/Action2;)V

    return-object v0
.end method

.method public filter(Ljava/lang/String;)V
    .locals 5

    .line 439
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->searchQuery:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 443
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 447
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 448
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 450
    iget-object v2, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->rocketFriends:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lru/rocketbank/core/model/contact/Contact;

    .line 451
    invoke-virtual {v3, p1}, Lru/rocketbank/core/model/contact/Contact;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 452
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 456
    :cond_2
    iget-object v2, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->transferFriends:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lru/rocketbank/core/model/contact/Contact;

    .line 457
    invoke-virtual {v3, p1}, Lru/rocketbank/core/model/contact/Contact;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 458
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 462
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "display_name like \'%"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%\' COLLATE NOCASE"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 444
    :cond_5
    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    iget-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->rocketFriends:Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 445
    new-instance v1, Ljava/util/ArrayList;

    iget-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->transferFriends:Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p1, 0x0

    .line 464
    :goto_3
    iget-object v2, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->friendsAdapter:Lru/rocketbank/r2d2/friends/FriendsAdapter;

    invoke-virtual {v2, v0}, Lru/rocketbank/r2d2/friends/FriendsAdapter;->setRocketFriends(Ljava/util/List;)V

    .line 465
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->friendsAdapter:Lru/rocketbank/r2d2/friends/FriendsAdapter;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/friends/FriendsAdapter;->setTransfers(Ljava/util/List;)V

    .line 466
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/friends/FriendsFragment;->refreshCursor(Ljava/lang/String;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 504
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->searchView:Landroid/support/v7/widget/SearchView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->searchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->isIconified()Z

    move-result v0

    if-nez v0, :cond_0

    .line 505
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->searchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    .line 506
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->searchView:Landroid/support/v7/widget/SearchView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView;->setIconified(Z)V

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f0d0003

    .line 237
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f09030a

    .line 239
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 241
    invoke-static {p1}, Landroid/support/v4/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/SearchView;

    iput-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->searchView:Landroid/support/v7/widget/SearchView;

    .line 243
    invoke-direct {p0}, Lru/rocketbank/r2d2/friends/FriendsFragment;->subscribeSearchView()V

    .line 245
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->searchView:Landroid/support/v7/widget/SearchView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->searchQuery:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->searchQuery:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 246
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->searchView:Landroid/support/v7/widget/SearchView;

    iget-object p2, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->searchQuery:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 247
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->searchView:Landroid/support/v7/widget/SearchView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/SearchView;->setIconified(Z)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0109

    const/4 v0, 0x0

    .line 108
    invoke-static {p1, p3, p2, v0}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;

    iput-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->binding:Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;

    .line 109
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->binding:Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;

    invoke-virtual {p1, p0}, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->setHandler(Lru/rocketbank/r2d2/data/binding/FabHandler;)V

    .line 111
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->binding:Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->fab:Landroid/support/design/widget/FloatingActionButton;

    iput-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->fab:Landroid/support/design/widget/FloatingActionButton;

    .line 112
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->binding:Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->progressBar:Landroid/widget/ProgressBar;

    iput-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->progressBar:Landroid/widget/ProgressBar;

    .line 113
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->binding:Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->nothingFound:Landroid/widget/FrameLayout;

    iput-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->nothingFoundView:Landroid/view/View;

    .line 114
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->binding:Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->nothingFoundText:Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->nothingFoundTextView:Landroid/widget/TextView;

    .line 115
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->binding:Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 116
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->binding:Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->toolbarInclude:Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    iput-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 118
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendsFragment;->getStatusBarHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/friends/FriendsFragment;->setToolbarSize(Landroid/support/v7/widget/Toolbar;I)I

    .line 119
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/friends/FriendsFragment;->setToolbarActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 120
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->binding:Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 520
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendsFragment;->closeCursor()V

    .line 521
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onDestroy()V

    return-void
.end method

.method protected onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 417
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onFabClick()V
    .locals 4

    .line 513
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getLeft()I

    move-result v0

    iget-object v1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButton;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 514
    iget-object v1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButton;->getTop()I

    move-result v1

    iget-object v2, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v2}, Landroid/support/design/widget/FloatingActionButton;->getBottom()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 515
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3, v0, v1}, Lru/rocketbank/r2d2/friends/InviteFriendsActivity;->startActivity(Landroid/content/Context;ZII)V

    return-void
.end method

.method public onFabClicked(Landroid/view/View;)V
    .locals 0

    .line 537
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendsFragment;->onFabClick()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 225
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->contactSubscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/friends/FriendsFragment;->unsubscribe(Lrx/Subscription;)V

    .line 226
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->userSubscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/friends/FriendsFragment;->unsubscribe(Lrx/Subscription;)V

    .line 227
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->rocketFriendsSubscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/friends/FriendsFragment;->unsubscribe(Lrx/Subscription;)V

    .line 228
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->searchSubscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/friends/FriendsFragment;->unsubscribe(Lrx/Subscription;)V

    .line 229
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iput-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->savedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 232
    :cond_0
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 165
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onResume()V

    .line 166
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f11046c

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    .line 167
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->cursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->contactManager:Lru/rocketbank/core/manager/ContactManager;

    invoke-virtual {v0}, Lru/rocketbank/core/manager/ContactManager;->getContactsObservable()Lrx/Observable;

    move-result-object v0

    .line 169
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/friends/FriendsFragment$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/friends/FriendsFragment$1;-><init>(Lru/rocketbank/r2d2/friends/FriendsFragment;)V

    new-instance v2, Lru/rocketbank/r2d2/friends/FriendsFragment$2;

    invoke-direct {v2, p0}, Lru/rocketbank/r2d2/friends/FriendsFragment$2;-><init>(Lru/rocketbank/r2d2/friends/FriendsFragment;)V

    .line 170
    invoke-virtual {v0, v1, v2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->rocketFriendsSubscription:Lrx/Subscription;

    .line 186
    :cond_0
    invoke-direct {p0}, Lru/rocketbank/r2d2/friends/FriendsFragment;->subscribeSearchView()V

    return-void
.end method

.method public onRocketFriendsLoaded(Lru/rocketbank/core/events/ContactsEvent;)V
    .locals 2

    .line 398
    invoke-virtual {p1}, Lru/rocketbank/core/events/ContactsEvent;->getErrorEvent()Lru/rocketbank/core/events/ErrorEvent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 399
    invoke-virtual {p1}, Lru/rocketbank/core/events/ContactsEvent;->getErrorEvent()Lru/rocketbank/core/events/ErrorEvent;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/events/ErrorEvent;->getException()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 401
    invoke-static {v0}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    .line 403
    :cond_0
    invoke-direct {p0}, Lru/rocketbank/r2d2/friends/FriendsFragment;->hideProgress()V

    .line 404
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->nothingFoundView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 405
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->nothingFoundTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lru/rocketbank/core/events/ContactsEvent;->getErrorEvent()Lru/rocketbank/core/events/ErrorEvent;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/core/events/ErrorEvent;->getMessageStringResource()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 406
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendsFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/events/ContactsEvent;->getErrorEvent()Lru/rocketbank/core/events/ErrorEvent;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/events/ErrorEvent;->getMessageStringResource()I

    move-result p1

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/helpers/UIHelper;->showSnack(Landroid/view/View;I)V

    return-void

    .line 410
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lru/rocketbank/core/events/ContactsEvent;->getRocketContactIDS()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->rocketContactIDS:Ljava/util/ArrayList;

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lru/rocketbank/core/events/ContactsEvent;->getServerContacts()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->rocketFriends:Ljava/util/ArrayList;

    .line 412
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lru/rocketbank/core/events/ContactsEvent;->getTransferFriends()Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->transferFriends:Ljava/util/ArrayList;

    .line 413
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendsFragment;->refreshDataSources()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 490
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "KEY_ROCKET_FRIENDS"

    .line 491
    iget-object v1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->rocketFriends:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "KEY_TRANSFER_FRIENDS"

    .line 492
    iget-object v1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->transferFriends:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "KEY_ROCKET_FRIENDS_IDS"

    .line 493
    iget-object v1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->rocketContactIDS:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 494
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "KEY_RECYCLER_VIEW_STATE"

    .line 495
    iget-object v1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 497
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->searchView:Landroid/support/v7/widget/SearchView;

    if-eqz v0, :cond_1

    const-string v0, "KEY_SEARCH_QUERY"

    .line 498
    iget-object v1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->searchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 126
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 128
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendsFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    .line 129
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendsFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getContactManager()Lru/rocketbank/core/manager/ContactManager;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->contactManager:Lru/rocketbank/core/manager/ContactManager;

    .line 131
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendsFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->contentResolver:Landroid/content/ContentResolver;

    .line 133
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 134
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 136
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendsFragment;->createFriendAdapter()Lru/rocketbank/r2d2/friends/FriendsAdapter;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->friendsAdapter:Lru/rocketbank/r2d2/friends/FriendsAdapter;

    .line 138
    new-instance p1, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;

    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->friendsAdapter:Lru/rocketbank/r2d2/friends/FriendsAdapter;

    invoke-direct {p1, v0}, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->adapter:Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;

    .line 139
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->adapter:Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 141
    invoke-static {}, Lru/rocketbank/r2d2/helpers/UIHelper;->supportsViewElevation()Z

    move-result p1

    if-nez p1, :cond_0

    .line 142
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Lru/rocketbank/core/widgets/ItemShadowDecorator;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0801b7

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-direct {v0, v1}, Lru/rocketbank/core/widgets/ItemShadowDecorator;-><init>(Landroid/graphics/drawable/NinePatchDrawable;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 145
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->cursor:Landroid/database/Cursor;

    if-eqz p1, :cond_1

    .line 146
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendsFragment;->refreshDataSources()V

    return-void

    :cond_1
    if-nez p2, :cond_2

    .line 151
    invoke-direct {p0}, Lru/rocketbank/r2d2/friends/FriendsFragment;->showProgress()V

    .line 152
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->contactManager:Lru/rocketbank/core/manager/ContactManager;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lru/rocketbank/core/manager/ContactManager;->loadContacts(Z)V

    goto :goto_0

    :cond_2
    const-string p1, "KEY_ROCKET_FRIENDS"

    .line 154
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->rocketFriends:Ljava/util/ArrayList;

    const-string p1, "KEY_TRANSFER_FRIENDS"

    .line 155
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->transferFriends:Ljava/util/ArrayList;

    const-string p1, "KEY_ROCKET_FRIENDS_IDS"

    .line 156
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->rocketContactIDS:Ljava/util/ArrayList;

    const-string p1, "KEY_RECYCLER_VIEW_STATE"

    .line 157
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iput-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->savedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    const-string p1, "KEY_SEARCH_QUERY"

    .line 158
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->searchQuery:Ljava/lang/String;

    .line 159
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendsFragment;->refreshDataSources()V

    .line 161
    :goto_0
    invoke-direct {p0}, Lru/rocketbank/r2d2/friends/FriendsFragment;->checkPermission()V

    return-void
.end method

.method protected refreshCursor()V
    .locals 1

    const/4 v0, 0x0

    .line 286
    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/friends/FriendsFragment;->refreshCursor(Ljava/lang/String;)V

    return-void
.end method

.method protected refreshDataSources()V
    .locals 2

    .line 421
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->rocketContactIDS:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 422
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->rocketContactIDS:Ljava/util/ArrayList;

    .line 424
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->rocketFriends:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 425
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->rocketFriends:Ljava/util/ArrayList;

    .line 427
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->transferFriends:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 428
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->transferFriends:Ljava/util/ArrayList;

    .line 431
    :cond_2
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->friendsAdapter:Lru/rocketbank/r2d2/friends/FriendsAdapter;

    iget-object v1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->rocketFriends:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/friends/FriendsAdapter;->setRocketFriends(Ljava/util/List;)V

    .line 432
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->friendsAdapter:Lru/rocketbank/r2d2/friends/FriendsAdapter;

    iget-object v1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->transferFriends:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/friends/FriendsAdapter;->setTransfers(Ljava/util/List;)V

    .line 433
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendsFragment;->updateSections()V

    .line 434
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendsFragment;->refreshCursor()V

    return-void
.end method

.method protected updateSections()V
    .locals 4

    .line 315
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendsFragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 318
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->friendsAdapter:Lru/rocketbank/r2d2/friends/FriendsAdapter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/friends/FriendsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->adapter:Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 319
    invoke-direct {p0}, Lru/rocketbank/r2d2/friends/FriendsFragment;->hideProgress()V

    .line 320
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->searchQuery:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->searchQuery:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f110327

    .line 321
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/friends/FriendsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    .line 322
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->searchQuery:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 323
    iget-object v1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->nothingFoundTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 325
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->nothingFoundTextView:Landroid/widget/TextView;

    const v1, 0x7f11017f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 329
    :cond_2
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->friendsAdapter:Lru/rocketbank/r2d2/friends/FriendsAdapter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/friends/FriendsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 332
    :cond_3
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->progressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->nothingFoundView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 337
    iget-object v2, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->friendsAdapter:Lru/rocketbank/r2d2/friends/FriendsAdapter;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/friends/FriendsAdapter;->getTransfersCount()I

    move-result v2

    if-eqz v2, :cond_4

    .line 338
    new-instance v2, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$Section;

    const v3, 0x7f110485

    invoke-virtual {p0, v3}, Lru/rocketbank/r2d2/friends/FriendsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$Section;-><init>(ILjava/lang/CharSequence;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    iget-object v2, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->friendsAdapter:Lru/rocketbank/r2d2/friends/FriendsAdapter;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/friends/FriendsAdapter;->getTransfersCount()I

    move-result v2

    add-int/2addr v1, v2

    .line 341
    :cond_4
    iget-object v2, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->friendsAdapter:Lru/rocketbank/r2d2/friends/FriendsAdapter;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/friends/FriendsAdapter;->getRocketFriendsCount()I

    move-result v2

    if-eqz v2, :cond_5

    .line 342
    new-instance v2, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$Section;

    const v3, 0x7f110233

    invoke-virtual {p0, v3}, Lru/rocketbank/r2d2/friends/FriendsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$Section;-><init>(ILjava/lang/CharSequence;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    iget-object v2, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->friendsAdapter:Lru/rocketbank/r2d2/friends/FriendsAdapter;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/friends/FriendsAdapter;->getRocketFriendsCount()I

    move-result v2

    add-int/2addr v1, v2

    .line 345
    :cond_5
    iget-object v2, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->friendsAdapter:Lru/rocketbank/r2d2/friends/FriendsAdapter;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/friends/FriendsAdapter;->getFriendsCount()I

    move-result v2

    if-eqz v2, :cond_6

    .line 346
    new-instance v2, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$Section;

    const v3, 0x7f110328

    invoke-virtual {p0, v3}, Lru/rocketbank/r2d2/friends/FriendsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$Section;-><init>(ILjava/lang/CharSequence;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    :cond_6
    iget-object v1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->adapter:Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$Section;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$Section;

    invoke-virtual {v1, v0}, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;->setSections([Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$Section;)V

    .line 349
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->savedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_7

    .line 350
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->savedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const/4 v0, 0x0

    .line 351
    iput-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment;->savedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    :cond_7
    return-void

    :cond_8
    :goto_0
    return-void
.end method
