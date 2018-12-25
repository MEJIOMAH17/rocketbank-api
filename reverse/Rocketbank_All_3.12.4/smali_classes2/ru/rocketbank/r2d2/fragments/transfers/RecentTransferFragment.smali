.class public Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;
.super Lru/rocketbank/r2d2/fragments/RocketFragment;
.source "RecentTransferFragment.java"

# interfaces
.implements Lru/rocketbank/r2d2/fragments/NextButtonListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$ClickMoreListener;,
        Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter;
    }
.end annotation


# instance fields
.field accountApi:Lru/rocketbank/core/network/api/AccountApi;

.field private adapter:Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter;

.field private array:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/TransfersModelUrFiz;",
            ">;"
        }
    .end annotation
.end field

.field fabAdd:Landroid/support/design/widget/FloatingActionButton;

.field private recentSubscription:Lrx/Subscription;

.field recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 41
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;->array:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;)Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter;
    .locals 0

    .line 41
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;->adapter:Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter;

    return-object p0
.end method

.method static synthetic access$200(Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;Lru/rocketbank/core/network/model/TransfersModelUrFiz;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;->hide(Lru/rocketbank/core/network/model/TransfersModelUrFiz;)V

    return-void
.end method

.method static synthetic access$300(Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;)V
    .locals 0

    .line 41
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;->hideSpinner()V

    return-void
.end method

.method static synthetic access$400(Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;)V
    .locals 0

    .line 41
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;->hideSpinner()V

    return-void
.end method

.method private hide(Lru/rocketbank/core/network/model/TransfersModelUrFiz;)V
    .locals 3

    .line 130
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;->showSpinner()V

    .line 131
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/TransfersModelUrFiz;->getRemittance()Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->getLinked_account()Lru/rocketbank/core/network/model/TransfersModelUrFiz$LinkedAccount;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/network/model/TransfersModelUrFiz$LinkedAccount;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;->accountApi:Lru/rocketbank/core/network/api/AccountApi;

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Lru/rocketbank/core/network/api/AccountApi;->hideLinkedAccount(Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 133
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 134
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$3;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$3;-><init>(Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;Lru/rocketbank/core/network/model/TransfersModelUrFiz;)V

    .line 135
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;->recentSubscription:Lrx/Subscription;

    return-void
.end method

.method public static newInstance(Ljava/util/ArrayList;)Landroid/support/v4/app/Fragment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/TransfersModelUrFiz;",
            ">;)",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    .line 53
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "array"

    .line 54
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 55
    new-instance p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;

    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;-><init>()V

    .line 56
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c01c0

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 64
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "array"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;->array:Ljava/util/ArrayList;

    .line 66
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p2

    invoke-interface {p2}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAccountApi()Lru/rocketbank/core/network/api/AccountApi;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;->accountApi:Lru/rocketbank/core/network/api/AccountApi;

    const p2, 0x7f0902ce

    .line 68
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const p2, 0x7f090170

    .line 69
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/design/widget/FloatingActionButton;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;->fabAdd:Landroid/support/design/widget/FloatingActionButton;

    return-object p1
.end method

.method public onNextButtonClick()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 167
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onPause()V

    .line 168
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;->recentSubscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;->unsubscribe(Lrx/Subscription;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 161
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onResume()V

    .line 162
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;->updateNextButton(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 76
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 78
    new-instance p1, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;->array:Ljava/util/ArrayList;

    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$1;-><init>(Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;)V

    invoke-direct {p1, p0, p2, v0, v1}, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter;-><init>(Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;Landroid/content/Context;Ljava/util/ArrayList;Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$ClickMoreListener;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;->adapter:Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter;

    .line 118
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance p2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 119
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;->adapter:Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 121
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;->fabAdd:Landroid/support/design/widget/FloatingActionButton;

    new-instance p2, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$2;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$2;-><init>(Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;)V

    invoke-virtual {p1, p2}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public updateNextButton(Landroid/support/v4/app/Fragment;)V
    .locals 5

    .line 173
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lru/rocketbank/core/events/NextButtonEvent;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, p1, v3, v2, v4}, Lru/rocketbank/core/events/NextButtonEvent;-><init>(Landroid/support/v4/app/Fragment;ZLjava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
