.class final Lru/rocketbank/r2d2/adapters/ParallaxAdapter$equalMethod$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ParallaxAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


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
        "Lkotlin/jvm/functions/Function2<",
        "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;",
        "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lru/rocketbank/r2d2/adapters/ParallaxAdapter$equalMethod$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter$equalMethod$1;

    invoke-direct {v0}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter$equalMethod$1;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter$equalMethod$1;->INSTANCE:Lru/rocketbank/r2d2/adapters/ParallaxAdapter$equalMethod$1;

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

    .line 25
    check-cast p1, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    check-cast p2, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter$equalMethod$1;->invoke(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;)Z
    .locals 1

    const-string v0, "first"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "second"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->getFeedItem()Lru/rocketbank/core/network/model/FeedItem;

    move-result-object p1

    .line 48
    invoke-virtual {p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->getFeedItem()Lru/rocketbank/core/network/model/FeedItem;

    move-result-object p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 51
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
