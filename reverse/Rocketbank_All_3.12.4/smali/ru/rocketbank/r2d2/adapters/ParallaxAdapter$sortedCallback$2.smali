.class final Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ParallaxAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/adapters/ParallaxAdapter;-><init>(Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2$1;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/adapters/ParallaxAdapter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/adapters/ParallaxAdapter;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2;->this$0:Lru/rocketbank/r2d2/adapters/ParallaxAdapter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2;->invoke()Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2$1;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2$1;
    .locals 1

    .line 58
    new-instance v0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2$1;-><init>(Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2;)V

    return-object v0
.end method
