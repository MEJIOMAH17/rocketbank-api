.class Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "OperationTagActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FeedAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lru/rocketbank/r2d2/activities/operation/viewholder/OperationViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private bottomItem:Lru/rocketbank/core/network/model/FeedItem;

.field private final feedItems:Landroid/support/v7/util/SortedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/util/SortedList<",
            "Lru/rocketbank/core/network/model/FeedItem;",
            ">;"
        }
    .end annotation
.end field

.field private final selectedIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final sortedCallback:Landroid/support/v7/util/SortedList$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/util/SortedList$Callback<",
            "Lru/rocketbank/core/network/model/FeedItem;",
            ">;"
        }
    .end annotation
.end field

.field private final stickyItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/r2d2/activities/operation/Item;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;)V
    .locals 2

    .line 724
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->this$0:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 722
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->selectedIds:Ljava/util/Set;

    .line 729
    new-instance p1, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter$1;

    invoke-direct {p1, p0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter$1;-><init>(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->sortedCallback:Landroid/support/v7/util/SortedList$Callback;

    .line 725
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->stickyItem:Ljava/util/ArrayList;

    .line 726
    new-instance p1, Landroid/support/v7/util/SortedList;

    const-class v0, Lru/rocketbank/core/network/model/FeedItem;

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->sortedCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-direct {p1, v0, v1}, Landroid/support/v7/util/SortedList;-><init>(Ljava/lang/Class;Landroid/support/v7/util/SortedList$Callback;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    return-void
.end method

.method static synthetic access$1100(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 718
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->stickyItem:Ljava/util/ArrayList;

    return-object p0
.end method

.method private getItem(I)Lru/rocketbank/core/network/model/FeedItem;
    .locals 2

    .line 821
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->bottomItem:Lru/rocketbank/core/network/model/FeedItem;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->getCleanSize()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 822
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->bottomItem:Lru/rocketbank/core/network/model/FeedItem;

    return-object p1

    .line 825
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->stickyItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 830
    :cond_1
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/support/v7/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/network/model/FeedItem;

    return-object p1
.end method

.method private getOperation(I)Lru/rocketbank/core/model/AbstractOperation;
    .locals 1

    if-lez p1, :cond_0

    .line 893
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 894
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->getItem(I)Lru/rocketbank/core/network/model/FeedItem;

    move-result-object p1

    .line 895
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/FeedItem;->getOperation()Lru/rocketbank/core/model/AbstractOperation;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getTopItem(I)Lru/rocketbank/r2d2/activities/operation/Item;
    .locals 1

    .line 812
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->stickyItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 814
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->stickyItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/activities/operation/Item;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private onBindOperation(Lru/rocketbank/r2d2/activities/operation/OperationDetailViewHolder;Lru/rocketbank/core/network/model/FeedItem;Lru/rocketbank/core/model/dto/operations/Operation;)V
    .locals 3

    .line 902
    invoke-virtual {p3}, Lru/rocketbank/core/model/dto/operations/Operation;->getMoney()Lru/rocketbank/core/model/MoneyData;

    move-result-object v0

    .line 904
    invoke-virtual {p3}, Lru/rocketbank/core/model/dto/operations/Operation;->getComment()Ljava/lang/String;

    move-result-object v1

    .line 905
    invoke-virtual {p1, v1}, Lru/rocketbank/r2d2/activities/operation/OperationDetailViewHolder;->setContent(Ljava/lang/String;)V

    .line 906
    invoke-virtual {p3}, Lru/rocketbank/core/model/dto/operations/Operation;->getDetails()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lru/rocketbank/r2d2/activities/operation/OperationDetailViewHolder;->setName(Ljava/lang/String;)V

    .line 907
    invoke-virtual {p1, p3, p2}, Lru/rocketbank/r2d2/activities/operation/OperationDetailViewHolder;->setOperation(Lru/rocketbank/core/model/dto/operations/Operation;Lru/rocketbank/core/network/model/FeedItem;)V

    .line 908
    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/operation/OperationDetailViewHolder;->setNoAction()V

    .line 910
    invoke-virtual {p3}, Lru/rocketbank/core/model/dto/operations/Operation;->isRocketRubleOperation()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 911
    iget-object p2, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->this$0:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;

    iget-object p2, p2, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->operationFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    invoke-virtual {v0}, Lru/rocketbank/core/model/MoneyData;->getAmount()D

    move-result-wide v1

    double-to-float v1, v1

    float-to-double v1, v1

    invoke-virtual {v0}, Lru/rocketbank/core/model/MoneyData;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v2, v0, p3}, Lru/rocketbank/core/utils/MoneyFormatter;->formatAmount(DLjava/lang/String;Z)Lru/rocketbank/core/utils/MoneyFormatter$FormattedAmount;

    move-result-object p2

    .line 912
    invoke-virtual {p2}, Lru/rocketbank/core/utils/MoneyFormatter$FormattedAmount;->getAmountString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lru/rocketbank/r2d2/activities/operation/OperationDetailViewHolder;->setAmount(Ljava/lang/String;)V

    .line 913
    invoke-virtual {p2}, Lru/rocketbank/core/utils/MoneyFormatter$FormattedAmount;->getSuffix()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/activities/operation/OperationDetailViewHolder;->setRocketrubles(Ljava/lang/String;)V

    return-void

    .line 915
    :cond_0
    iget-object p2, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->this$0:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;

    iget-object p2, p2, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->operationFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    invoke-virtual {v0}, Lru/rocketbank/core/model/MoneyData;->getAmount()D

    move-result-wide v1

    double-to-float v1, v1

    float-to-double v1, v1

    invoke-virtual {v0}, Lru/rocketbank/core/model/MoneyData;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v2, v0, p3}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/activities/operation/OperationDetailViewHolder;->setAmount(Ljava/lang/String;)V

    return-void
.end method

.method private updateStat(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$StatViewHolder;)V
    .locals 8

    .line 864
    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$StatViewHolder;->resetAll()V

    .line 866
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->this$0:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->access$400(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;)Lru/rocketbank/core/network/model/TagAnalytics;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 870
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->this$0:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->access$400(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;)Lru/rocketbank/core/network/model/TagAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/network/model/TagAnalytics;->getAnalytics()Lru/rocketbank/core/network/model/TagAnalytics$Analytics;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/network/model/TagAnalytics$Analytics;->getTag()Lru/rocketbank/core/network/model/TagAnalytics$Tag;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/network/model/TagAnalytics$Tag;->getMonths()Ljava/util/ArrayList;

    move-result-object v0

    .line 872
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 874
    iget-object v2, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->this$0:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;

    invoke-static {v2}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->access$900(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;)Z

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x2

    if-eqz v2, :cond_1

    .line 875
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    .line 876
    invoke-static {v1}, Lru/rocketbank/r2d2/utils/CalendarUtils;->copy(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {p1, v2, v5}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$StatViewHolder;->addMonth(Ljava/lang/Float;Ljava/util/Calendar;)V

    .line 877
    invoke-virtual {v1, v4, v3}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    .line 880
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_2

    .line 882
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-static {v1}, Lru/rocketbank/r2d2/utils/CalendarUtils;->copy(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$StatViewHolder;->addMonth(Ljava/lang/Float;Ljava/util/Calendar;)V

    .line 883
    invoke-virtual {v1, v4, v3}, Ljava/util/Calendar;->add(II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 887
    :cond_2
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->this$0:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->access$400(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;)Lru/rocketbank/core/network/model/TagAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/network/model/TagAnalytics;->getAnalytics()Lru/rocketbank/core/network/model/TagAnalytics$Analytics;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/network/model/TagAnalytics$Analytics;->getTag()Lru/rocketbank/core/network/model/TagAnalytics$Tag;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/network/model/TagAnalytics$Tag;->getTotal()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$StatViewHolder;->addForAllTime(Ljava/lang/Float;)V

    .line 888
    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$StatViewHolder;->addMode()V

    return-void
.end method


# virtual methods
.method public addBottom(Lru/rocketbank/core/network/model/FeedItem;)V
    .locals 0

    .line 972
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->bottomItem:Lru/rocketbank/core/network/model/FeedItem;

    .line 974
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->getCleanSize()I

    move-result p1

    .line 975
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public addItem(Lru/rocketbank/core/network/model/FeedItem;)V
    .locals 2

    .line 962
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0, p1}, Landroid/support/v7/util/SortedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 964
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v1, v0, p1}, Landroid/support/v7/util/SortedList;->updateItemAt(ILjava/lang/Object;)V

    return-void

    .line 966
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0, p1}, Landroid/support/v7/util/SortedList;->add(Ljava/lang/Object;)I

    return-void
.end method

.method public addTopItem(Lru/rocketbank/r2d2/activities/operation/Item;)V
    .locals 2

    .line 988
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->stickyItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 990
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->stickyItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 991
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->notifyItemChanged(I)V

    return-void

    .line 993
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->stickyItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 994
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->stickyItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 995
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public changeItem(Lru/rocketbank/core/network/model/FeedItem;)V
    .locals 2

    .line 1039
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0, p1}, Landroid/support/v7/util/SortedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 1041
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v1, v0, p1}, Landroid/support/v7/util/SortedList;->updateItemAt(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .line 1018
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0}, Landroid/support/v7/util/SortedList;->clear()V

    .line 1019
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->stickyItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1021
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public clearTop()V
    .locals 1

    .line 1026
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->stickyItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1027
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->notifyDataSetChanged()V

    .line 1028
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->this$0:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;

    iget-object v0, v0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->operationView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    invoke-virtual {v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->requestLayout()V

    return-void
.end method

.method public getCleanSize()I
    .locals 2

    .line 934
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0}, Landroid/support/v7/util/SortedList;->size()I

    move-result v0

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->stickyItem:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemCount()I
    .locals 2

    .line 922
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->getCleanSize()I

    move-result v0

    .line 923
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->bottomItem:Lru/rocketbank/core/network/model/FeedItem;

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 944
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->bottomItem:Lru/rocketbank/core/network/model/FeedItem;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->getCleanSize()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 945
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->bottomItem:Lru/rocketbank/core/network/model/FeedItem;

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/FeedItem;->getType()I

    move-result p1

    return p1

    .line 948
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->stickyItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    .line 950
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->stickyItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/activities/operation/Item;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/operation/Item;->getType()I

    move-result p1

    return p1

    .line 953
    :cond_1
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->getItem(I)Lru/rocketbank/core/network/model/FeedItem;

    move-result-object p1

    .line 954
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/FeedItem;->getType()I

    move-result p1

    const/16 v0, 0x10

    if-ne p1, v0, :cond_2

    const/16 p1, 0xa

    return p1

    :cond_2
    const/16 p1, 0x9

    return p1
