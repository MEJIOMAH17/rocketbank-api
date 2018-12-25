.class final Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder$addMerchant$1;
.super Ljava/lang/Object;
.source "MonthCashBackViewHolder.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->addMerchant(Lru/rocketbank/core/model/dto/operations/Merchant;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $clickView:Landroid/view/View;

.field final synthetic $merchant:Lru/rocketbank/core/model/dto/operations/Merchant;

.field final synthetic $merchantRevealIconView:Landroid/view/View;

.field final synthetic $merchantView:Landroid/view/View;

.field final synthetic this$0:Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lru/rocketbank/core/model/dto/operations/Merchant;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder$addMerchant$1;->this$0:Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder$addMerchant$1;->$clickView:Landroid/view/View;

    iput-object p3, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder$addMerchant$1;->$merchantView:Landroid/view/View;

    iput-object p4, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder$addMerchant$1;->$merchantRevealIconView:Landroid/view/View;

    iput-object p5, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder$addMerchant$1;->$merchant:Lru/rocketbank/core/model/dto/operations/Merchant;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 75
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder$addMerchant$1;->this$0:Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;

    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder$addMerchant$1;->$clickView:Landroid/view/View;

    const-string v1, "clickView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder$addMerchant$1;->$merchantView:Landroid/view/View;

    const-string v2, "merchantView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder$addMerchant$1;->$merchantRevealIconView:Landroid/view/View;

    const-string v3, "merchantRevealIconView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder$addMerchant$1;->$merchant:Lru/rocketbank/core/model/dto/operations/Merchant;

    invoke-static {p1, v0, v1, v2, v3}, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->access$onClickMerchant(Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lru/rocketbank/core/model/dto/operations/Merchant;)V

    return-void
.end method
