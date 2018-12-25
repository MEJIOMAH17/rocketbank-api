.class final Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switchJointAnalytics$2;
.super Ljava/lang/Object;
.source "ProfileFragment.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->switchJointAnalytics(IZLru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsProfileViewHolder;)V
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
.field final synthetic $viewHolder:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsProfileViewHolder;

.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsProfileViewHolder;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switchJointAnalytics$2;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switchJointAnalytics$2;->$viewHolder:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsProfileViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 88
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switchJointAnalytics$2;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final call(Ljava/lang/Throwable;)V
    .locals 1

    .line 699
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switchJointAnalytics$2;->$viewHolder:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsProfileViewHolder;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsProfileViewHolder;->setSwitchEnabled(Z)V

    .line 700
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switchJointAnalytics$2;->$viewHolder:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsProfileViewHolder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsProfileViewHolder;->setInProgress(Z)V

    .line 701
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switchJointAnalytics$2;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->access$getAuthorization$p(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)Lru/rocketbank/core/user/Authorization;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/user/Authorization;->refreshBackgroundProfile()V

    return-void
.end method
