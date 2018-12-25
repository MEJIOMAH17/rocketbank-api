.class final Lru/rocketbank/core/manager/TemplateManager$refreshTemplates$1;
.super Ljava/lang/Object;
.source "TemplateManager.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/manager/TemplateManager;->refreshTemplates()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "TT;TR;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lru/rocketbank/core/manager/TemplateManager$refreshTemplates$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/rocketbank/core/manager/TemplateManager$refreshTemplates$1;

    invoke-direct {v0}, Lru/rocketbank/core/manager/TemplateManager$refreshTemplates$1;-><init>()V

    sput-object v0, Lru/rocketbank/core/manager/TemplateManager$refreshTemplates$1;->INSTANCE:Lru/rocketbank/core/manager/TemplateManager$refreshTemplates$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 21
    check-cast p1, Lru/rocketbank/core/network/model/TransfersModelJsonObject;

    .line 1051
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/TransfersModelJsonObject;->getTransfers()Ljava/util/ArrayList;

    move-result-object p1

    .line 1053
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1054
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1055
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1056
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_4

    .line 1059
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lru/rocketbank/core/network/model/TransfersModelUrFiz;

    const-string v5, "transfersModelUrFiz"

    .line 1060
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lru/rocketbank/core/network/model/TransfersModelUrFiz;->isCorporate()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1061
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1062
    :cond_1
    invoke-virtual {v4}, Lru/rocketbank/core/network/model/TransfersModelUrFiz;->isIndividual()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1063
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1064
    :cond_2
    invoke-virtual {v4}, Lru/rocketbank/core/network/model/TransfersModelUrFiz;->isCard2Card()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1065
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1066
    :cond_3
    invoke-virtual {v4}, Lru/rocketbank/core/network/model/TransfersModelUrFiz;->isBudget()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1067
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1072
    :cond_4
    new-instance p1, Lru/rocketbank/core/model/TransferTemplates;

    invoke-direct {p1, v2, v1, v0, v3}, Lru/rocketbank/core/model/TransferTemplates;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object p1
.end method
