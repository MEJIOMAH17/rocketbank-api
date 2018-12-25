.class Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SafeAccountFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SafeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private bottomItem:Lru/rocketbank/core/network/model/FeedItem;

.field private feedItems:Landroid/support/v7/util/SortedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/util/SortedList<",
            "Lru/rocketbank/core/network/model/FeedItem;",
            ">;"
        }
    .end annotation
.end field

.field private layoutInflater:Landroid/view/LayoutInflater;

.field private sortedCallback:Landroid/support/v7/util/SortedList$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/util/SortedList$Callback<",
            "Lru/rocketbank/core/network/model/FeedItem;",
            ">;"
        }
    .end annotation
.end field

.field private stickyItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/FeedItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;Landroid/view/LayoutInflater;)V
    .locals 2

    .line 846
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 847
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->stickyItems:Ljava/util/ArrayList;

    .line 849
    new-instance p1, Lru/rocketbank/r2d2/utils/FeedItemCallback;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->stickyItems:Ljava/util/ArrayList;

    invoke-direct {p1, p0, v0}, Lru/rocketbank/r2d2/utils/FeedItemCallback;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;Ljava/util/ArrayList;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->sortedCallback:Landroid/support/v7/util/SortedList$Callback;

    .line 850
    new-instance p1, Landroid/support/v7/util/SortedList;

    const-class v0, Lru/rocketbank/core/network/model/FeedItem;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->sortedCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-direct {p1, v0, v1}, Landroid/support/v7/util/SortedList;-><init>(Ljava/lang/Class;Landroid/support/v7/util/SortedList$Callback;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    .line 851
    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private getItem(I)Lru/rocketbank/core/network/model/FeedItem;
    .locals 2

    .line 904
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->bottomItem:Lru/rocketbank/core/network/model/FeedItem;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->getCleanSize()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 905
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->bottomItem:Lru/rocketbank/core/network/model/FeedItem;

    return-object p1

    .line 908
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->stickyItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    .line 910
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->stickyItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/network/model/FeedItem;

    return-object p1

    .line 913
    :cond_1
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/support/v7/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/network/model/FeedItem;

    return-object p1
.end method

.method private onBindAction(Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;Lru/rocketbank/core/network/model/FeedItem;)V
    .locals 1

    .line 941
    check-cast p1, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionViewHolder;

    .line 942
    invoke-virtual {p2}, Lru/rocketbank/core/network/model/FeedItem;->getOperation()Lru/rocketbank/core/model/AbstractOperation;

    move-result-object p2

    check-cast p2, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionOperation;

    .line 943
    invoke-static {p2}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionOperation;->access$1500(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionOperation;)I

    move-result v0

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionViewHolder;->setType(I)V

    .line 945
    invoke-static {p2}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionOperation;->access$1500(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionOperation;)I

    move-result p2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const p2, 0x7f11001f

    const v0, 0x7f110020

    .line 947
    invoke-virtual {p1, p2, v0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionViewHolder;->setTexts(II)V

    return-void

    :pswitch_1
    const p2, 0x7f110236

    const v0, 0x7f110237

    .line 951
    invoke-virtual {p1, p2, v0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionViewHolder;->setTexts(II)V

    return-void

    :pswitch_2
    const p2, 0x7f1103fd

    const v0, 0x7f110402

    .line 955
    invoke-virtual {p1, p2, v0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionViewHolder;->setTexts(II)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onBindDelimiter(Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;Lru/rocketbank/core/network/model/FeedItem;)V
    .locals 0

    .line 961
    check-cast p1, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$DelimiterViewHolder;

    .line 962
    invoke-virtual {p2}, Lru/rocketbank/core/network/model/FeedItem;->getOperation()Lru/rocketbank/core/model/AbstractOperation;

    move-result-object p2

    check-cast p2, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$DelimiterOperation;

    .line 963
    invoke-static {p2}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$DelimiterOperation;->access$1600(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$DelimiterOperation;)I

    move-result p2

    if-nez p2, :cond_0

    const p2, 0x7f110151

    .line 964
    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$DelimiterViewHolder;->setText(I)V

    return-void

    :cond_0
    const p2, 0x7f11033d

    .line 966
    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$DelimiterViewHolder;->setText(I)V

    return-void
.end method

.method private onBindOperation(Lru/rocketbank/r2d2/root/feed/viewholder/OperationViewHolder;Lru/rocketbank/core/network/model/FeedItem;)V
    .locals 4

    .line 971
    invoke-virtual {p2}, Lru/rocketbank/core/network/model/FeedItem;->getOperation()Lru/rocketbank/core/model/AbstractOperation;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/dto/operations/Operation;

    .line 972
    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/operations/Operation;->getMoney()Lru/rocketbank/core/model/MoneyData;

    move-result-object v1

    .line 977
    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/operations/Operation;->getComment()Ljava/lang/String;

    move-result-object v2

    .line 978
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/feed/viewholder/OperationViewHolder;->hideDayStart()V

    .line 979
    invoke-virtual {p1, v2}, Lru/rocketbank/r2d2/root/feed/viewholder/OperationViewHolder;->setContent(Ljava/lang/String;)V

    .line 980
    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/operations/Operation;->getDetails()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lru/rocketbank/r2d2/root/feed/viewholder/OperationViewHolder;->setName(Ljava/lang/String;)V

    .line 981
    invoke-virtual {p1, v0, p2}, Lru/rocketbank/r2d2/root/feed/viewholder/OperationViewHolder;->setOperation(Lru/rocketbank/core/model/dto/operations/Operation;Lru/rocketbank/core/network/model/FeedItem;)V

    .line 983
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/feed/viewholder/OperationViewHolder;->setNoAction()V

    .line 985
    new-instance p2, Lru/rocketbank/core/utils/MoneyFormatter;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    iget-object v2, v2, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    iget-object v3, v3, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

    invoke-direct {p2, v0, v2, v3}, Lru/rocketbank/core/utils/MoneyFormatter;-><init>(Landroid/content/Context;Lru/rocketbank/core/user/Authorization;Lru/rocketbank/core/manager/CurrencyManager;)V

    .line 986
    invoke-virtual {v1}, Lru/rocketbank/core/model/MoneyData;->getAmount()D

    move-result-wide v2

    double-to-float v0, v2

    float-to-double v2, v0

    invoke-virtual {v1}, Lru/rocketbank/core/model/MoneyData;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, v2, v3, v0, v1}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/root/feed/viewholder/OperationViewHolder;->setAmount(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addBottom(Lru/rocketbank/core/network/model/FeedItem;)V
    .locals 0

    .line 1035
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->bottomItem:Lru/rocketbank/core/network/model/FeedItem;

    .line 1037
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->getCleanSize()I

    move-result p1

    .line 1038
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public addItem(Lru/rocketbank/core/network/model/FeedItem;)V
    .locals 2

    .line 1024
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0, p1}, Landroid/support/v7/util/SortedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1026
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v1, v0, p1}, Landroid/support/v7/util/SortedList;->updateItemAt(ILjava/lang/Object;)V

    goto :goto_0

    .line 1028
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0, p1}, Landroid/support/v7/util/SortedList;->add(Ljava/lang/Object;)I

    .line 1031
    :goto_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0, p1}, Landroid/support/v7/util/SortedList;->add(Ljava/lang/Object;)I

    return-void
