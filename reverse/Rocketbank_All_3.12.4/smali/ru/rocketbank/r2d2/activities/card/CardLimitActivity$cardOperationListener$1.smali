.class final Lru/rocketbank/r2d2/activities/card/CardLimitActivity$cardOperationListener$1;
.super Ljava/lang/Object;
.source "CardLimitActivity.kt"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/card/CardLimitActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/card/CardLimitActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/card/CardLimitActivity;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$cardOperationListener$1;->this$0:Lru/rocketbank/r2d2/activities/card/CardLimitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 171
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$cardOperationListener$1;->this$0:Lru/rocketbank/r2d2/activities/card/CardLimitActivity;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->getCurrentLimits()Lru/rocketbank/core/network/model/SexyLimits;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lru/rocketbank/core/network/model/SexyLimits;->setPos(Z)V

    .line 173
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$cardOperationListener$1;->this$0:Lru/rocketbank/r2d2/activities/card/CardLimitActivity;

    new-instance v0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$cardOperationListener$1$1;

    invoke-direct {v0, p0, p2}, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$cardOperationListener$1$1;-><init>(Lru/rocketbank/r2d2/activities/card/CardLimitActivity$cardOperationListener$1;Z)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->access$updateLimits(Lru/rocketbank/r2d2/activities/card/CardLimitActivity;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
