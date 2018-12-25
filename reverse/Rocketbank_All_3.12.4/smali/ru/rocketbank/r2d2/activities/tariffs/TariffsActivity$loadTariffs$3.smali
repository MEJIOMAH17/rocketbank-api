.class public final Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity$loadTariffs$3;
.super Lrx/Subscriber;
.source "TariffsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->loadTariffs(Lru/rocketbank/core/model/UserModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/network/model/tariffs/TariffsResp;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTariffsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TariffsActivity.kt\nru/rocketbank/r2d2/activities/tariffs/TariffsActivity$loadTariffs$3\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,175:1\n1519#2,2:176\n683#2:178\n705#2,2:179\n1519#2,2:181\n*E\n*S KotlinDebug\n*F\n+ 1 TariffsActivity.kt\nru/rocketbank/r2d2/activities/tariffs/TariffsActivity$loadTariffs$3\n*L\n111#1,2:176\n132#1:178\n132#1,2:179\n133#1,2:181\n*E\n"
.end annotation


# instance fields
.field final synthetic $userModel:Lru/rocketbank/core/model/UserModel;

.field final synthetic this$0:Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;Lru/rocketbank/core/model/UserModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/model/UserModel;",
            ")V"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity$loadTariffs$3;->this$0:Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;

    iput-object p2, p0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity$loadTariffs$3;->$userModel:Lru/rocketbank/core/model/UserModel;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error tariffs"

    .line 99
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity$loadTariffs$3;->this$0:Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->hideProgressDialog()V

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 93
    check-cast p1, Lru/rocketbank/core/network/model/tariffs/TariffsResp;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity$loadTariffs$3;->onNext(Lru/rocketbank/core/network/model/tariffs/TariffsResp;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/network/model/tariffs/TariffsResp;)V
    .locals 8

    const-string v0, "resp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity$loadTariffs$3;->this$0:Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->access$getTariffs$p(Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 106
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity$loadTariffs$3;->this$0:Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->access$getCurrentTariff$p(Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;)Lru/rocketbank/core/model/TariffModel;

    move-result-object v0

    .line 108
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 109
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 110
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/tariffs/TariffsResp;->getTariffs()Ljava/util/ArrayList;

    move-result-object p1

    .line 111
    check-cast p1, Ljava/lang/Iterable;

    .line 176
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lru/rocketbank/core/network/model/tariffs/Tariff;

    .line 112
    sget-object v5, Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;->NOT_ACTIVE:Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

    invoke-virtual {v4, v5}, Lru/rocketbank/core/network/model/tariffs/Tariff;->setState(Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;)V

    .line 113
    invoke-virtual {v4}, Lru/rocketbank/core/network/model/tariffs/Tariff;->getSalary()Lru/rocketbank/core/network/model/tariffs/Salary;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 114
    invoke-virtual {v5}, Lru/rocketbank/core/network/model/tariffs/Salary;->getCanChoose()Z

    move-result v5

    if-nez v5, :cond_1

    .line 115
    sget-object v5, Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;->SALARY_SHOW_INSTRUCTION:Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

    invoke-virtual {v4, v5}, Lru/rocketbank/core/network/model/tariffs/Tariff;->setState(Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;)V

    .line 118
    :cond_1
    invoke-virtual {v4}, Lru/rocketbank/core/network/model/tariffs/Tariff;->getPermalink()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity$loadTariffs$3;->this$0:Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;

    invoke-static {v6}, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->access$getNextTariff$p(Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;)Lru/rocketbank/core/model/TariffModel;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lru/rocketbank/core/model/TariffModel;->getPermalinkString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    move-object v6, v7

    :goto_1
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 119
    iput-object v4, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 120
    iget-object v5, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Lru/rocketbank/core/network/model/tariffs/Tariff;

    sget-object v6, Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;->WILL_BE_ACTIVATED:Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

    invoke-virtual {v5, v6}, Lru/rocketbank/core/network/model/tariffs/Tariff;->setState(Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;)V

    .line 123
    :cond_3
    invoke-virtual {v4}, Lru/rocketbank/core/network/model/tariffs/Tariff;->getPermalink()Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lru/rocketbank/core/model/TariffModel;->getPermalinkString()Ljava/lang/String;

    move-result-object v7

    :cond_4
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 124
    iput-object v4, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 125
    iget-object v5, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Lru/rocketbank/core/network/model/tariffs/Tariff;

    sget-object v6, Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;->ACTIVE:Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

    invoke-virtual {v5, v6}, Lru/rocketbank/core/network/model/tariffs/Tariff;->setState(Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;)V

    .line 126
    iget-object v5, p0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity$loadTariffs$3;->this$0:Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;

    invoke-static {v5}, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->access$getTariffs$p(Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 178
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 179
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lru/rocketbank/core/network/model/tariffs/Tariff;

    .line 132
    iget-object v3, p0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity$loadTariffs$3;->this$0:Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;

    invoke-static {v3}, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->access$getTariffs$p(Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 180
    :cond_7
    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 181
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/network/model/tariffs/Tariff;

    .line 133
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity$loadTariffs$3;->this$0:Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;

    invoke-static {v1}, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->access$getTariffs$p(Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 135
    :cond_8
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity$loadTariffs$3;->this$0:Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity$loadTariffs$3;->$userModel:Lru/rocketbank/core/model/UserModel;

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->access$getCurrentTariff(Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;Lru/rocketbank/core/model/UserModel;)Lru/rocketbank/core/model/TariffModel;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 136
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity$loadTariffs$3;->this$0:Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->access$getPagerAdapter$p(Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;)Lru/rocketbank/r2d2/fragments/tariffs/TariffsPageAdapter;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity$loadTariffs$3;->this$0:Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;

    invoke-static {v1}, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->access$getTariffs$p(Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lru/rocketbank/r2d2/fragments/tariffs/TariffsPageAdapter;->swap(Ljava/util/List;Lru/rocketbank/core/model/TariffModel;)V

    .line 138
    :cond_9
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity$loadTariffs$3;->this$0:Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->hideProgressDialog()V

    return-void
.end method
