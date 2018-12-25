.class final Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder$addDiscount$1;
.super Ljava/lang/Object;
.source "NonSelectedHolder.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->addDiscount(Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $clickView:Landroid/view/View;

.field final synthetic $dsc:Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;

.field final synthetic $merchantRevealIconView:Landroid/view/View;

.field final synthetic this$0:Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;Landroid/view/View;Landroid/view/View;Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder$addDiscount$1;->this$0:Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;

    iput-object p2, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder$addDiscount$1;->$clickView:Landroid/view/View;

    iput-object p3, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder$addDiscount$1;->$merchantRevealIconView:Landroid/view/View;

    iput-object p4, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder$addDiscount$1;->$dsc:Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 93
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder$addDiscount$1;->this$0:Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;

    iget-object v1, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder$addDiscount$1;->$clickView:Landroid/view/View;

    const-string v2, "clickView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "v"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder$addDiscount$1;->$merchantRevealIconView:Landroid/view/View;

    const-string v3, "merchantRevealIconView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder$addDiscount$1;->$dsc:Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;

    invoke-virtual {v3}, Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;->getMerchant()Lru/rocketbank/core/model/dto/operations/Merchant;

    move-result-object v3

    const-string v4, "dsc.merchant"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, p1, v2, v3}, Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;->access$onClickMerchant(Lru/rocketbank/r2d2/adapters/discounts/holders/NonSelectedHolder;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lru/rocketbank/core/model/dto/operations/Merchant;)V

    return-void
.end method