.end method

.method public isTopOperation(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 938
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->stickyItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 718
    check-cast p1, Lru/rocketbank/r2d2/activities/operation/viewholder/OperationViewHolder;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->onBindViewHolder(Lru/rocketbank/r2d2/activities/operation/viewholder/OperationViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lru/rocketbank/r2d2/activities/operation/viewholder/OperationViewHolder;I)V
    .locals 2

    .line 835
    invoke-direct {p0, p2}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->getItem(I)Lru/rocketbank/core/network/model/FeedItem;

    move-result-object v0

    .line 837
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->getItemViewType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 850
    :pswitch_1
    check-cast p1, Lru/rocketbank/r2d2/activities/operation/OperationDetailViewHolder;

    .line 851
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->stickyItem:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne p2, v1, :cond_0

    .line 852
    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/operation/OperationDetailViewHolder;->showFirst()V

    goto :goto_0

    .line 854
    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/operation/OperationDetailViewHolder;->hideDayStart()V

    .line 857
    :goto_0
    invoke-virtual {v0}, Lru/rocketbank/core/network/model/FeedItem;->getOperation()Lru/rocketbank/core/model/AbstractOperation;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/model/dto/operations/Operation;

    invoke-direct {p0, p1, v0, p2}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->onBindOperation(Lru/rocketbank/r2d2/activities/operation/OperationDetailViewHolder;Lru/rocketbank/core/network/model/FeedItem;Lru/rocketbank/core/model/dto/operations/Operation;)V

    goto :goto_1

    .line 845
    :pswitch_2
    check-cast p1, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$StatViewHolder;

    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->updateStat(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$StatViewHolder;)V

    return-void

    .line 840
    :pswitch_3
    check-cast p1, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$BarViewHolder;

    .line 841
    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$BarViewHolder;->bind()V

    return-void

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 718
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lru/rocketbank/r2d2/activities/operation/viewholder/OperationViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lru/rocketbank/r2d2/activities/operation/viewholder/OperationViewHolder;
    .locals 2

    .line 772
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    const p2, 0x7f0c00bc

    .line 796
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 797
    new-instance p2, Lru/rocketbank/r2d2/activities/operation/OperationDetailViewHolder;

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->this$0:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;

    invoke-direct {p2, v0, p1}, Lru/rocketbank/r2d2/activities/operation/OperationDetailViewHolder;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    return-object p2

    :pswitch_1
    const p2, 0x7f0c00b8

    .line 791
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 792
    new-instance p2, Lru/rocketbank/r2d2/activities/operation/OperationDetailViewHolder;

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->this$0:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;

    invoke-direct {p2, v0, p1}, Lru/rocketbank/r2d2/activities/operation/OperationDetailViewHolder;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    return-object p2

    :pswitch_2
    const p2, 0x7f0c013a

    .line 786
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 787
    new-instance p2, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$StatViewHolder;

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->this$0:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;

    invoke-direct {p2, v0, p1}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$StatViewHolder;-><init>(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;Landroid/view/View;)V

    return-object p2

    :pswitch_3
    const p2, 0x7f0c0130

    .line 781
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 782
    new-instance p2, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$BarViewHolder;

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->this$0:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;

    invoke-direct {p2, v0, p1}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$BarViewHolder;-><init>(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;Landroid/view/View;)V

    return-object p2

    :cond_0
    const p2, 0x7f0c014b

    .line 776
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 777
    new-instance p2, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$HeaderViewHolder;

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->this$0:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;

    invoke-direct {p2, v0, p1}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$HeaderViewHolder;-><init>(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;Landroid/view/View;)V

    return-object p2

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeBottom()V
    .locals 1

    const/4 v0, 0x0

    .line 980
    iput-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->bottomItem:Lru/rocketbank/core/network/model/FeedItem;

    .line 982
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->getCleanSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 983
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->notifyItemRemoved(I)V

    return-void
.end method

.method public removeItem(Lru/rocketbank/core/network/model/FeedItem;)V
    .locals 4

    .line 1001
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->stickyItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1002
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->stickyItem:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1004
    iget-object v3, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->stickyItem:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1005
    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->notifyItemRemoved(I)V

    .line 1008
    :cond_0
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v1, p1}, Landroid/support/v7/util/SortedList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-eq p1, v2, :cond_1

    .line 1010
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v1, p1}, Landroid/support/v7/util/SortedList;->removeItemAt(I)Ljava/lang/Object;

    add-int/2addr p1, v0

    .line 1011
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->notifyItemRemoved(I)V

    :cond_1
    return-void
.end method
