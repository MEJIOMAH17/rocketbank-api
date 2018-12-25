.class public Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "RecentTransferFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private array:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/TransfersModelUrFiz;",
            ">;"
        }
    .end annotation
.end field

.field private clickMoreListener:Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$ClickMoreListener;

.field private context:Landroid/content/Context;

.field private layoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;Landroid/content/Context;Ljava/util/ArrayList;Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$ClickMoreListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/TransfersModelUrFiz;",
            ">;",
            "Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$ClickMoreListener;",
            ")V"
        }
    .end annotation

    .line 188
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 189
    iput-object p3, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter;->array:Ljava/util/ArrayList;

    .line 190
    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter;->context:Landroid/content/Context;

    .line 191
    iput-object p4, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter;->clickMoreListener:Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$ClickMoreListener;

    const-string p1, "layout_inflater"

    .line 193
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter;->layoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$500(Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter;)Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$ClickMoreListener;
    .locals 0

    .line 181
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter;->clickMoreListener:Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$ClickMoreListener;

    return-object p0
.end method

.method static synthetic access$600(Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter;)Landroid/content/Context;
    .locals 0

    .line 181
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter;->context:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 209
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter;->array:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 181
    check-cast p1, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter;->onBindViewHolder(Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter$ViewHolder;I)V
    .locals 1

    .line 204
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter;->array:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/network/model/TransfersModelUrFiz;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter$ViewHolder;->bind(Lru/rocketbank/core/network/model/TransfersModelUrFiz;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 181
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter$ViewHolder;
    .locals 2

    .line 198
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c0152

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 199
    new-instance p2, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter$ViewHolder;-><init>(Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter;Landroid/view/View;)V

    return-object p2
.end method
