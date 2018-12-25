.class final Lru/rocketbank/r2d2/root/card/CardDetailFragment$refreshAdapter$click$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CardDetailFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/card/CardDetailFragment;->refreshAdapter(Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;Lru/rocketbank/r2d2/root/card/CardDetailAdapter;)V
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
.field final synthetic $spParams:Lru/rocketbank/r2d2/root/card/binding/SPayParameters;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/card/binding/SPayParameters;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment$refreshAdapter$click$1;->$spParams:Lru/rocketbank/r2d2/root/card/binding/SPayParameters;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 45
    check-cast p1, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/card/CardDetailFragment$refreshAdapter$click$1;->invoke(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;)V
    .locals 0

    .line 187
    iget-object p1, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment$refreshAdapter$click$1;->$spParams:Lru/rocketbank/r2d2/root/card/binding/SPayParameters;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/card/binding/SPayParameters;->getClickFun()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
