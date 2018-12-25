.class final Lru/rocketbank/r2d2/widget/AccountWidget$setup$2;
.super Ljava/lang/Object;
.source "AccountWidget.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/widget/AccountWidget;->setup(Landroid/support/v4/app/FragmentManager;Lkotlin/jvm/functions/Function1;Ljava/util/Set;)V
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
        "Lkotlin/Pair<",
        "+",
        "Ljava/lang/Integer;",
        "+",
        "Lru/rocketbank/r2d2/widget/AccountWidget$SmallAccountChooseFragment;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAccountWidget.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountWidget.kt\nru/rocketbank/r2d2/widget/AccountWidget$setup$2\n*L\n1#1,175:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/widget/AccountWidget;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/widget/AccountWidget;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/widget/AccountWidget$setup$2;->this$0:Lru/rocketbank/r2d2/widget/AccountWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/widget/AccountWidget$setup$2;->call(Lkotlin/Pair;)V

    return-void
.end method

.method public final call(Lkotlin/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Lru/rocketbank/r2d2/widget/AccountWidget$SmallAccountChooseFragment;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 115
    iget-object v0, p0, Lru/rocketbank/r2d2/widget/AccountWidget$setup$2;->this$0:Lru/rocketbank/r2d2/widget/AccountWidget;

    iget-object v1, p0, Lru/rocketbank/r2d2/widget/AccountWidget$setup$2;->this$0:Lru/rocketbank/r2d2/widget/AccountWidget;

    invoke-static {v1}, Lru/rocketbank/r2d2/widget/AccountWidget;->access$getSourceAdapter$p(Lru/rocketbank/r2d2/widget/AccountWidget;)Lru/rocketbank/r2d2/widget/AccountWidget$AccountPagerAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lru/rocketbank/r2d2/widget/AccountWidget$AccountPagerAdapter;->getToken(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/widget/AccountWidget;->access$setFromAccountToken$p(Lru/rocketbank/r2d2/widget/AccountWidget;Ljava/lang/String;)V

    .line 116
    iget-object p1, p0, Lru/rocketbank/r2d2/widget/AccountWidget$setup$2;->this$0:Lru/rocketbank/r2d2/widget/AccountWidget;

    iget-object v0, p0, Lru/rocketbank/r2d2/widget/AccountWidget$setup$2;->this$0:Lru/rocketbank/r2d2/widget/AccountWidget;

    invoke-static {v0}, Lru/rocketbank/r2d2/widget/AccountWidget;->access$getFromAccountToken$p(Lru/rocketbank/r2d2/widget/AccountWidget;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lru/rocketbank/r2d2/widget/AccountWidget$setup$2;->this$0:Lru/rocketbank/r2d2/widget/AccountWidget;

    invoke-static {v1}, Lru/rocketbank/r2d2/widget/AccountWidget;->access$getAuthorization$p(Lru/rocketbank/r2d2/widget/AccountWidget;)Lru/rocketbank/core/user/Authorization;

    move-result-object v1

    invoke-virtual {v1, v0}, Lru/rocketbank/core/user/Authorization;->getAccountImmediate(Ljava/lang/String;)Lru/rocketbank/core/model/facade/Account;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lru/rocketbank/r2d2/widget/AccountWidget;->access$setAccountFrom$p(Lru/rocketbank/r2d2/widget/AccountWidget;Lru/rocketbank/core/model/facade/Account;)V

    .line 117
    iget-object p1, p0, Lru/rocketbank/r2d2/widget/AccountWidget$setup$2;->this$0:Lru/rocketbank/r2d2/widget/AccountWidget;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/widget/AccountWidget;->getOnAccountSelected()Lrx/subjects/BehaviorSubject;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/r2d2/widget/AccountWidget$setup$2;->this$0:Lru/rocketbank/r2d2/widget/AccountWidget;

    invoke-static {v0}, Lru/rocketbank/r2d2/widget/AccountWidget;->access$getAccountFrom$p(Lru/rocketbank/r2d2/widget/AccountWidget;)Lru/rocketbank/core/model/facade/Account;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method
