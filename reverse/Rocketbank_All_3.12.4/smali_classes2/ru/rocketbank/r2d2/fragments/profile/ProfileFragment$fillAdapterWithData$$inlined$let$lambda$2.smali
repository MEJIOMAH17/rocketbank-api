.class final Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$fillAdapterWithData$$inlined$let$lambda$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ProfileFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->fillAdapterWithData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;",
        "Ljava/lang/Boolean;",
        "Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$fillAdapterWithData$$inlined$let$lambda$2;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 88
    check-cast p1, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p3, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$fillAdapterWithData$$inlined$let$lambda$2;->invoke(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;ZLru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;ZLru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;)V
    .locals 0

    .line 467
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$fillAdapterWithData$$inlined$let$lambda$2;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-static {p1, p2}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->access$switch3MinInterval(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;Z)V

    return-void
.end method
