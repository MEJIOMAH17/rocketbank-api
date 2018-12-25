.class final Lru/rocketbank/r2d2/root/card/CardDetailFragment$lockCard$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CardDetailFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/card/CardDetailFragment;->lockCard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCardDetailFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CardDetailFragment.kt\nru/rocketbank/r2d2/root/card/CardDetailFragment$lockCard$2\n*L\n1#1,494:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/card/CardDetailFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/card/CardDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment$lockCard$2;->this$0:Lru/rocketbank/r2d2/root/card/CardDetailFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 45
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/card/CardDetailFragment$lockCard$2;->invoke(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 2

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment$lockCard$2;->this$0:Lru/rocketbank/r2d2/root/card/CardDetailFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->access$hideSpinner(Lru/rocketbank/r2d2/root/card/CardDetailFragment;)V

    .line 394
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment$lockCard$2;->this$0:Lru/rocketbank/r2d2/root/card/CardDetailFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 395
    check-cast p1, Ljava/lang/CharSequence;

    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Lru/rocketbank/core/widgets/RocketSnackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lru/rocketbank/core/widgets/RocketSnackbar;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/widgets/RocketSnackbar;->show()V

    return-void

    :cond_0
    return-void
.end method