.end method

.method public addTopItem(Lru/rocketbank/core/network/model/FeedItem;)V
    .locals 2

    .line 1049
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->stickyItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1051
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->stickyItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1052
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->notifyItemChanged(I)V

    return-void

    .line 1054
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->stickyItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1055
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->stickyItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 1056
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 1061
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0}, Landroid/support/v7/util/SortedList;->clear()V

    .line 1063
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public clearTop()V
    .locals 1

    .line 1067
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    iget-object v0, v0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->feedView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    invoke-virtual {v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->requestLayout()V

    .line 1068
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCleanSize()I
    .locals 2

    .line 1003
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0}, Landroid/support/v7/util/SortedList;->size()I

    move-result v0

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->stickyItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemCount()I
    .locals 2

    .line 991
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->getCleanSize()I

    move-result v0

    .line 992
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->bottomItem:Lru/rocketbank/core/network/model/FeedItem;

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1008
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->bottomItem:Lru/rocketbank/core/network/model/FeedItem;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->getCleanSize()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1009
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->bottomItem:Lru/rocketbank/core/network/model/FeedItem;

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/FeedItem;->getType()I

    move-result p1

    return p1

    .line 1012
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->stickyItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    .line 1014
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->stickyItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/network/model/FeedItem;

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/FeedItem;->getType()I

    move-result p1

    return p1

    .line 1017
    :cond_1
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/support/v7/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/network/model/FeedItem;

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/FeedItem;->getType()I

    move-result p1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 837
    check-cast p1, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->onBindViewHolder(Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;I)V
    .locals 2

    .line 918
    invoke-direct {p0, p2}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->getItem(I)Lru/rocketbank/core/network/model/FeedItem;

    move-result-object v0

    .line 920
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->getItemViewType(I)I

    move-result p2

    const v1, -0x21124111

    if-eq p2, v1, :cond_1

    const/4 v1, 0x4

    if-eq p2, v1, :cond_0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 930
    :pswitch_0
    invoke-direct {p0, p1, v0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->onBindAction(Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;Lru/rocketbank/core/network/model/FeedItem;)V

    return-void

    .line 934
    :pswitch_1
    invoke-direct {p0, p1, v0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->onBindDelimiter(Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;Lru/rocketbank/core/network/model/FeedItem;)V

    :goto_0
    return-void

    .line 926
    :cond_0
    check-cast p1, Lru/rocketbank/r2d2/root/feed/viewholder/OperationViewHolder;

    invoke-direct {p0, p1, v0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->onBindOperation(Lru/rocketbank/r2d2/root/feed/viewholder/OperationViewHolder;Lru/rocketbank/core/network/model/FeedItem;)V

    return-void

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 837
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;
    .locals 2

    const v0, -0x21124111

    const/4 v1, 0x0

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/16 v0, 0xc

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    .line 893
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c00b2

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 894
    new-instance p2, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;

    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 873
    :pswitch_0
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c0119

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 874
    new-instance p2, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionViewHolder;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    invoke-direct {p2, v0, p1}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionViewHolder;-><init>(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;Landroid/view/View;)V

    goto :goto_0

    .line 885
    :pswitch_1
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c011d

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 886
    new-instance p2, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$DelimiterViewHolder;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    invoke-direct {p2, v0, p1}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$DelimiterViewHolder;-><init>(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;Landroid/view/View;)V

    goto :goto_0

    .line 879
    :cond_0
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c014a

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 880
    new-instance p2, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionCloseViewHolder;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    invoke-static {v1}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->access$100(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;)Lru/rocketbank/core/model/SafeAccount;

    move-result-object v1

    invoke-direct {p2, v0, p1, v1}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionCloseViewHolder;-><init>(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;Landroid/view/View;Lru/rocketbank/core/model/SafeAccount;)V

    goto :goto_0

    .line 867
    :cond_1
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c00b8

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 868
    new-instance p2, Lru/rocketbank/r2d2/root/feed/viewholder/OperationViewHolder;

    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/root/feed/viewholder/OperationViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 861
    :cond_2
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c014b

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 862
    new-instance p2, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$HeaderViewHolder;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    invoke-direct {p2, v0, p1}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$HeaderViewHolder;-><init>(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;Landroid/view/View;)V

    :goto_0
    return-object p2

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeBottom()V
    .locals 1

    const/4 v0, 0x0

    .line 1042
    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->bottomItem:Lru/rocketbank/core/network/model/FeedItem;

    .line 1044
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->getCleanSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1045
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->notifyItemRemoved(I)V

    return-void
.end method
