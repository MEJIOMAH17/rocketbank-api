.class final Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$onChooseDate$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AnalyticsBaseFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->onChooseDate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$onChooseDate$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$onChooseDate$1;->invoke(II)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(II)V
    .locals 2

    .line 238
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$onChooseDate$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->getCurrentDateTime()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 239
    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$onChooseDate$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->getCurrentDateTime()Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 240
    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$onChooseDate$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;

    iget-object p2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$onChooseDate$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;

    invoke-virtual {p2}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->getCurrentDateTime()Ljava/util/Calendar;

    move-result-object p2

    invoke-static {p1, p2}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->access$executeRequest(Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;Ljava/util/Calendar;)V

    return-void
.end method
