.class final Lru/rocketbank/r2d2/activities/card/CardLimitActivity$cashAbroadOperationListener$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CardLimitActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/card/CardLimitActivity$cashAbroadOperationListener$1;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $isChecked:Z

.field final synthetic this$0:Lru/rocketbank/r2d2/activities/card/CardLimitActivity$cashAbroadOperationListener$1;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/card/CardLimitActivity$cashAbroadOperationListener$1;Z)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$cashAbroadOperationListener$1$1;->this$0:Lru/rocketbank/r2d2/activities/card/CardLimitActivity$cashAbroadOperationListener$1;

    iput-boolean p2, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$cashAbroadOperationListener$1$1;->$isChecked:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$cashAbroadOperationListener$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 154
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$cashAbroadOperationListener$1$1;->this$0:Lru/rocketbank/r2d2/activities/card/CardLimitActivity$cashAbroadOperationListener$1;

    iget-object v0, v0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$cashAbroadOperationListener$1;->this$0:Lru/rocketbank/r2d2/activities/card/CardLimitActivity;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->getCurrentLimits()Lru/rocketbank/core/network/model/SexyLimits;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$cashAbroadOperationListener$1$1;->$isChecked:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/network/model/SexyLimits;->setAtm_abroad(Z)V

    .line 155
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$cashAbroadOperationListener$1$1;->this$0:Lru/rocketbank/r2d2/activities/card/CardLimitActivity$cashAbroadOperationListener$1;

    iget-object v0, v0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$cashAbroadOperationListener$1;->this$0:Lru/rocketbank/r2d2/activities/card/CardLimitActivity;

    iget-boolean v1, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$cashAbroadOperationListener$1$1;->$isChecked:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->setCashAbroadOperation(Z)V

    return-void
.end method
