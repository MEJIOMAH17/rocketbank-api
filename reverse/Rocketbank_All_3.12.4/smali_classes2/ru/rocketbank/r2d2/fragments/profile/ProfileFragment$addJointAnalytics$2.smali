.class final Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$addJointAnalytics$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ProfileFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->addJointAnalytics()V
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

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$addJointAnalytics$2;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

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

    invoke-virtual {p0, p1, p2, p3}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$addJointAnalytics$2;->invoke(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;ZLru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;ZLru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;)V
    .locals 1

    .line 660
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$addJointAnalytics$2;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    if-nez p3, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.r2d2.widgets.recycler.parallax.vh.AnalyticsProfileViewHolder"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p3, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsProfileViewHolder;

    const/4 v0, -0x1

    invoke-static {p1, v0, p2, p3}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->access$switchJointAnalytics(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;IZLru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsProfileViewHolder;)V

    return-void
.end method
