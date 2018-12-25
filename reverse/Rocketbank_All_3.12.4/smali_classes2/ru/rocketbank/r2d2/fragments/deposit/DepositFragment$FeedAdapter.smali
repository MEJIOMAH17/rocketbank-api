.class Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "DepositFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FeedAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private feedItems:Landroid/support/v7/util/SortedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/util/SortedList<",
            "Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final sortedCallback:Landroid/support/v7/util/SortedList$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/util/SortedList$Callback<",
            "Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;",
            ">;"
        }
    .end annotation
.end field

.field private stickyItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)V
    .locals 2

    .line 830
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 835
    new-instance p1, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter$1;

    invoke-direct {p1, p0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter$1;-><init>(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->sortedCallback:Landroid/support/v7/util/SortedList$Callback;

    .line 831
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->stickyItems:Ljava/util/ArrayList;

    .line 832
    new-instance p1, Landroid/support/v7/util/SortedList;

    const-class v0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->sortedCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-direct {p1, v0, v1}, Landroid/support/v7/util/SortedList;-><init>(Ljava/lang/Class;Landroid/support/v7/util/SortedList$Callback;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    return-void
.end method

.method static synthetic access$1600(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 825
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->stickyItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method private getItem(I)Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;
    .locals 2

    .line 941
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->stickyItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 943
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->stickyItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;

    return-object p1

    .line 946
    :cond_0
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/support/v7/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;

    return-object p1
.end method

.method private onBindAboutOperation(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$AboutLineViewHolder;Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;)V
    .locals 3

    .line 950
    invoke-virtual {p2}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$AboutLineViewHolder;->setTitle(Ljava/lang/String;)V

    .line 951
    invoke-virtual {p2}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$AboutLineViewHolder;->setValue(Ljava/lang/String;)V

    .line 953
    invoke-virtual {p2}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;->getId()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x28

    if-ne v0, v2, :cond_0

    .line 954
    invoke-virtual {p1, v1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$AboutLineViewHolder;->setArrowRightVisible(Z)V

    return-void

    .line 955
    :cond_0
    invoke-virtual {p2}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;->getId()I

    move-result p2

    const/16 v0, 0x32

    if-ne p2, v0, :cond_1

    .line 956
    invoke-virtual {p1, v1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$AboutLineViewHolder;->setArrowRightVisible(Z)V

    return-void

    :cond_1
    const/4 p2, 0x0

    .line 958
    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$AboutLineViewHolder;->setArrowRightVisible(Z)V

    return-void
.end method

.method private onBindDelimiter(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedViewHolder;Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;)V
    .locals 1

    .line 987
    check-cast p1, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$DelimiterViewHolder;

    .line 988
    invoke-virtual {p2}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;->getId()I

    move-result v0

    if-nez v0, :cond_0

    const p2, 0x7f11013a

    .line 989
    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$DelimiterViewHolder;->setText(I)V

    return-void

    .line 990
    :cond_0
    invoke-virtual {p2}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;->getId()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    const p2, 0x7f11033d

    .line 991
    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$DelimiterViewHolder;->setText(I)V

    :cond_1
    return-void
.end method

.method private onBindHistoryOperation(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HistoryViewHolder;Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;)V
    .locals 2

    .line 963
    invoke-virtual {p2}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;->getStatementModel()Lru/rocketbank/core/model/StatementModel;

    move-result-object p2

    .line 965
    invoke-virtual {p2}, Lru/rocketbank/core/model/StatementModel;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HistoryViewHolder;->setName(Ljava/lang/String;)V

    .line 966
    invoke-virtual {p2}, Lru/rocketbank/core/model/StatementModel;->getAmount()F

    move-result v0

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HistoryViewHolder;->setAmount(F)V

    .line 967
    invoke-virtual {p2}, Lru/rocketbank/core/model/StatementModel;->getKind()Ljava/lang/String;

    move-result-object p2

    const-string v0, "percent"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 968
    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HistoryViewHolder;->setCategoryGlymph()V

    const/4 p2, 0x0

    .line 969
    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HistoryViewHolder;->setLabel(Ljava/lang/String;)V

    .line 970
    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HistoryViewHolder;->hideImage()V

    const/4 p2, 0x0

    .line 971
    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HistoryViewHolder;->setStatusIcon(I)V

    return-void

    .line 974
    :cond_0
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->access$1400(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->access$1500(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;Ljava/lang/String;)I

    move-result p2

    .line 975
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->access$1400(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HistoryViewHolder;->setBackgroundWithText(Ljava/lang/String;IZ)V

    return-void
.end method


# virtual methods
.method public addItem(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;)V
    .locals 2

    .line 1022
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0, p1}, Landroid/support/v7/util/SortedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1024
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v1, v0, p1}, Landroid/support/v7/util/SortedList;->updateItemAt(ILjava/lang/Object;)V

    goto :goto_0

    .line 1026
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0, p1}, Landroid/support/v7/util/SortedList;->add(Ljava/lang/Object;)I

    .line 1029
    :goto_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0, p1}, Landroid/support/v7/util/SortedList;->add(Ljava/lang/Object;)I

    return-void
.end method

.method public addTopItem(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;)V
    .locals 2

    .line 1033
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->stickyItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1035
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->stickyItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1036
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->notifyItemChanged(I)V

    return-void

    .line 1038
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->stickyItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1039
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->stickyItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 1040
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 1045
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0}, Landroid/support/v7/util/SortedList;->clear()V

    .line 1047
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public clearTop()V
    .locals 1

    .line 1051
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->stickyItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1052
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->access$1700(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->requestLayout()V

    .line 1053
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCleanSize()I
    .locals 2

    .line 1004
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0}, Landroid/support/v7/util/SortedList;->size()I

    move-result v0

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->stickyItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .line 997
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->getCleanSize()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1010
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->stickyItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 1012
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->stickyItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;->getType()I

    move-result p1

    return p1

    .line 1015
    :cond_0
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/support/v7/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;->getType()I

    move-result p1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 825
    check-cast p1, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedViewHolder;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->onBindViewHolder(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedViewHolder;I)V
    .locals 1

    .line 919
    invoke-direct {p0, p2}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->getItem(I)Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;

    move-result-object v0

    .line 921
    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedViewHolder;->setItem(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;)V

    .line 923
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->getItemViewType(I)I

    move-result p2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 934
    :pswitch_0
    invoke-direct {p0, p1, v0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->onBindDelimiter(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedViewHolder;Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;)V

    goto :goto_0

    .line 930
    :pswitch_1
    check-cast p1, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HistoryViewHolder;

    invoke-direct {p0, p1, v0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->onBindHistoryOperation(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HistoryViewHolder;Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;)V

    return-void

    .line 926
    :pswitch_2
    check-cast p1, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$AboutLineViewHolder;

    invoke-direct {p0, p1, v0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->onBindAboutOperation(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$AboutLineViewHolder;Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;)V

    return-void

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 825
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedViewHolder;
    .locals 2

    .line 880
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    const p2, 0x7f0c00b2

    .line 907
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 908
    new-instance p2, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedViewHolder;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    invoke-direct {p2, v0, p1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedViewHolder;-><init>(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;Landroid/view/View;)V

    goto :goto_0

    :pswitch_0
    const p2, 0x7f0c011d

    .line 901
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 902
    new-instance p2, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$DelimiterViewHolder;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    invoke-direct {p2, v0, p1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$DelimiterViewHolder;-><init>(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;Landroid/view/View;)V

    goto :goto_0

    :pswitch_1
    const p2, 0x7f0c0090

    .line 895
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 896
    new-instance p2, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HistoryViewHolder;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    invoke-direct {p2, v0, p1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HistoryViewHolder;-><init>(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;Landroid/view/View;)V

    goto :goto_0

    :pswitch_2
    const p2, 0x7f0c008f

    .line 889
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 890
    new-instance p2, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$AboutLineViewHolder;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    invoke-direct {p2, v0, p1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$AboutLineViewHolder;-><init>(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;Landroid/view/View;)V

    goto :goto_0

    :pswitch_3
    const p2, 0x7f0c014b

    .line 883
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 884
    new-instance p2, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HeaderViewHolder;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    invoke-direct {p2, v0, p1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HeaderViewHolder;-><init>(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;Landroid/view/View;)V

    :goto_0
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
