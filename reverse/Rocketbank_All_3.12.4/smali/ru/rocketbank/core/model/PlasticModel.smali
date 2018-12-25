.class public final Lru/rocketbank/core/model/PlasticModel;
.super Ljava/lang/Object;
.source "PlasticModel.kt"


# instance fields
.field private validation:Lru/rocketbank/core/model/ValidationModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getValidation()Lru/rocketbank/core/model/ValidationModel;
    .locals 1

    .line 6
    iget-object v0, p0, Lru/rocketbank/core/model/PlasticModel;->validation:Lru/rocketbank/core/model/ValidationModel;

    return-object v0
.end method

.method public final setValidation(Lru/rocketbank/core/model/ValidationModel;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lru/rocketbank/core/model/PlasticModel;->validation:Lru/rocketbank/core/model/ValidationModel;

    return-void
.end method
