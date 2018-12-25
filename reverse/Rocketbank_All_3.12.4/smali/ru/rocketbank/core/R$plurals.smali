.class public final Lru/rocketbank/core/R$plurals;
.super Ljava/lang/Object;
.source "R.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "plurals"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Lru/rocketbank/core/manager/TemplateManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final module$10f37941:Lkotlin/ExceptionsKt__ExceptionsKt;

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
.method public constructor <init>(Lkotlin/ExceptionsKt__ExceptionsKt;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/ExceptionsKt__ExceptionsKt;",
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/network/api/RocketAPI;",
            ">;)V"
        }
    .end annotation

    .line 1017
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1018
    iput-object p1, p0, Lru/rocketbank/core/R$plurals;->module$10f37941:Lkotlin/ExceptionsKt__ExceptionsKt;

    .line 1019
    iput-object p2, p0, Lru/rocketbank/core/R$plurals;->rocketAPIProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 3

    .line 2024
    iget-object v0, p0, Lru/rocketbank/core/R$plurals;->rocketAPIProvider:Ljavax/inject/Provider;

    .line 2025
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/network/api/RocketAPI;

    const-string v1, "rocketAPI"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "TemplateModule"

    const-string v2, "Creating TemplateManager"

    .line 3020
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3021
    new-instance v1, Lru/rocketbank/core/manager/TemplateManager;

    invoke-direct {v1, v0}, Lru/rocketbank/core/manager/TemplateManager;-><init>(Lru/rocketbank/core/network/api/RocketAPI;)V

    .line 2024
    check-cast v1, Lru/rocketbank/core/manager/TemplateManager;

    return-object v1
.end method
