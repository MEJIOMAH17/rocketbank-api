.class final Lru/rocketbank/core/model/RocketDepositModel$colorValue$2;
.super Lkotlin/jvm/internal/Lambda;
.source "RocketDepositModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/model/RocketDepositModel;-><init>(Landroid/os/Parcel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/model/RocketDepositModel;


# direct methods
.method constructor <init>(Lru/rocketbank/core/model/RocketDepositModel;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/model/RocketDepositModel$colorValue$2;->this$0:Lru/rocketbank/core/model/RocketDepositModel;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()I
    .locals 1

    .line 135
    iget-object v0, p0, Lru/rocketbank/core/model/RocketDepositModel$colorValue$2;->this$0:Lru/rocketbank/core/model/RocketDepositModel;

    invoke-virtual {v0}, Lru/rocketbank/core/model/RocketDepositModel;->parseColor()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lru/rocketbank/core/model/RocketDepositModel$colorValue$2;->invoke()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
