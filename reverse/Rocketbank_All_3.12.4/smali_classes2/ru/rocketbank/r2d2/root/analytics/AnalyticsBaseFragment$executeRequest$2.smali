.class final Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$executeRequest$2;
.super Ljava/lang/Object;
.source "AnalyticsBaseFragment.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->executeRequest(Ljava/util/Calendar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$executeRequest$2;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$executeRequest$2;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final call(Ljava/lang/Throwable;)V
    .locals 0

    .line 154
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 155
    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$executeRequest$2;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->access$hideProgress(Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;)V

    return-void
.end method
