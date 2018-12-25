.class final Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment$onViewCreated$2;
.super Ljava/lang/Object;
.source "RocketRoubleFragment.kt"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment$onViewCreated$2;->this$0:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRefresh()V
    .locals 1

    .line 154
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment$onViewCreated$2;->this$0:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->access$refreshUserData(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;)V

    return-void
.end method
