.class final Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "RocketRoubleFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 150
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->access$getRocketRoubleModel$p(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;)Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->access$getRocketRoubleModel$p(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;)Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;->isFullMoneyMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;->setFullMoneyMode(Z)V

    .line 151
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->access$showBalance(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;)V

    return-void
.end method
