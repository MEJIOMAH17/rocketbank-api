.class Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter$ViewHolder$1;
.super Ljava/lang/Object;
.source "RecentTransferFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter$ViewHolder;-><init>(Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter$ViewHolder;

.field final synthetic val$itemView:Landroid/view/View;

.field final synthetic val$this$1:Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter$ViewHolder;Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter;Landroid/view/View;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter$ViewHolder$1;->this$2:Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter$ViewHolder;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter$ViewHolder$1;->val$this$1:Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter;

    iput-object p3, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter$ViewHolder$1;->val$itemView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 229
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter$ViewHolder$1;->this$2:Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter$ViewHolder;

    iget-object p1, p1, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter$ViewHolder;->this$1:Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter;->access$500(Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter;)Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$ClickMoreListener;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter$ViewHolder$1;->val$itemView:Landroid/view/View;

    invoke-interface {p1, v0}, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$ClickMoreListener;->onShowDialogRequested(Landroid/view/View;)V

    return-void
.end method
