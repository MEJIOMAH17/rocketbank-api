.class final Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$executeRequest$1;
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
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic $jointIds:[I

.field final synthetic this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;[I)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$executeRequest$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$executeRequest$1;->$jointIds:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Landroid/os/Parcelable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$executeRequest$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->access$setLatestAnalyticsResponseData$p(Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;Landroid/os/Parcelable;)V

    .line 149
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$executeRequest$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$executeRequest$1;->$jointIds:[I

    invoke-static {v0, v1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->access$setLatestJointIds$p(Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;[I)V

    .line 150
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$executeRequest$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->processData$default(Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;Landroid/os/Parcelable;Ljava/util/Calendar;ILjava/lang/Object;)V

    .line 151
    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$executeRequest$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->access$hideProgress(Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;)V

    return-void
.end method

.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$executeRequest$1;->call(Landroid/os/Parcelable;)V

    return-void
.end method
