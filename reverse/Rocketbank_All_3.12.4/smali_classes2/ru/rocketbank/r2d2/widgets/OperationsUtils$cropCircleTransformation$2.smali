.class final Lru/rocketbank/r2d2/widgets/OperationsUtils$cropCircleTransformation$2;
.super Lkotlin/jvm/internal/Lambda;
.source "OperationsUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/widgets/OperationsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljp/wasabeef/glide/transformations/CropCircleTransformation;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lru/rocketbank/r2d2/widgets/OperationsUtils$cropCircleTransformation$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/rocketbank/r2d2/widgets/OperationsUtils$cropCircleTransformation$2;

    invoke-direct {v0}, Lru/rocketbank/r2d2/widgets/OperationsUtils$cropCircleTransformation$2;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/widgets/OperationsUtils$cropCircleTransformation$2;->INSTANCE:Lru/rocketbank/r2d2/widgets/OperationsUtils$cropCircleTransformation$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/OperationsUtils$cropCircleTransformation$2;->invoke()Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljp/wasabeef/glide/transformations/CropCircleTransformation;
    .locals 2

    .line 40
    new-instance v0, Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    sget-object v1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ljp/wasabeef/glide/transformations/CropCircleTransformation;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
