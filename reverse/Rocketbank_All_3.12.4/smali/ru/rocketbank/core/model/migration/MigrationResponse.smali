.class public Lru/rocketbank/core/model/migration/MigrationResponse;
.super Lru/rocketbank/core/model/dto/GenericRequestResponseData;
.source "MigrationResponse.java"


# instance fields
.field private migration:Lru/rocketbank/core/model/migration/Migration;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tochka_joining"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;-><init>()V

    return-void
.end method


# virtual methods
.method public getMigration()Lru/rocketbank/core/model/migration/Migration;
    .locals 1

    .line 17
    iget-object v0, p0, Lru/rocketbank/core/model/migration/MigrationResponse;->migration:Lru/rocketbank/core/model/migration/Migration;

    return-object v0
.end method
