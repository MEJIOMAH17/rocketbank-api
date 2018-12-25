.class final Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity$updateBin$2;
.super Lkotlin/jvm/internal/Lambda;
.source "BaseAmountActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->updateBin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity$updateBin$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity$updateBin$2;

    invoke-direct {v0}, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity$updateBin$2;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity$updateBin$2;->INSTANCE:Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity$updateBin$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p1, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;

    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity$updateBin$2;->invoke(Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->onBinResponseFailed(Ljava/lang/Throwable;)V

    return-void
.end method
