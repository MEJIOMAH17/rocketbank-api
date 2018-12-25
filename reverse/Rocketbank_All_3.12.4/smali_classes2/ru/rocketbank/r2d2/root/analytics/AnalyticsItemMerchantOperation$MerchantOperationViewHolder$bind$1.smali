.class final Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation$MerchantOperationViewHolder$bind$1;
.super Ljava/lang/Object;
.source "AnalyticsAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation$MerchantOperationViewHolder;->bind(Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $analyticsItem:Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation$MerchantOperationViewHolder$bind$1;->$analyticsItem:Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 179
    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation$MerchantOperationViewHolder$bind$1;->$analyticsItem:Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;->getOnClick()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method
