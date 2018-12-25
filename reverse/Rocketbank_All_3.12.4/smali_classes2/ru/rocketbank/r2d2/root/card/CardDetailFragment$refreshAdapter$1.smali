.class final Lru/rocketbank/r2d2/root/card/CardDetailFragment$refreshAdapter$1;
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
.field final synthetic $androidPayParameters:Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;

.field final synthetic this$0:Lru/rocketbank/r2d2/root/card/CardDetailFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/card/CardDetailFragment;Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment$refreshAdapter$1;->this$0:Lru/rocketbank/r2d2/root/card/CardDetailFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment$refreshAdapter$1;->$androidPayParameters:Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 45
    check-cast p1, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/card/CardDetailFragment$refreshAdapter$1;->invoke(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;)V
    .locals 1

    .line 194
    sget-object p1, Lru/rocketbank/core/pay/google/AndroidPayUtils;->INSTANCE:Lru/rocketbank/core/pay/google/AndroidPayUtils;

    iget-object p1, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment$refreshAdapter$1;->this$0:Lru/rocketbank/r2d2/root/card/CardDetailFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v0, "context!!"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment$refreshAdapter$1;->$androidPayParameters:Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;->getClickFun()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-static {p1, v0}, Lru/rocketbank/core/pay/google/AndroidPayUtils;->runCodeOrOpenGooglePlay(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
