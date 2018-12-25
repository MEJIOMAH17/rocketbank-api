.class final Lru/rocketbank/r2d2/root/feed/viewholder/APViewHolder$onClick$3;
.super Ljava/lang/Object;
.source "APViewHolder.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/feed/viewholder/APViewHolder;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Lru/rocketbank/core/model/facade/Account;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAPViewHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 APViewHolder.kt\nru/rocketbank/r2d2/root/feed/viewholder/APViewHolder$onClick$3\n*L\n1#1,58:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $activity:Landroid/content/Context;

.field final synthetic $subscription:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/APViewHolder$onClick$3;->$activity:Landroid/content/Context;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/feed/viewholder/APViewHolder$onClick$3;->$subscription:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p1, Lru/rocketbank/core/model/facade/Account;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/feed/viewholder/APViewHolder$onClick$3;->call(Lru/rocketbank/core/model/facade/Account;)V

    return-void
.end method

.method public final call(Lru/rocketbank/core/model/facade/Account;)V
    .locals 4

    .line 41
    invoke-virtual {p1}, Lru/rocketbank/core/model/facade/Account;->getAccountModel()Lru/rocketbank/core/model/AccountModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 42
    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/APViewHolder$onClick$3;->$activity:Landroid/content/Context;

    check-cast v1, Lru/rocketbank/r2d2/activities/MainActivity;

    sget-object v2, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->Companion:Lru/rocketbank/r2d2/root/card/CardDetailFragment$Companion;

    invoke-virtual {p1}, Lru/rocketbank/core/model/facade/Account;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lru/rocketbank/core/model/AccountModel;->getPlasticToken()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/model/AccountModel;->getExtracts()Z

    move-result v0

    invoke-virtual {v2, p1, v3, v0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment$Companion;->newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lru/rocketbank/r2d2/root/card/CardDetailFragment;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, p1}, Lru/rocketbank/r2d2/activities/MainActivity;->pushFragment(Landroid/support/v4/app/Fragment;)V

    .line 44
    :cond_1
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/APViewHolder$onClick$3;->$subscription:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lrx/Subscription;

    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    return-void
.end method
