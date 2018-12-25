.class final Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity$fillFullAdapter$$inlined$let$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DetailRocketrubleOperationActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity;->fillFullAdapter(Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $adapter$inlined:Lru/rocketbank/r2d2/root/operation/OperationAdapter;

.field final synthetic $operation$inlined:Lru/rocketbank/core/model/dto/operations/Operation;

.field final synthetic $viewInputData$inlined:Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;

.field final synthetic this$0:Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/operation/OperationAdapter;Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity;Lru/rocketbank/core/model/dto/operations/Operation;Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity$fillFullAdapter$$inlined$let$lambda$1;->$adapter$inlined:Lru/rocketbank/r2d2/root/operation/OperationAdapter;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity$fillFullAdapter$$inlined$let$lambda$1;->this$0:Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity;

    iput-object p3, p0, Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity$fillFullAdapter$$inlined$let$lambda$1;->$operation$inlined:Lru/rocketbank/core/model/dto/operations/Operation;

    iput-object p4, p0, Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity$fillFullAdapter$$inlined$let$lambda$1;->$viewInputData$inlined:Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity$fillFullAdapter$$inlined$let$lambda$1;->invoke(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;)V
    .locals 1

    .line 75
    sget-object p1, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->Companion:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity$Companion;

    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity$fillFullAdapter$$inlined$let$lambda$1;->this$0:Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity$Companion;->startActivity(Landroid/content/Context;)V

    return-void
.end method
