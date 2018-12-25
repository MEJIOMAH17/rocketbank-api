.class final Lru/rocketbank/r2d2/activities/safe/TransferActivity$registerTextUpdate$1$1;
.super Lkotlin/jvm/internal/FunctionReference;
.source "TransferActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/safe/TransferActivity$registerTextUpdate$1;->call(Lru/rocketbank/core/network/model/MoveMoneyBody;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReference;",
        "Lkotlin/jvm/functions/Function2<",
        "Lru/rocketbank/r2d2/activities/safe/TransferActivity;",
        "Lru/rocketbank/core/network/model/RefillCardResponse;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lru/rocketbank/r2d2/activities/safe/TransferActivity$registerTextUpdate$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/rocketbank/r2d2/activities/safe/TransferActivity$registerTextUpdate$1$1;

    invoke-direct {v0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity$registerTextUpdate$1$1;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/activities/safe/TransferActivity$registerTextUpdate$1$1;->INSTANCE:Lru/rocketbank/r2d2/activities/safe/TransferActivity$registerTextUpdate$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/FunctionReference;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "onDetailMoneyResult"

    return-object v0
.end method

.method public final getOwner()Lkotlin/reflect/KDeclarationContainer;
    .locals 1

    const-class v0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v0

    return-object v0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 1

    const-string v0, "onDetailMoneyResult(Lru/rocketbank/core/network/model/RefillCardResponse;)V"

    return-object v0
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 61
    check-cast p1, Lru/rocketbank/r2d2/activities/safe/TransferActivity;

    check-cast p2, Lru/rocketbank/core/network/model/RefillCardResponse;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/activities/safe/TransferActivity$registerTextUpdate$1$1;->invoke(Lru/rocketbank/r2d2/activities/safe/TransferActivity;Lru/rocketbank/core/network/model/RefillCardResponse;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lru/rocketbank/r2d2/activities/safe/TransferActivity;Lru/rocketbank/core/network/model/RefillCardResponse;)V
    .locals 1

    const-string v0, "p1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 499
    invoke-static {p1, p2}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->access$onDetailMoneyResult(Lru/rocketbank/r2d2/activities/safe/TransferActivity;Lru/rocketbank/core/network/model/RefillCardResponse;)V

    return-void
.end method
