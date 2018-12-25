.class public Lru/rocketbank/core/network/model/TransfersModelJsonObject;
.super Ljava/lang/Object;
.source "TransfersModelJsonObject.kt"


# instance fields
.field private transfers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/TransfersModelUrFiz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/TransfersModelUrFiz;",
            ">;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/network/model/TransfersModelJsonObject;->transfers:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final getTransfers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/TransfersModelUrFiz;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelJsonObject;->transfers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final setTransfers(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/TransfersModelUrFiz;",
            ">;)V"
        }
    .end annotation

    .line 9
    iput-object p1, p0, Lru/rocketbank/core/network/model/TransfersModelJsonObject;->transfers:Ljava/util/ArrayList;

    return-void
.end method
