.class public final Lcom/mikepenz/materialdrawer/R$color;
.super Ljava/lang/Object;
.source "R.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/materialdrawer/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "color"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Lru/rocketbank/core/manager/CardManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final module$5fcde415:Lcom/mikepenz/materialdrawer/R$attr;

.field private final rocketAPIProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/network/api/RocketAPI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mikepenz/materialdrawer/R$attr;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/materialdrawer/R$attr;",
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/network/api/RocketAPI;",
            ">;)V"
        }
    .end annotation

    .line 1016
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1017
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/R$color;->module$5fcde415:Lcom/mikepenz/materialdrawer/R$attr;

    .line 1018
    iput-object p2, p0, Lcom/mikepenz/materialdrawer/R$color;->rocketAPIProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 2

    .line 2023
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/R$color;->rocketAPIProvider:Ljavax/inject/Provider;

    .line 2024
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/network/api/RocketAPI;

    const-string v1, "rocketAPI"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3015
    new-instance v1, Lru/rocketbank/core/manager/CardManager;

    invoke-direct {v1, v0}, Lru/rocketbank/core/manager/CardManager;-><init>(Lru/rocketbank/core/network/api/RocketAPI;)V

    .line 2023
    check-cast v1, Lru/rocketbank/core/manager/CardManager;

    return-object v1
.end method
